import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progress_state_button/progress_button.dart';

class MeetingController extends GetxController{
  TextEditingController topicController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController memberController = TextEditingController();
  TextEditingController specialguestController = TextEditingController();
  TextEditingController venueController = TextEditingController();
    Rx<ButtonState> buttonstate = ButtonState.idle.obs;
      RxBool ontapMeeting = false.obs;
       final formKey = GlobalKey<FormState>();
}