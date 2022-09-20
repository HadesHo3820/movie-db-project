import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/application/authentication/auth_event.dart';
import 'package:the_movie_app/application/authentication/auth_state.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/auth_provider.dart';
import 'package:the_movie_app/presentation/reuse_component/loading_widget.dart';
import 'package:the_movie_app/presentation/screens/login_screen/widgets/label_and_textfield_widget.dart';
import 'package:the_movie_app/presentation/screens/login_screen/widgets/label_divider_widget.dart';
import 'package:the_movie_app/presentation/screens/login_screen/widgets/custom_signin_method_button.dart';
import 'package:the_movie_app/presentation/screens/login_screen/widgets/sign_in_button.dart';

class LoginScreen extends HookConsumerWidget {
  // final TextEditingController usernameController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();

  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useValueNotifier(false);
    var usernameController = useTextEditingController();
    var passwordController = useTextEditingController();
    ref.listen<AuthState>(authProvider, (previous, next) {
      next.when(
          intial: () {},
          loading: () {
            isLoading.value = true;
          },
          failed: (message) {
            isLoading.value = false;
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          },
          getRequestTokenSuccessful: () {},
          successful: (accountModel) {
            isLoading.value = false;
            Navigator.pushNamedAndRemoveUntil(
                context, RouteNames.navigationScreen, (route) => false);
          });
    });
    return Builder(builder: (context) {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: AppColors.darkBlue,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 208,
                        height: 150,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    LabelAndTextField(
                      label: LoginScreenConstant.usernameLabel,
                      controller: usernameController,
                      hintText: LoginScreenConstant.usenameHintText,
                      isPasswordType: false,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    LabelAndTextField(
                        label: LoginScreenConstant.passwordLabel,
                        controller: passwordController,
                        hintText: LoginScreenConstant.passwordHintText,
                        isPasswordType: true),
                    const SizedBox(
                      height: 30,
                    ),
                    SignInButton(
                        labelButton: LoginScreenConstant.loginButtonLabel,
                        onPressed: () async {
                          ref.read(authProvider.notifier).mapEventsToState(
                              RequestLogin(
                                  username: usernameController.text.trim(),
                                  password: passwordController.text.trim()));
                        }),
                    const SizedBox(
                      height: 80,
                    ),
                    const LabelWithDivider(
                        label: LoginScreenConstant.otherLoginMethodLabel),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CustomSignInMethodIconButton(
                            assetPath: "assets/images/fb_logo.png"),
                        SizedBox(
                          width: 10,
                        ),
                        CustomSignInMethodIconButton(
                            assetPath: "assets/images/google_logo.png"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            HookBuilder(builder: (_) {
              final isLoadingListen = useValueListenable(isLoading);
              return isLoadingListen
                  ? const LoadingWidget()
                  : const SizedBox.shrink();
            })
          ],
        ),
      );
    });
  }
}
