import 'dart:developer';

import 'package:adaptive_ui_layout/flutter_responsive_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/firebase_options.dart';
import 'package:vidyaveechi_website/view/splash_screen/splash_screen.dart';
// import 'package:vidyaveechi_website/view/home/admin/admin_home.dart';
import 'package:vidyaveechi_website/view/widgets/scroll_on_web_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    log(e.toString());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        designSize: const Size(1536, 786.4000244140625),
        builder: (context) {
          return GetMaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                datePickerTheme:
                    const DatePickerThemeData(shape: RoundedRectangleBorder(  ))),
            scrollBehavior: MyCustomScrollBehavior(),
            home: const SplashScreen()
            //const AdminHomeScreen(),
            // home: Scaffold(
            //   body: SafeArea(
            //       child: Center(
            //     child: StudentDetailsContainer(),
            //   )),
            // ),
          );
        });
  }
}
