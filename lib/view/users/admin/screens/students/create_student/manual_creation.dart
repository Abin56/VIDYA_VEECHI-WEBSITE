import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/student_controller/student_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

class ManualStudentCreation extends StatelessWidget {
  final StudentController studentController = Get.put(StudentController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ManualStudentCreation({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> createStudentListWidget = [
      const TextFontWidget(
        text: 'Add New Student',
        fontsize: 18,
        fontWeight: FontWeight.bold,
      ), //////////////////////////0.....................
      TextFormFiledBlueContainerWidget(
        hintText: "Enter Student Name",
        title: 'Student Name',
        validator: checkFieldEmpty,
      ), /////////////////////////////1
      Obx(() => studentController.automaticmail.value == false
          ? TextFormFiledBlueContainerWidget(
              hintText: "Enter Student Email",
              title: 'Student Email',
              validator: checkFieldEmailIsValid,
              widget: Row(
                children: [
                  const TextFontWidget(
                      text: 'Student have no email ID?', fontsize: 10.5),
                  SizedBox(
                    height: 05,
                    child: Checkbox(
                      activeColor: cgreen,
                      value: studentController.automaticmail.value,
                      onChanged: (value) {
                        value = studentController.automaticmail.value = true;
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
                          text: '  Student have no email ID?', fontsize: 10.5),
                      SizedBox(
                        height: 10,
                        child: Checkbox(
                          activeColor: cgreen,
                          value: studentController.automaticmail.value,
                          onChanged: (value) {
                            value =
                                studentController.automaticmail.value = false;
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
            )), /////////////////////...2
      TextFormFiledBlueContainerWidget(
        hintText: "Enter Student Ph",
        title: 'Phone Number',
        validator: checkFieldPhoneNumberIsValid,
      ), /////////////////////////.....3
      Container(
        height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
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
      ), /////////////////4.....................

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
      ), ////////////////////5.........................
      Container(
        height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
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
      ), ///////////////////////////6

      GestureDetector(
        onTap: () {
          if (_formKey.currentState!.validate()) {}
        },
        child: Container(
          height: 40,
          width: 200,
          decoration: BoxDecoration(
              color: themeColorBlue,
              border: Border.all(color: themeColorBlue),
              borderRadius: BorderRadius.circular(05)),
          child: const Center(
            child: TextFontWidget(
              text: "Create Student",
              fontsize: 14,
              // fontWeight: FontWeight.w600,
              color: cWhite,
            ),
          ),
        ),
      ), /////////////........................................7
      const RouteSelectedTextContainer(
          width: 140, title: 'Class Wise Creation'), ///////8
      const RouteSelectedTextContainer(
          width: 140, title: 'Manual Creation'), ///////////9

      const RouteSelectedTextContainer(
          width: 140, title: 'Create Student'), ////10
      const RouteNonSelectedTextContainer(title: 'Home'),

      ///11
    ];
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: ResponsiveWebSite.isMobile(context)
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Container(
                    color: cWhite,
                    height: 1000,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
                          child: createStudentListWidget[0], ////////////heading
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 10, top: 10),
                                  child:
                                      createStudentListWidget[1] ///////////name
                                  ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20,
                                    left: 10,
                                  ),
                                  child: createStudentListWidget[
                                      2] ////////email............
                                  ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 10, top: 10),
                                  child:
                                      createStudentListWidget[3] ////////number
                                  ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: createStudentListWidget[4] //////gender
                                ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: createStudentListWidget[5] /////class
                                ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: createStudentListWidget[6] ///////dob
                                ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                            left: 20,
                          ),
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: cBlack.withOpacity(0.3))),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFontWidget(
                                        text: " Note :", fontsize: 14.5),
                                    Expanded(
                                        child: TextFontWidget(
                                            text:
                                                " When a student is created, a parent's dummy email address and password are automatically created. ",
                                            fontsize: 11)),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 100,
                                        child: TextFontWidget(
                                            text:
                                                '''For example : \nStudent name: Lepton\nEmail address: lepton653@gmail.com \nLeptonparent653@gmail.com is the parent mail address.
                                ''',
                                            fontsize: 11),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: createStudentListWidget[7] ////////////button
                            )
                      ],
                    ),
                  ),
                ),
              ) /////////////////////////////////////////////////////////////////////////
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: cWhite,
                  height: 550,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
                          child: createStudentListWidget[0] ///////////name
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
                                  child:
                                      createStudentListWidget[1] ///////////name
                                  ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20,
                                    left: 10,
                                  ),
                                  child: createStudentListWidget[
                                      2] /////////////////////email....
                                  ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 10, top: 30),
                                  child:
                                      createStudentListWidget[3] ///////number
                                  ),
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
                                      left: 10, right: 20),
                                  child:
                                      createStudentListWidget[4] ////////gender
                                  )),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: createStudentListWidget[5] /////class
                                  )),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: createStudentListWidget[6] ////dob
                                  )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: cBlack.withOpacity(0.3))),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  TextFontWidget(
                                      text: " Note :", fontsize: 14.5),
                                  TextFontWidget(
                                      text:
                                          " When a student is created, a parent's dummy email address and password are automatically created. ",
                                      fontsize: 11),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 100,
                                      child: TextFontWidget(
                                          text:
                                              '''   For example : \n   Student name: Lepton\n   Email address: lepton653@gmail.com \n   Leptonparent653@gmail.com is the parent mail address.
                                ''',
                                          fontsize: 11),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: createStudentListWidget[7] //////button
                          )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
