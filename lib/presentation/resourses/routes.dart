import 'package:flutter/material.dart';
import 'package:ecommerceudemy/presentation/forgetpassword/forgetpassword.dart';
import 'package:ecommerceudemy/presentation/login/login_view.dart';
import 'package:ecommerceudemy/presentation/onboard/onboard_view.dart';
import 'package:ecommerceudemy/presentation/register/register_view.dart';
import 'package:ecommerceudemy/presentation/splash/splash_view.dart';



class Routes{
  static const String splash="/";
  static const String loginroute="/login";
  static const String registerroute="/register";
  static const String forgetpasswordrout="/forget";
  static const String mainroute="/mainroute";
  static const String storeddetailsroute="/storeddetails";
  static const String onboardroute="/onboard";
}

class RouteGenerator {

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => Splash());
      case Routes.loginroute:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.registerroute:
        return MaterialPageRoute(builder: (_) => Register());
      case Routes.forgetpasswordrout:
        return MaterialPageRoute(builder: (_) => Forget());
      case Routes.storeddetailsroute:
        return MaterialPageRoute(builder: (_) => Register());
      case Routes.onboardroute:
        return MaterialPageRoute(builder: (_) => Onboard());
      default:
        return unDefinedRoute();
    }
  }


 static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title: Text("No Route Found"),),
      body: Center(child: Text("No Route Found"),),

    ));
  }
}