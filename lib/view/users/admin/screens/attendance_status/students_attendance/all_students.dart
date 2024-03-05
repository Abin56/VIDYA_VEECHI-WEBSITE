import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendance_status/students_attendance/student_attendance_tble.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class AllStudentsAttendance extends StatelessWidget {
  const AllStudentsAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    final stdattendanceListWidget = [
       TextFontWidget(
        text: 'Attendance of Students',
        fontsize: ResponsiveWebSite.isMobile(context)?15: 18,
        fontWeight: FontWeight.bold,
      ), /////////////////////////////////....................0
      Container(
        height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
        color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Class *', fontsize: 12.5),
            const SizedBox(
              height: 05,
            ),
            SizedBox(
              height: 40,
              child: DropdownSearch(
                items: const ['Class X', 'Class XI'],
              ),
            ),
          ],
        ),
      ), //////////////////...........1
      Container(
        height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
        color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Subject*', fontsize: 12.5),
            const SizedBox(
              height: 05,
            ),
            SizedBox(
              height: 40,
              child: DropdownSearch(
                items: const ['Malayalam', 'English'],
              ),
            ),
          ],
        ),
      ), //////////////////////...........2
    ];
    return  Container(
       color: screenContainerbackgroundColor,
      height: 820,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 25),
            child: TextFontWidget(
              text: 'All Students',
              fontsize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
           Padding(
            padding: EdgeInsets.only(
                top: ResponsiveWebSite.isMobile(context) ? 20 : 50),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: cWhite,
                height: 700,
                width: double.infinity,
                child: Column(
                  children: [
                    ResponsiveWebSite.isMobile(context)
                        ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: stdattendanceListWidget[0]),/////////////////heading
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 170,
                                  child: Column(
                                    children: [
                                     stdattendanceListWidget[1],/////////////////////////class
                                     stdattendanceListWidget[2]///////////////////////....exam
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )///////////////////////////.....................mobile
                        : Row(
                            children: [
                              Expanded(flex: 1, child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: stdattendanceListWidget[0],
                              )),/////////////////heading
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: stdattendanceListWidget[1]),///////////////////.....class
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: stdattendanceListWidget[2]),///////......exam
                              ),
                            ],
                          ),
                    const StudentAttendanceDataList()//////////..............common
                  ],
                ),
              ),
            ),
          )
          ]
    )
    );
  }
}