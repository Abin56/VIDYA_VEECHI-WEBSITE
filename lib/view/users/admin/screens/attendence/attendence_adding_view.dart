import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/attendence_controller/attendence_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/drop_down/select_class.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendence/add_attendance/attendance_list_data.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';

class AttendanceAddingList extends StatelessWidget {
  final AttendenceController attendenceController =
      Get.put(AttendenceController());
  AttendanceAddingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       scrollDirection: Axis.horizontal,
      child: Container(
        color: screenContainerbackgroundColor,
        height: 1000,
        width: 1150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  child: SizedBox(
                    height: 60,
                    width: 250,
                    child: TextFontWidget(
                      text: 'All Students List',
                      fontsize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
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
                              text: "Select Date *", fontsize: 12),
                          SizedBox(height: 40, child: SelectClassDropDown()),
                        ],
                      )),
                ),
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
                              text: "Select Month *", fontsize: 12),
                          SizedBox(height: 40, child: SelectClassDropDown()),
                        ],
                      )),
                ),
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
                          SizedBox(height: 40, child: SelectClassDropDown()),
                        ],
                      )),
                )
              ],
            ),
             Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 05),
                    child: RouteSelectedTextContainer(title: 'Add Attendance'),
                  ),Spacer(),
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
                                    text: "Select Subject *", fontsize: 12),
                                SizedBox(
                                    height: 40, child: SelectClassDropDown()),
                              ],
                            )),
                      ),
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
                                    text: "Select Period *", fontsize: 12),
                                SizedBox(
                                    height: 40, child: SelectClassDropDown()),
                              ],
                            )),
                      ),
                ],
              ),
            ),
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
                        attendenceController.ontapaddAttendence.value = false;
                      },
                      child: const RouteNonSelectedTextContainer(title: 'Home'),
                    ),
                  ),
                  const RouteSelectedTextContainer(
                      width: 140, title: 'Timetable Deatils'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: cWhite,
                height: 750,
                width: 1150,
                child: Column(
                  children: [
                    Container(
                      color: cWhite,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
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
                                  flex: 6,
                                  child: CatrgoryTableHeaderWidget(
                                      headerTitle: 'Present/Absent')),
                              SizedBox(
                                width: 02,
                              ),
                              // Expanded(
                              //     flex: 3,
                              //     child: CatrgoryTableHeaderWidget(
                              //         headerTitle: 'Absent')),
                              // SizedBox(
                              //   width: 02,
                              // ),
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
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 1, right: 1),
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
                                          child:
                                              AllAttendanceDataList(index: index),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
