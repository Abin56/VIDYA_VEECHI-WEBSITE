import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/view_class_students/class_details.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/view_class_students/data_list.dart';
import 'package:vidyaveechi_website/view/widgets/button_container/button_container.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/tableheaderWidget.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class AlltV extends StatelessWidget {
  final ClassController classController = Get.put(ClassController());
  AlltV({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // List<Widget> widgetlist = [];
        Obx(() => classController.ontapClass.value == true
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
                              text: 'All Classes List',
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
                                    title: 'All Classes'),
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
                                  height: 40,
                                  width: 150,
                                  child: const Center(
                                    child: TextFontWidget(
                                      text: 'Create New Class',
                                      fontsize: 14,
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
                                flex: 4,
                                child: TableHeaderWidget(headerTitle: 'Class')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 2,
                                child: TableHeaderWidget(
                                    headerTitle: 'TotalStudents')),
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
                            Expanded(
                                flex: 1,
                                child:
                                    TableHeaderWidget(headerTitle: 'Options')),
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
                                        onTap: () => classController
                                            .ontapClass.value = true,
                                        child: ClassDataListWidget(
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
