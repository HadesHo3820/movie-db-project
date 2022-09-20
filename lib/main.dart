import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/presentation/screens/cast_detail_screen/cast_detail_screen.dart';
import 'package:the_movie_app/presentation/screens/movie_detail_screen/detail_screen.dart';
import 'package:the_movie_app/presentation/screens/home_screen/home_screen.dart';
import 'package:the_movie_app/presentation/screens/login_screen/login_screen.dart';
import 'package:the_movie_app/presentation/screens/navigation_screen/navigation_screen.dart';
import 'package:the_movie_app/presentation/screens/search_screen/search_screen.dart';
import 'package:the_movie_app/presentation/screens/splash_screen/splash_screen.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.darkBlue,
    statusBarColor: AppColors.darkBlue,
  ));
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        RouteNames.onStart: (context) => const SplashScreen(),
        RouteNames.loginScreen: (context) => const LoginScreen(),
        RouteNames.homeScreen: (context) => const HomeScreen(),
        RouteNames.navigationScreen: (context) => const NavigationScreen(),
        RouteNames.detailScreen: (context) => DetailScreen(),
        RouteNames.castDetailScreen: (context) => const CastDetailScreen(),
        RouteNames.searchScreen: (context) => const SearchScreen()
      },
    );
  }
}
