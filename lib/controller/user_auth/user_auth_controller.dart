import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/view/home/main_screen.dart';
import 'package:vidyaveechi_website/view/users/admin/admin_home.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class UserAuthController extends GetxController {
  Future<void> checkSavedLoginAuth() async {
    if (kDebugMode) {
      print(".........................................................");
    }
    FirebaseAuth auth = FirebaseAuth.instance;

    UserCredentialsController.userRole =
        SharedPreferencesHelper.getString(SharedPreferencesHelper.userRoleKey);

    if (auth.currentUser == null) {
      if (kDebugMode) {
        print("Google Auth null");
      }
      Get.offAllNamed('/');
    } else {
      if (UserCredentialsController.userRole == 'admin') {
        Get.offAllNamed('admin_screen');
      } else {
        if (kDebugMode) {
          print("shared pref Auth null");
        }
        Get.offAllNamed('/');
      }
    }
  }

  @override
  void onInit() {
    checkSavedLoginAuth();
    super.onInit();
  }
}
