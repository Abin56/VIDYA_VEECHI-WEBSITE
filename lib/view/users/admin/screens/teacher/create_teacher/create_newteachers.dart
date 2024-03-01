import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/teacher_controller/teacher_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/create_teacher/teacher_price_tble.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

class CreateTeacher extends StatelessWidget {
  final TeacherController teacherController = Get.put(TeacherController());
  CreateTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> createTeacherListWidget = [
      const TextFontWidget(
        text: 'Add New Teacher',
        fontsize: 18,
        fontWeight: FontWeight.bold,
      ), //////////////////////////////////////////0................
      TextFormFiledBlueContainerWidget(
        hintText: "Enter Teacher Name",
        title: 'Teacher Name',
        validator: checkFieldEmpty,
      ), /////////////////////////...........................1
      Obx(() => teacherController.automaticmail.value == false
          ? TextFormFiledBlueContainerWidget(
              hintText: "Enter Teacher Email",
              title: 'Teacher Email',
              widget: Row(
                children: [
                  const TextFontWidget(
                      text: 'Teacher have no email ID?', fontsize: 10.5),
                  SizedBox(
                    height: 05,
                    child: Checkbox(
                      activeColor: cgreen,
                      value: teacherController.automaticmail.value,
                      onChanged: (value) {
                        value = teacherController.automaticmail.value = true;
                      },
                    ),
                  ),
                ],
              ),
            )
          : SizedBox(
              height: 100,
              child: Column(
                children: [
                  Row(
                    children: [
                      const TextFontWidget(
                          text: '  Teacher have no email ID?', fontsize: 10.5),
                      SizedBox(
                        height: 10,
                        child: Checkbox(
                          activeColor: cgreen,
                          value: teacherController.automaticmail.value,
                          onChanged: (value) {
                            value =
                                teacherController.automaticmail.value = false;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 05,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: themeColorBlue,
                      border: Border.all(color: cBlack.withOpacity(0.4)),
                    ),
                    child: const Center(
                      child: TextFontWidget(
                        text: "Auto - Creation",
                        fontsize: 12.5,
                        color: cWhite,
                      ),
                    ),
                  )
                ],
              ),
            )), //////////////////////////////2..................
      TextFormFiledBlueContainerWidget(
        hintText: "Enter Teacher Ph",
        title: 'Phone Number',
      ), //////////////////3....................
      Container(
        height: 80,
        color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Gender *', fontsize: 12.5),
            const SizedBox(
              height: 05,
            ),
            SizedBox(
              height: 40,
              child: DropdownSearch(
                items: const ['Male', 'Female'],
              ),
            ),
          ],
        ),
      ), ////////////////////4.....................
      TextFormFiledBlueContainerWidget(
        hintText: "Enter Employee Id",
        title: 'Employee Id',
      ), ///////////////////5
      Container(
        height: 80,
        color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Date of birth 🗓️ *', fontsize: 12.5),
            const SizedBox(
              height: 05,
            ),
            GestureDetector(
              onTap: () => showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2018),
                lastDate: DateTime(2030),
                helpText: 'Select a date',
                cancelText: 'Cancel',
                confirmText: 'OK',
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      primaryColor:
                          const Color(0xFF2296F3), // Header background color
                      // accentColor: Colors.white, // Selection color
                      colorScheme:
                          const ColorScheme.light(primary: Color(0xFF2296F3)),
                      buttonTheme: const ButtonThemeData(
                        textTheme: ButtonTextTheme.primary,
                      ),
                    ),
                    child: child!,
                  );
                },
              ),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(05),
                    color: screenContainerbackgroundColor,
                    border: Border.all(color: cBlack.withOpacity(0.4))),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFontWidget(text: 'DD/MM/YYYY *', fontsize: 12.5),
                ),
              ),
            ),
          ],
        ),
      ), /////////////////////6.............
      Container(
        height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
        color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Subject *', fontsize: 12.5),
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
      ), //////////////////////////7..................

      Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
            color: themeColorBlue,
            border: Border.all(color: themeColorBlue),
            borderRadius: BorderRadius.circular(05)),
        child: const Center(
          child: TextFontWidget(
            text: "Create Teacher",
            fontsize: 14,
            // fontWeight: FontWeight.w600,
            color: cWhite,
          ),
        ),
      ), /////////////////////////////8
    ];///////////////////////////////////...................................//////////////////////////////////................
    return Container(
      color: screenContainerbackgroundColor,
      height: ResponsiveWebSite.isMobile(context) ? 1200 : 820,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 25),
            child: TextFontWidget(
              text: 'Create A New Teacher',
              fontsize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 08,
                    right: 05,
                  ),
                  child: RouteNonSelectedTextContainer(title: 'Home'),
                ),
                RouteSelectedTextContainer(width: 140, title: 'Create Teacher'),
              ],
            ),
          ),
          ResponsiveWebSite.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Container(
                      color: cWhite,
                      height: 1000,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 15),
                                child: createTeacherListWidget[0],
                              ), //////////////////////////////////////////0...................add teacher heading
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 10, top: 10),
                                        child: createTeacherListWidget[
                                            1] //////////////////1.....................name   
                                        ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          left: 10,
                                        ),
                                        child: createTeacherListWidget[2]),/////2..........email
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 10, top: 10),
                                        child: createTeacherListWidget[
                                            3] //////////////////////............number
                                        ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 20),
                                      child: createTeacherListWidget[
                                          4] //////////..........gender
                                      ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 20),
                                      child:
                                          createTeacherListWidget[5] ///////id
                                      ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 20),
                                      child: createTeacherListWidget[
                                          6] /////////////////////dob............
                                      ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 20),
                                      child: createTeacherListWidget[
                                          7] ////////////sub............
                                      ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: SizedBox(
                                      height: 250,
                                      width: 500,
                                      child: TeacherSubjectPriceTable(),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: createTeacherListWidget[8] ////button
                              )
                        ],
                      ),
                    ),
                  ),
                ) //////////////////////////////////////////////////////////////////
                //////////V.....desktop and tab
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: cWhite,
                    height: 650,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
                          child: createTeacherListWidget[0],////////////////////heading
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10, top: 30),
                                    child: createTeacherListWidget[1]),//////////////////name
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                      left: 10,
                                    ),
                                    child: createTeacherListWidget[2]),////////////email
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10, top: 30),
                                    child: createTeacherListWidget[3]),///////////number
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 20,bottom: 20),
                                    child: createTeacherListWidget[
                                        4] //////////////////gnder...........
                                    )),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 20),
                                    child: createTeacherListWidget[5] //////id
                                    )),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 20,bottom: 20),
                                    child: createTeacherListWidget[6] //////dob
                                    )),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 20),
                                        child: createTeacherListWidget[
                                            7] /////sub..........
                                        ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 20),
                                        child: createTeacherListWidget[
                                            8] //////button
                                        )
                                  ],
                                )),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: cBlack.withOpacity(0.5))),
                                  height: 250,
                                  width: 150,
                                  padding: const EdgeInsets.all(10),
                                  child: const TeacherSubjectPriceTable(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
