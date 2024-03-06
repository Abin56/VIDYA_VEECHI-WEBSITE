import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/student_controller/student_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/create_student/class_wise_creation.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/create_student/manual_creation.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';

class CreateStudent extends StatelessWidget {
  final StudentController studentController = Get.put(StudentController());
  CreateStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: screenContainerbackgroundColor,
        height: ResponsiveWebSite.isMobile(context) ? 1200 : 820,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: TextFontWidget(
                text: 'Create A New Student',
                fontsize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ResponsiveWebSite.isMobile(context)
                  ? const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 08,
                                  right: 05,
                                ),
                                child:
                                    RouteNonSelectedTextContainer(title: 'Home'),
                              ),
                              RouteSelectedTextContainer(
                                  width: 140, title: 'Create Student'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 310,
                                child: TabBar(
                                    // indicatorSize: TabBarIndicatorSize.tab,
                                    indicatorColor: Colors.red,
                                    tabs: [
                                      Tab(
                                          height: 30,
                                          child: RouteSelectedTextContainer(
                                              width: 140, title: 'Manual')),
                                      Tab(
                                          height: 30,
                                          child: RouteSelectedTextContainer(
                                              width: 140, title: 'Class Wise')),
                                    ]),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 08,
                            right: 05,
                          ),
                          child: RouteNonSelectedTextContainer(title: 'Home'),
                        ),
                        const RouteSelectedTextContainer(
                            width: 140, title: 'Create Student'),
                        const Spacer(),
                        SizedBox(
                          width:
                              ResponsiveWebSite.isTablet(context) ? 360 : 400,
                          child: const TabBar(
                              // indicatorSize: TabBarIndicatorSize.tab,
                              indicatorColor: Colors.red,
                              tabs: [
                                Tab(
                                    height: 30,
                                    child: RouteSelectedTextContainer(
                                        width: 140, title: ' Manual Creation')),
                                Tab(
                                    height: 30,
                                    child: RouteSelectedTextContainer(
                                        width: 140,
                                        title: 'Class Wise Creation')),
                              ]),
                        )
                      ],
                    ),
            ),
            Expanded(
              child: TabBarView(children: [
                ManualStudentCreation(),
                const ClassWiseStudentCreation()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
