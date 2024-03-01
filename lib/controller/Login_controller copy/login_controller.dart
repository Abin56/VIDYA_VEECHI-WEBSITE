import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late AnimationController animationctr;
  late Animation colorAnimation;

  RxBool loginontapped = false.obs;
  RxBool lodingContainer = false.obs;
}
