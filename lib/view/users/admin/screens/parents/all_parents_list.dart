import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/parent_controller/parent_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/parents/list_table/list_table_of_tr.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/tableheaderWidget.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class ListingOfParents extends StatelessWidget {
  final ParentController parentController = Get.put(ParentController());
   ListingOfParents({super.key});

  @override
  Widget build(BuildContext context) {
     return
        // List<Widget> widgetlist = [];
        // Obx(() => parentController.ontapTeacher.value == true
        //     ? const ViewClassTeacherScreen()
        //     : 
            SingleChildScrollView(
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
                              text: 'All Parent List',
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
                                padding: EdgeInsets.only(left: 05, right: 05),
                                child: RouteSelectedTextContainer(
                                    title: 'All Parent'),
                              ),
                              Spacer(),
                              // GestureDetector(
                              //   onTap: () => createParent(context),
                              //   child: const Padding(
                              //     padding: EdgeInsets.only(left: 05, right: 05),
                              //     child: SizedBox(
                              //       width: 200,
                              //       child: RouteSelectedTextContainer(
                              //           title: 'Create New Class'),
                              //     ), //.......................Create Class
                              //   ),
                              // ),
                              // ButtonContainerWidget(
                              //     curving: 30,
                              //     colorindex: 0,
                              //     height: 35,
                              //     width: 150,
                              //     child: const Center(
                              //       child: TextFontWidget(
                              //         text: 'Create New Parent',
                              //         fontsize: 12,
                              //         fontWeight: FontWeight.bold,
                              //         color: cWhite,
                              //       ),
                              //     ))
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
                            // Expanded(
                            //     flex: 2,
                            //     child: TableHeaderWidget(headerTitle: 'ID')),
                            // SizedBox(
                            //   width: 01,
                            // ),
                            Expanded(
                                flex: 4,
                                child: ResultTableHeaderWidget(headerTitle: 'Parent Name')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 4,
                                child:
                                    ResultTableHeaderWidget(headerTitle: 'Student Name')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 3,
                                child: ResultTableHeaderWidget(headerTitle: 'Ph.No')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 2,
                                child: TableHeaderWidget(headerTitle: 'Class')),
                            SizedBox(
                              width: 01,
                            ),
                            // Expanded(
                            //     flex: 3,
                            //     child:
                            //         TableHeaderWidget(headerTitle: 'Status')),
                            // SizedBox(
                            //   width: 01,
                            // ),
                          ],
                        ),
                        Expanded(
                            child: SizedBox(
                                width: 1200,
                                child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () => parentController
                                            .ontapParent.value = true,
                                        child: AllParentsDataList(
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
             // )
              );
  }
  }
