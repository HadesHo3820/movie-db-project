import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/application/authentication/auth_event.dart';
import 'package:the_movie_app/application/authentication/auth_state.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/auth_provider.dart';
import 'package:the_movie_app/presentation/screens/splash_screen/widgets/splash_screen_body.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(authProvider.notifier).mapEventsToState(const GetRequestToken());
    ref.listen<AuthState>(authProvider, (previous, next) {
      next.when(
          intial: () {},
          loading: () {},
          failed: (message) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          },
          getRequestTokenSuccessful: () {
            Future.delayed(
              const Duration(seconds: 2),
              () {
                Navigator.pushNamedAndRemoveUntil(
                    context, RouteNames.loginScreen, (route) => false);
              },
            );
          },
          successful: (accountModel) {});
    });
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/splash_screen_bg.png"))),
        child: const SplashScreenBody(),
      ),
    );
  }
}
