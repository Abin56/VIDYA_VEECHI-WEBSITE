import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralInsructionController extends GetxController {
   TextEditingController instructionController =TextEditingController();
    RxList<String> instructionList = <String>[].obs;
    RxBool isLoading = false.obs;


    
}