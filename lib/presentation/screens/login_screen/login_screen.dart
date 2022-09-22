import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/application/authentication/auth_event.dart';
import 'package:the_movie_app/application/authentication/auth_state.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/assets.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/auth_provider.dart';
import 'package:the_movie_app/presentation/reuse_component/asset_image.dart';
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
              padding:
                  EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: LoginScreenDimens.logoTopSpacing,
                    ),
                    AssetImageWidget(
                        width: LoginScreenDimens.logoWidth,
                        height: LoginScreenDimens.logoHeight,
                        url: AssetsConstants.appLogo),
                    SizedBox(
                      height: LoginScreenDimens.logoAndTextfieldSpacing,
                    ),
                    LabelAndTextField(
                      label: LoginScreenText.usernameLabel,
                      controller: usernameController,
                      hintText: LoginScreenText.usenameHintText,
                      isPasswordType: false,
                    ),
                    SizedBox(
                      height: Dimens.mdPaddingVertical,
                    ),
                    LabelAndTextField(
                        label: LoginScreenText.passwordLabel,
                        controller: passwordController,
                        hintText: LoginScreenText.passwordHintText,
                        isPasswordType: true),
                    SizedBox(
                      height: LoginScreenDimens.textFieldAndButtonSpacing,
                    ),
                    SignInButton(
                        labelButton: LoginScreenText.loginButtonLabel,
                        onPressed: () async {
                          ref.read(authProvider.notifier).mapEventsToState(
                              RequestLogin(
                                  username: usernameController.text.trim(),
                                  password: passwordController.text.trim()));
                        }),
                    SizedBox(
                      height: LoginScreenDimens.buttonAndDividerSpacing,
                    ),
                    const LabelWithDivider(
                        label: LoginScreenText.otherLoginMethodLabel),
                    SizedBox(
                      height: LoginScreenDimens.dividerAndOtherButtonSpacing,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomSignInMethodIconButton(
                            assetPath: AssetsConstants.fbLogo),
                        SizedBox(
                          width: Dimens.smPaddingHorizontal,
                        ),
                        const CustomSignInMethodIconButton(
                            assetPath: AssetsConstants.googleLogo),
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
