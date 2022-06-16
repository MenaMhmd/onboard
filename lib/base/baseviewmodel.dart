import 'package:flutter/material.dart';

abstract class BaseViewModel extends BaseViewModelInput with BaseViewModelOutput {}
abstract class BaseViewModelInput{
  void start();
  void dispose();
}
abstract class BaseViewModelOutput{}