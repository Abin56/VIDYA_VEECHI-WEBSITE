import 'dart:developer';
import 'package:adaptive_ui_layout/flutter_responsive_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/user_auth/user_auth_controller.dart';
import 'package:vidyaveechi_website/firebase_options.dart';
import 'package:vidyaveechi_website/view/home/home.dart';
import 'package:vidyaveechi_website/view/home/main_screen.dart';
import 'package:vidyaveechi_website/view/users/admin/admin_home.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
// import 'package:vidyaveechi_website/view/home/admin/admin_home.dart';
import 'package:vidyaveechi_website/view/widgets/scroll_on_web_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPreferencesHelper.initPrefs();

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
            initialRoute: 'admin_screen',
            routes: {
              '/': (_) => MainScreen(),
              'admin_screen': (_) => const AdminHomeScreen(),
            },
            theme: ThemeData(
                primarySwatch: Colors.blue,
                datePickerTheme:
                    const DatePickerThemeData(shape: RoundedRectangleBorder())),
            scrollBehavior: MyCustomScrollBehavior(),
          );
        });
  }
}
