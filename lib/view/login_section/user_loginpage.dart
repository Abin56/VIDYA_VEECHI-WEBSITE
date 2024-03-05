import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_teacher_login_screen/class_teacher_login_controller.dart';
import 'package:vidyaveechi_website/controller/get_firebase-data/get_firebase_data.dart';
import 'package:vidyaveechi_website/controller/user_login_Controller/user_login_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/widgets/glassmorphism.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

class UserLoginPageScreen extends StatefulWidget {
  const UserLoginPageScreen({super.key});

  @override
  State<UserLoginPageScreen> createState() => _UserLoginPageScreenState();
}

class _UserLoginPageScreenState extends State<UserLoginPageScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FabCircularMenuPlusState> fabKey = GlobalKey();
//

  // final ClassTeacherLoginController classTeacherLoginController =
  //     Get.put(ClassTeacherLoginController());
  UserLoginController userLoginController = Get.put(UserLoginController());
  final Color istColor = Colors.black.withOpacity(0.8);
  late AnimationController animationctr;
  late Animation colorAnimation;
  bool istapped = false;

  @override
  void initState() {
    animationctr =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addListener(() {
            setState(() {});
          });
    colorAnimation = Tween(begin: 0.4, end: 1).animate(
        CurvedAnimation(parent: animationctr, curve: Curves.fastOutSlowIn));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: istapped == false
            ? null
            : Builder(
                builder: (context) => FabCircularMenuPlus(
                  fabChild: Container(
                    decoration: const BoxDecoration(
                        color: themeColorBlue, shape: BoxShape.circle),
                    child: const Center(
                        child: Image(
                            image: AssetImage(
                                'assets/flact_png/icons8-fingerprint-100.png'))),
                    // decoration: ,
                  ),
                  key: fabKey,
                  // Cannot be `Alignment.center`
                  alignment: Alignment.bottomRight,
                  ringColor: cWhite.withOpacity(0.4),
                  ringDiameter: 1000.0,
                  ringWidth: 300.0,
                  fabSize: 64.0,
                  fabElevation: 8.0,
                  fabIconBorder: const CircleBorder(),

                  fabColor: Colors.white,
                  fabOpenIcon: const Icon(Icons.menu, color: themeColorBlue),
                  fabCloseIcon: const Icon(Icons.close, color: themeColorBlue),
                  fabMargin: const EdgeInsets.all(16.0),
                  animationDuration: const Duration(milliseconds: 800),
                  animationCurve: Curves.easeInOutCirc,
                  onDisplayChange: (isOpen) {
                    // _showSnackBar(
                    //     context, "The menu is ${isOpen ? "open" : "closed"}");
                  },
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: cWhite,
                                shape: BoxShape.circle,
                                border: Border.all(color: themeColorBlue)),
                            child: Image.asset(
                              "assets/flact_png/icons8-student-100.png",
                              scale: 1.5,
                            ),
                          ),
                          GooglePoppinsWidgets(
                            text: "STUDENT",
                            fontsize: 12,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: cWhite,
                                shape: BoxShape.circle,
                                border: Border.all(color: themeColorBlue)),
                            child: Image.asset(
                              "assets/flact_png/icons8-parent-100.png",
                              scale: 1.5,
                            ),
                          ),
                          GooglePoppinsWidgets(
                            text: "PARENT",
                            fontsize: 12,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // classTeacherLoginController.classTeacherLogin(
                        //     userLoginController.userEmailIDController, userLoginController.userPasswordController, context);
                      },
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: cWhite,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: themeColorBlue)),
                              child: Image.asset(
                                "assets/flact_png/icons8-teacher-100.png",
                                scale: 1.5,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "TEACHER",
                              fontsize: 12,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        userLoginController.adminLoginController(context);
                      },
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: cWhite,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: themeColorBlue)),
                              child: Image.asset(
                                "assets/flact_png/icons8-admin-100.png",
                                scale: 1.5,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "ADMIN",
                              fontsize: 12,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        body: Obx(() {
          if (userLoginController.loginontapped.value == true) {
            return userLoginController.lodingContainer.value == true
                ? Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            colorFilter: istapped == true
                                ? ColorFilter.mode(
                                    const Color.fromARGB(255, 77, 76, 76)
                                        .withOpacity(0.9),
                                    BlendMode.modulate)
                                : null,
                            fit: BoxFit.fitWidth,
                            image: const AssetImage(
                              'assets/images/loginscreen.jpg',
                            ))),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, bottom: 0),
                        child: Row(
                          children: [
                            GlassMorphism(
                              start: 0.6,
                              end: 0.1,
                              child: Container(
                                height: 500,
                                width: 500,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 45),
                                      child: Text(
                                        "Welcome Back",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: istColor,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Text(
                                      "Please enter your details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: istColor.withOpacity(0.3),
                                          fontSize: 12),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: SizedBox(
                                        height: 70,
                                        child: TextFormFiledContainerWidget(
                                            controller: userLoginController
                                                .userEmailIDController,
                                            hintText: 'Enter your email',
                                            title: "Email",
                                            width: 300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: SizedBox(
                                        height: 64,
                                        child: TextFormFiledContainerWidget(
                                            controller: userLoginController
                                                .userPasswordController,
                                            hintText: 'Enter your password',
                                            title: "Password",
                                            width: 300),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 180, bottom: 10),
                                      child: Text(
                                        "Forgot your password ?",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: istColor.withOpacity(0.3),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: GestureDetector(
                                        onTap: () async {
                                          userLoginController
                                              .loginontapped.value = true;
                                          istapped = true;
                                          animationctr
                                              .forward()
                                              .then((value) async {
                                            if (fabKey.currentState?.isOpen ??
                                                false) {
                                              fabKey.currentState?.close();
                                            } else {
                                              fabKey.currentState?.open();
                                              Future.delayed(const Duration(
                                                      seconds: 3))
                                                  .then((value) async {
                                                userLoginController
                                                    .lodingContainer
                                                    .value = true;
                                              });
                                            }
                                          });
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 250,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: const Center(
                                            child: Text(
                                              "Login",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Container(
                    color: Colors.black.withOpacity(colorAnimation.value),
                  );
          } else {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: istapped == true
                          ? ColorFilter.mode(
                              Colors.black.withOpacity(colorAnimation.value),
                              BlendMode.modulate)
                          : null,
                      fit: BoxFit.fitWidth,
                      image: const AssetImage(
                        'assets/images/loginscreen.jpg',
                      ))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, bottom: 0),
                  child: Row(
                    children: [
                      GlassMorphism(
                        start: 0.6,
                        end: 0.1,
                        child: Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: istColor,
                                      fontSize: 25),
                                ),
                              ),
                              Text(
                                "Please enter your details",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: istColor.withOpacity(0.3),
                                    fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: SizedBox(
                                  height: 70,
                                  child: TextFormFiledContainerWidget(
                                      controller: userLoginController
                                          .userEmailIDController,
                                      hintText: 'Enter your email',
                                      title: "Email",
                                      width: 300),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  height: 64,
                                  child: TextFormFiledContainerWidget(
                                      controller: userLoginController
                                          .userPasswordController,
                                      hintText: 'Enter your password',
                                      title: "Password",
                                      width: 300),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 180, bottom: 10),
                                child: Text(
                                  "Forgot your password ?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11,
                                    color: istColor.withOpacity(0.3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: GestureDetector(
                                  onTap: () async {
                                    userLoginController.loginontapped.value =
                                        true;
                                    istapped = true;
                                    animationctr.forward().then((value) async {
                                      if (fabKey.currentState?.isOpen ??
                                          false) {
                                        fabKey.currentState?.close();
                                      } else {
                                        fabKey.currentState?.open();
                                        Future.delayed(
                                                const Duration(seconds: 2))
                                            .then((value) async {
                                          userLoginController
                                              .lodingContainer.value = true;
                                        });
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        }));
  }
}
