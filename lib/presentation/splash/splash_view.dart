import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ecommerceudemy/presentation/resourses/ColorManager.dart';
import 'package:ecommerceudemy/presentation/resourses/ImageAsset.dart';
import 'package:ecommerceudemy/presentation/resourses/routes.dart';


class Splash extends StatefulWidget{

  static String id="splash";
  @override
  State<StatefulWidget> createState() =>Myapp();
}

class Myapp extends State<Splash>{
  Timer?timer;

  stardelayed(){
    timer=Timer(Duration(milliseconds: 2),gonext());
  }
  gonext() {
  //  Navigator.pushReplacementNamed(context, Routes.onboardroute);
  }

  @override
  void initState() {
    super.initState();
    stardelayed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image(image: AssetImage(ImageAsset.splashlogo),)),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();
  }
}

