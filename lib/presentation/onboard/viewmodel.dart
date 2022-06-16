import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../base/baseviewmodel.dart';
import '../../domain/models.dart';

class onboardviewmodel extends BaseViewModel with onboardviewmodelinput,onboardviewmodeloutput{
  //communication way to show data it's like apipeline
  StreamController _streamController=StreamController<SliderViewobject>();
  StreamController ispasswordvalidate=StreamController<Bool>();

  @override
  void dispose() {
    _streamController.close();
    ispasswordvalidate.close();
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void gonext() {
    // TODO: implement gonext
  }

  @override
  void goprevious() {
    // TODO: implement goprevious
  }

  @override
  // TODO: implement inputsliderviewobject
  Sink get inputsliderviewobject => throw UnimplementedError();

  @override
  // TODO: implement outputsliderviewobject
  Stream get outputsliderviewobject => throw UnimplementedError();

  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }

  @override
  // TODO: implement outputispasswordvalid
  Stream<Bool> get outputispasswordvalid => outputispasswordvalid.sin;


}
abstract class onboardviewmodelinput {
  void gonext();
  void goprevious();
  void onPageChanged(int index);
Sink get inputsliderviewobject;
Stream<Bool>get outputispasswordvalid;
}



abstract class onboardviewmodeloutput{
  //it 's like a pelvis
  Stream get outputsliderviewobject;
}

