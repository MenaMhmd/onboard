import 'dart:async';

import 'package:ecommerceudemy/presentation/login/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerceudemy/presentation/resourses/Appstring.dart';
import 'package:ecommerceudemy/presentation/resourses/ColorManager.dart';
import 'package:ecommerceudemy/presentation/resourses/Constant.dart';
import 'package:ecommerceudemy/presentation/resourses/ImageAsset.dart';
import 'package:ecommerceudemy/presentation/resourses/routes.dart';
import 'package:ecommerceudemy/presentation/resourses/value_manager.dart';

import '../../domain/models.dart';
import '../resourses/FontManager.dart';

class Onboard extends StatefulWidget {

  static String id="onboard";
  @override
  State<StatefulWidget> createState() => Myapp();
}

class Myapp extends State<Onboard> {
  StreamController _streamController=StreamController();
  int current_index = 0;

  PageController pageController = PageController();
  late final List<Sliderobject> _list = _getlist();

  List<Sliderobject> _getlist() => [
        Sliderobject(
            title: Appstring.onBoardtitle1,
            subtitle: Appstring.onboardsubtitle1,
            img: ImageAsset.boardlogo1),
        Sliderobject(
            title: Appstring.onBoardtitle2,
            subtitle: Appstring.onboardsubtitle2,
            img: ImageAsset.boardlogoo),
        Sliderobject(
            title: Appstring.onBoardtitle3,
            subtitle: Appstring.onboardsubtitle3,
            img: ImageAsset.boardlogo3),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark),
      ),
      body: Stack(
        children:[
        PageView.builder(
          itemBuilder: (context, index) {
         return onboard(sliderobject: _list[index]);
          },
          itemCount: _list.length,
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              current_index = value;
            });
          },
        ),],
      ),
      bottomSheet: Container(
        color: ColorManager.white,
        height: Fontsize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Login.id);
                },
                child: const Text("Skip",
                  textAlign: TextAlign.end,
                ),
              ),
            )

            // widgets indicator and arrows
          ],
        ),
      ),
    );
  }

  Widget getbottomsheet() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(Apppadding.p14),
          child: GestureDetector(
            child: SizedBox(
              width: Apppsize.s18,
              height: Apppsize.s18,
              child: SvgPicture.asset(ImageAsset.leftarrow),
            ),
            onTap: (){
              pageController.animateToPage(getprevious(), duration: Duration(milliseconds: Appconstant.splashdelay), curve: Curves.bounceInOut);
            },
          ),
        ),
        Row(
          children: [
            for (int i = 0; i < _list.length; i++)
              Padding(
                padding: EdgeInsets.all(Apppadding.p8),
                child: getpropercircle(i),
              ),
          ],
        ),


        Padding(
          padding: EdgeInsets.all(Apppadding.p14),
          child: GestureDetector(
            child: SizedBox(
              width: Apppsize.s18,
              height: Apppsize.s18,
              child: SvgPicture.asset(ImageAsset.rightarrow),
            ),
          ),
        ),
      ],
    );
  }

  Widget? getpropercircle(int index) {
    if (index == current_index) {
      return SvgPicture.asset("assests/img/logo1.svg");
    } else {
      SvgPicture.asset("assests/img/logo1.svg");
    }
    return null;
  }

  int getprevious() {
    int index=--current_index;
     if(index==-1)
       {
        index=_list.length-1;
       }
      return index;
  }

  int getnext() {
    int index=++current_index;
    if(index==_list.length)
    {
      index=0;
    }
    return index;
  }
}

class onboard extends StatelessWidget {
  Sliderobject? sliderobject;

  onboard({required this.sliderobject});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Apppadding.p8),
          child: Column(
            children: [
              Text(
                sliderobject!.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: Apppsize.s18),
              Text(
                sliderobject!.subtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: Apppsize.s18),
              SvgPicture.asset(sliderobject!.img),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sliderobject!.subtitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}


