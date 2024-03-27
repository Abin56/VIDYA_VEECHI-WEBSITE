import 'package:flutter/cupertino.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendence/add_attendance/attendance_list_data.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class AttendanceAddingList extends StatelessWidget {
  const AttendanceAddingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: screenContainerbackgroundColor,
      height: 1000,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 25),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: TextFontWidget(
                text: 'All Students List',
                fontsize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 05),
                  child: RouteSelectedTextContainer(title: 'Add Attendance'),
                ),
              ],
            ),
          ),
          Container(
            color: cWhite,
            height: 750,
            width: 1150,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    color: cWhite,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        color: cWhite,
                        height: 40,
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'No')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 2,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'ID')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 4,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Name')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 4,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Present')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 3,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Absent')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 3,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Status')),
                            SizedBox(
                              width: 02,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: 1150,
                          decoration: BoxDecoration(
                            color: cWhite,
                            border: Border.all(color: cWhite),
                          ),
                          child: SizedBox(
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: AllAttendanceDataList(index: index),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 02,
                                    );
                                  },
                                  itemCount: 100)))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
