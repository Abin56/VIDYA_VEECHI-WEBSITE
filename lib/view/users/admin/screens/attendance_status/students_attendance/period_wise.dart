import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vidyaveechi_website/controller/attendence_controller/attendence_controller.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/drop_down/attendence/day_dropdown.dart';
import 'package:vidyaveechi_website/view/drop_down/attendence/month_dropdown.dart';
import 'package:vidyaveechi_website/view/drop_down/select_class.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendance_status/students_attendance/student_attendance_tble.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/loading_widget/loading_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import '../../../../../widgets/blue_Container_widget/blue_Container_widget.dart';

class PeriodWiseStudentsAttendance extends StatelessWidget {
  final AttendenceController attendenceController =
      Get.put(AttendenceController());
  PeriodWiseStudentsAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();
    DateTime parseDate = DateTime.parse(date.toString());
    final month = DateFormat('MMMM-yyyy');
    String monthwise = month.format(parseDate);
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    String formatted = formatter.format(parseDate);
    return Obx(() => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            color: screenContainerbackgroundColor,
            height: ResponsiveWebSite.isMobile(context) ? 840 : 820,
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: TextFontWidget(
                        text: 'All Students Attendance ',
                        fontsize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SizedBox(
                          height: 65,
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextFontWidget(
                                  text: "Select Class *", fontsize: 12),
                              SizedBox(
                                  height: 40, child: SelectClassDropDown()),
                            ],
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: ResponsiveWebSite.isMobile(context) ? 20 : 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: cWhite,
                      height: ResponsiveWebSite.isMobile(context) ? 750 : 680,
                      width: double.infinity,
                      child: StreamBuilder(
                          stream: attendenceController.todayAttendence.value ==  true
                              ? server
                                  .collection('SchoolListCollection')
                                  .doc(UserCredentialsController.schoolId)
                                  .collection(
                                      UserCredentialsController.batchId!)
                                  .doc(UserCredentialsController.batchId!)
                                  .collection('classes')
                                  .doc(Get.find<ClassController>()
                                      .classDocID
                                      .value)
                                  .collection('Attendence')
                                  .doc(monthwise)
                                  .collection(monthwise)
                                  .doc(formatted)
                                  .collection('Subjects')
                                  .orderBy('period')
                                  .snapshots()
                              : server
                                  .collection('SchoolListCollection')
                                  .doc(UserCredentialsController.schoolId)
                                  .collection(
                                      UserCredentialsController.batchId!)
                                  .doc(UserCredentialsController.batchId!)
                                  .collection('classes')
                                  .doc(Get.find<ClassController>()
                                      .classDocID
                                      .value)
                                  .collection('Attendence')
                                  .doc(attendenceController
                                      .fetchClassWiseMonthvalue.value)
                                  .collection(attendenceController
                                      .fetchClassWiseMonthvalue.value)
                                  .doc(attendenceController
                                      .fetchClassWiseDatevalue.value)
                                  .collection('Subjects')
                                  .orderBy('period')
                                  .snapshots(),
                          builder: (context, snaps) {
                            if (snaps.hasData) {
                              return DefaultTabController(
                                length: snaps.data!.docs.length,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only( left: 5,top: 0,),
                                          child: Container(
                                            height: 155,
                                            width: 250,
                                            decoration: const BoxDecoration(),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment .spaceAround,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextFontWidget(
                                                    text: 'Class VII',
                                                    fontsize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:   MainAxisAlignment .spaceBetween,
                                                    children: [
                                                      TextFontWidget(
                                                        text: 'Subject',
                                                        fontsize: 15,
                                                        fontWeight:FontWeight.w500,
                                                      ),
                                                      TextFontWidget(
                                                        text: 'English',
                                                        fontsize: 15,
                                                        fontWeight:FontWeight.w500,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      TextFontWidget(
                                                        text: 'Total Students',
                                                        fontsize: 15,
                                                        fontWeight:  FontWeight.w500,
                                                      ),
                                                      TextFontWidget(
                                                        text: '50',
                                                        fontsize: 15,
                                                        fontWeight:FontWeight.w500,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:MainAxisAlignment   .spaceBetween,
                                                    children: [
                                                      TextFontWidget(
                                                        text:'Present Students',
                                                        fontsize: 15,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                      TextFontWidget(
                                                        text: '50',
                                                        fontsize: 15,
                                                        fontWeight:FontWeight.w500,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:  MainAxisAlignment .spaceBetween,
                                                    children: [
                                                      TextFontWidget(
                                                        text: 'Absent Students',
                                                        fontsize: 15,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                      TextFontWidget(
                                                        text: '0',
                                                        fontsize: 15,
                                                        fontWeight:FontWeight.w500,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        attendenceController.todayAttendence.value == true
                                            ? Row(
                                                children: [
                                                  BlueContainerWidget(
                                                      title: "Today Status",
                                                      fontSize: 16,
                                                      color: themeColorBlue,
                                                      width: 180),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Checkbox(
                                                    value: true,
                                                    onChanged: (value) {
                                                      attendenceController.todayAttendence.value = false;
                                                    },
                                                  )
                                                ],
                                              )
                                            : Row(
                                                children: [
                                                  Padding(
                                                    padding:const EdgeInsets.all( 8.0),
                                                    child: Container(
                                                      width: 250,
                                                      height: ResponsiveWebSite.isMobile(context)? 80: 100,
                                                      color: cWhite,
                                                      child: Column(
                                                        crossAxisAlignment:CrossAxisAlignment.start,
                                                        children: [
                                                          const TextFontWidget(
                                                              text: 'Month *',
                                                              fontsize: 12.5),
                                                          const SizedBox(height: 05, ),
                                                          SizedBox(
                                                            height: 40,
                                                            child: SelectClassAttendenceMonthDropDown(),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:const EdgeInsets.all(8.0),
                                                    child: Container(
                                                      width: 200,
                                                      height: ResponsiveWebSite.isMobile(context)? 80: 100,
                                                      color: cWhite,
                                                      child: Column(
                                                        crossAxisAlignment:CrossAxisAlignment.start,
                                                        children: [
                                                          const TextFontWidget(
                                                              text: 'Date *',
                                                              fontsize: 12.5),
                                                          const SizedBox(height: 05,),
                                                          SizedBox(
                                                            height: 40,
                                                            child:SelectClassAttendenceDayDropDown(),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20,),
                                                  BlueContainerWidget(
                                                      title: "Today ? ",
                                                      fontSize: 12,
                                                      color: themeColorBlue,
                                                      width: 80),
                                                  Checkbox(
                                                    value: false,
                                                    onChanged: (value) {
                                                      attendenceController.todayAttendence.value = true;
                                                    },
                                                  )
                                                ],
                                              ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(  top: 10, left: 20, right: 20),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: cWhite,
                                            height: 40,
                                            child: TabBar(
                                              indicatorColor: cWhite,
                                              tabAlignment: TabAlignment.start,
                                              isScrollable: true,
                                              labelColor: Colors.blue,
                                              labelStyle: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10),
                                              tabs: List.generate(
                                                snaps.data!.docs.length,
                                                (index) => Tab(
                                                  text:
                                                      '${snaps.data!.docs[index].data()['period']} Period',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, left: 20, right: 20),
                                      child: Container(
                                        width: double.infinity,
                                        color: screenContainerbackgroundColor,
                                        height: 02,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, left: 20, right: 20),
                                      child: Container(
                                        height: 470,
                                        color: cWhite,
                                        // color: Colors.amber,
                                        //// height: 300,
                                        child: TabBarView(
                                            children: List.generate(
                                                snaps.data!.docs.length,
                                                (index) =>const StudentAttendanceDataList())),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            } else if (snaps.data == null) {
                              return const Center(
                                child: TextFontWidget(
                                    text: "No recordes found", fontsize: 16),
                              );
                            } else {
                              return const LoadingWidget();
                            }
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
