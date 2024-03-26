import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/result/widget/data_container_marks.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class StudentAttendanceDataList extends StatelessWidget {
//  final int index;
  const StudentAttendanceDataList({
    //   required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 550,
        width: ResponsiveWebSite.isMobile(context) ? double.infinity : 1300,
        // width: ResponsiveWebSite.isMobile(context)?500: ResponsiveWebSite.isTablet(context)?800: 1200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                      top: 0,
                    ),
                    child: Container(
                      height: 155,
                      width: 250,
                      decoration: const BoxDecoration(),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFontWidget(
                              text: 'Class VII',
                              fontsize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextFontWidget(
                                  text: 'Subject',
                                  fontsize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextFontWidget(
                                  text: 'English',
                                  fontsize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextFontWidget(
                                  text: 'Total Students',
                                  fontsize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextFontWidget(
                                  text: '50',
                                  fontsize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextFontWidget(
                                  text: 'Present Students',
                                  fontsize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextFontWidget(
                                  text: '50',
                                  fontsize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextFontWidget(
                                  text: 'Absent Students',
                                  fontsize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextFontWidget(
                                  text: '0',
                                  fontsize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CatrgoryTableHeaderWidget(headerTitle: 'No')),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                      flex: 6,
                      child: CatrgoryTableHeaderWidget(
                          headerTitle: "Student Name")),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                      flex: 2,
                      child: CatrgoryTableHeaderWidget(headerTitle: "Class")),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                      flex: 2,
                      child: CatrgoryTableHeaderWidget(headerTitle: "Date")),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                      flex: 2,
                      child: CatrgoryTableHeaderWidget(headerTitle: "Time")),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                      flex: 2,
                      child: CatrgoryTableHeaderWidget(
                          headerTitle: "Status from app")),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                      flex: 2,
                      child: CatrgoryTableHeaderWidget(
                          headerTitle: "Status from machine")),
                ],
              ),
              SizedBox(
                height: 500,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.center,
                                color: cWhite,
                                index: index,
                                headerTitle: "${index + 1}"),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            flex: 6,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " Student Full Name"),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " VIII"),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " 23/04/2024"),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " 11:30"),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " Present"),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " Present"),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 20,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
