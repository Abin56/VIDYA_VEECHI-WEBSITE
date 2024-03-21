import 'package:adaptive_ui_layout/flutter_responsive_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/firebase_options.dart';
import 'package:vidyaveechi_website/view/home/home.dart';
import 'package:vidyaveechi_website/view/home/screens/footer/privacypolicy.dart';
import 'package:vidyaveechi_website/view/splash_screen/splash_screen.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_notification.dart';
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
            debugShowCheckedModeBanner: false,
            // initialRoute: '/spashscreen',
            routes: {
              '/spashscreen': (context) => SplashScreen(),
              '/PrivacyPolicy': (context) => const PrivacyPolicy(),
            },
            //         getPages: [
            //           GetPage(name: '/spashscreen', page: () => SplashScreen()),
            //           // GetPage(name: '/Homescreen', page: () => const HomeScreen()),
            //           GetPage(

            // // GetPage(name: '/spashscreen', page: () => SplashScreen()),
            //               participatesInRootNavigator: false,
            //               name: '/PrivacyPolicy',
            //               page: () => const PrivacyPolicy()),
            //         ],
            home: SplashScreen(),
            // home: Scaffold(
            //   body: AllExamNotificationListView(),
            // ),
            theme: ThemeData(
                inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                )),
                primarySwatch: Colors.blue,
                dialogTheme: const DialogTheme(shape: RoundedRectangleBorder()),
                datePickerTheme:
                    const DatePickerThemeData(shape: RoundedRectangleBorder())),
            scrollBehavior: MyCustomScrollBehavior(),
          );
        });
  }
}
