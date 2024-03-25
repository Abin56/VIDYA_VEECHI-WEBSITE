import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendance_status/students_attendance/student_attendance_tble.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class PeriodWiseStudentsAttendance extends StatelessWidget {
  const PeriodWiseStudentsAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            color: screenContainerbackgroundColor,
            height: ResponsiveWebSite.isMobile(context) ? 840 : 820,
            width:1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: TextFontWidget(
                  text: 'All Students Attendance ',
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
                    height: ResponsiveWebSite.isMobile(context) ? 750 : 680,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25,top: 10,),
                              child: Container(
                                height: 140,
                                width: 250,
                                decoration: const BoxDecoration(
                                  color: screenContainerbackgroundColor,
                                  boxShadow: [BoxShadow(blurRadius: 2)]),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [ 
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: TextFontWidget(text: 'Class VII', fontsize: 15,fontWeight: FontWeight.bold,),
                                      ), Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextFontWidget(text: 'Subject', fontsize: 15,fontWeight: FontWeight.w500,),
                                          TextFontWidget(text: 'English', fontsize: 15,fontWeight: FontWeight.w500,),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextFontWidget(text: 'Total Students', fontsize: 15,fontWeight: FontWeight.w500,),
                                          TextFontWidget(text: '50', fontsize: 15,fontWeight: FontWeight.w500,),
                                        ],
                                      ),
                                        Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextFontWidget(text: 'Present Students', fontsize: 15,fontWeight: FontWeight.w500,),
                                          TextFontWidget(text: '50', fontsize: 15,fontWeight: FontWeight.w500,),
                                        ],
                                      ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextFontWidget(text: 'Absent Students', fontsize: 15,fontWeight: FontWeight.w500,),
                                          TextFontWidget(text: '0', fontsize: 15,fontWeight: FontWeight.w500,),
                                        ],
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 250,
                                height: ResponsiveWebSite.isMobile(context)
                                    ? 80
                                    : 100,
                                color: cWhite,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextFontWidget(
                                        text: 'Class *', fontsize: 12.5),
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
                              ),
                            ),
                          ],
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
                            labelColor: Colors.blue,
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                            tabs: [
                              Tab(
                                text: 'First Period',
                              ),
                              Tab(
                                text: 'Second Period',
                              ),
                              Tab(
                                text: 'Third Period ',
                              )
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
                      color: screenContainerbackgroundColor,
                      height: 02,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                    child: Container(
                      height: 470,
                      color: cWhite,
                      // color: Colors.amber,
        
                      // height: 300,
                      child: const TabBarView(children: [
                        StudentAttendanceDataList(), //........................ Student FEES
                        StudentAttendanceDataList(), //.......................... Student Attendence
                        StudentAttendanceDataList() //............................ Student Exam History
                      ]),
                    ),
                  )
                      ],
                    ),
                  ),
                ),
              )
            ]
            )
            ),
      ),
    );
  }
}
