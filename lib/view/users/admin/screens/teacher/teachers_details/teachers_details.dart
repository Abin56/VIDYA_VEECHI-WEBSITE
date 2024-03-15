import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/teacher_controller/teacher_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/attendence_history_status/attendence_history_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/salary_history_status/salary_history_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/teachers_details/widgets/detail_tileContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';

class TeachersDetailsContainer extends StatelessWidget {
   final TeacherController teacherController = Get.put(TeacherController());
   TeachersDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
  //  final data = teacherController.teacherModelData.value;
    // List<Widget> widgetList = [];
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          color: screenContainerbackgroundColor,
          height: 1000,
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: TextFontWidget(
                  text: 'Teacher Details',
                  fontsize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Container(
                  color: cWhite,
                  height: 260,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        color: Colors.white10,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 08,
                                        right: 05,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          teacherController.ontapTeacher.value =
                                              false;
                                        },
                                        child:
                                            const RouteNonSelectedTextContainer(
                                                title: 'Home'),
                                      ),
                                    ),
                                    const RouteSelectedTextContainer(
                                        width: 140, title: 'Teacher Deatils'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: adminePrimayColor,
                        height: 02,
                      ),
                      Expanded(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 05, left: 10),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  radius: 78,
                                  backgroundImage:
                                      AssetImage('assets/png/teacher (1).png'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: double.infinity,
                                      height: 110,
                                      color: adminePrimayColor.withOpacity(0.1),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, top: 10),
                                            child: TextFontWidget(
                                              text: 'EDWIED LIVINGSTEN ANTO ANTONY',
                                              fontsize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 10),
                                            child: SizedBox(
                                              width: 600,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  TeacherDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Gender',
                                                    subtitle: 'Male',
                                                  ),
                                                  TeacherDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Employee Id',
                                                    subtitle: '112007',
                                                  ),
                                                  TeacherDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Phone No.',
                                                    subtitle: '6344222023',
                                                  ),
                                                  TeacherDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Email Id',
                                                    subtitle: 'edwedlivinstenantoantony@gmail.com',
                                                  ),
                                                  // TeacherDetailTileContainer(
                                                  //   flex: 1,
                                                  //   title: 'Join Date',
                                                  //   subtitle: '11/09/2007',
                                                  // ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    // flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.call),
                                              TextFontWidget(
                                                text: " +91 9126355467",
                                                fontsize: 12,
                                                color: adminePrimayColor,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on),
                                              TextFontWidget(
                                                text:
                                                    " Lepton Communications, Trivandrum",
                                                fontsize: 12,
                                                color: adminePrimayColor,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      color: cWhite,
                      height: 40,
                      child: const TabBar(
                        indicatorColor: cWhite,
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        labelColor: adminePrimayColor,
                        labelStyle:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                        tabs: [
                          Tab(
                            text: 'SALARY',
                          ),
                          Tab(
                            text: 'ATTENDANCE',
                          ),
                          // Tab(
                          //   text: 'EXAM ',
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  color: adminePrimayColor,
                  height: 02,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Container(
                  height: 600,
                  color: cWhite,
                  // color: Colors.amber,
        
                  // height: 300,
                  child: const TabBarView(children: [
                    PerTeacherSalaryHistory(), //........................ Teacher FEES
                    PerTeacherAttendenceHistory(), //.......................... Teacher Attendence
                   // PerExamHistory() //............................ Teacher Exam History
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
