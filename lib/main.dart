import 'package:ecommerceudemy/presentation/login/login_view.dart';
import 'package:ecommerceudemy/presentation/onboard/onboard_view.dart';
import 'package:ecommerceudemy/presentation/register/register_view.dart';
import 'package:ecommerceudemy/presentation/resourses/routes.dart';
import 'package:ecommerceudemy/presentation/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: Onboard.id,
      routes:{
        Login.id:(context)=>Login(),
        Register.id:(context)=>Register(),
        Onboard.id:(context)=>Onboard(),
        Splash.id:(context)=>Splash(),
      }
      //,home: Onboard(),
    );
  }
}


