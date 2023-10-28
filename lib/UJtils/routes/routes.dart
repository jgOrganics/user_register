import 'package:flutter/material.dart';
import 'package:user_register/UJtils/routes/routes_name.dart';
import 'package:user_register/view/login.dart';
import 'package:user_register/view/sign_up.dart';
import 'package:user_register/view/splash.dart';
import 'package:user_register/view/verify.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUp());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Login());
      case RoutesName.verify:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  Verify(settings.arguments.toString()));
      case RoutesName.home:

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: FittedBox(
              child: Center(
                child: Text("No Rote Defined"),
              ),
            ),
          );
        });
    }
  }
}
