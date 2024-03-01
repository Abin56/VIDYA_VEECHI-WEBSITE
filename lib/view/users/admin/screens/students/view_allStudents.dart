import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/student_controller/student_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/view_class_students/class_details.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/widget/data_list.dart';
import 'package:vidyaveechi_website/view/widgets/button_container/button_container.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/tableheaderWidget.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class AllStudentListContainer extends StatelessWidget {
  final StudentController studentController = Get.put(StudentController());
  AllStudentListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // List<Widget> widgetlist = [];
        Obx(() => studentController.ontapStudent.value == true
            ? const ViewClassStudentScreen()
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: cWhite,
                  height: 1000,
                  width: 1000,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 25, top: 25),
                          child: SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: TextFontWidget(
                              text: 'All Student List',
                              fontsize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 05, right: 05),
                                child: RouteSelectedTextContainer(
                                    title: 'All Student'),
                              ),
                              const Spacer(),
                              // GestureDetector(
                              //   onTap: () => createStudent(context),
                              //   child: const Padding(
                              //     padding: EdgeInsets.only(left: 05, right: 05),
                              //     child: SizedBox(
                              //       width: 200,
                              //       child: RouteSelectedTextContainer(
                              //           title: 'Create New Class'),
                              //     ), //.......................Create Class
                              //   ),
                              // ),
                              ButtonContainerWidget(
                                  curving: 30,
                                  colorindex: 0,
                                  height: 35,
                                  width: 150,
                                  child: const Center(
                                    child: TextFontWidget(
                                      text: 'Create New Student',
                                      fontsize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: cWhite,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: TableHeaderWidget(headerTitle: 'No')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 2,
                                child: TableHeaderWidget(headerTitle: 'ID')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 4,
                                child: TableHeaderWidget(headerTitle: 'Name')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 4,
                                child:
                                    TableHeaderWidget(headerTitle: 'E mail')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 3,
                                child: TableHeaderWidget(headerTitle: 'Ph.No')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 2,
                                child: TableHeaderWidget(headerTitle: 'Class')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 3,
                                child:
                                    TableHeaderWidget(headerTitle: 'Status')),
                            SizedBox(
                              width: 01,
                            ),
                          ],
                        ),
                        Expanded(
                            child: SizedBox(
                                width: 1200,
                                child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () => studentController
                                            .ontapStudent.value = true,
                                        child: AllStudentDataList(
                                          index: index,
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(
                                        height: 02,
                                      );
                                    },
                                    itemCount: 100)))
                      ],
                    ),
                  ),
                ),
              ));
  }
}
