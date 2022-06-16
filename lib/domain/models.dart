import 'package:flutter/material.dart';
class Sliderobject {
  String title;
  String subtitle;
  String img;

  Sliderobject(
      {required this.title, required this.subtitle, required this.img});
}

class SliderViewobject{
  Sliderobject sliderobject;
  int numberofslides;
  int current_index;
  SliderViewobject({required this.sliderobject,required this.current_index,required this.numberofslides});

}