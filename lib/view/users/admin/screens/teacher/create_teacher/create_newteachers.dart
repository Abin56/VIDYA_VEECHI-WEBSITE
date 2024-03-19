import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/teacher_controller/teacher_controller.dart';
import 'package:vidyaveechi_website/model/teacher_model/teacher_model.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/progess_button/progress_button.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

class CreateTeacher extends StatelessWidget {
  final TeacherController teacherController = Get.put(TeacherController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        controller: teacherController.teacherNameController,
        hintText: " Enter Teacher Name",
        title: 'Teacher Name',
        validator: checkFieldEmpty,
      ), /////////////////////////...........................1....................name
      // Obx(() => teacherController.automaticmail.value == false
      //     ? TextFormFiledBlueContainerWidget(
      //         hintText: " Enter Teacher Email",
      //         title: 'Teacher Email',
      //         widget: Row(
      //           children: [
      //             const TextFontWidget(
      //                 text: 'Teacher have no email ID?', fontsize: 10.5),
      //             SizedBox(
      //               height: 05,
      //               child: Checkbox(
      //                 activeColor: cgreen,
      //                 value: teacherController.automaticmail.value,
      //                 onChanged: (value) {
      //                   value = teacherController.automaticmail.value = true;
      //                 },
      //               ),
      //             ),
      //           ],
      //         ),
      //       )
      //     : SizedBox(
      //         height: 100,
      //         child: Column(
      //           children: [
      //             Row(
      //               children: [
      //                 const TextFontWidget(
      //                     text: '  Teacher have no email ID?', fontsize: 10.5),
      //                 SizedBox(
      //                   height: 10,
      //                   child: Checkbox(
      //                     activeColor: cgreen,
      //                     value: teacherController.automaticmail.value,
      //                     onChanged: (value) {
      //                       value =
      //                           teacherController.automaticmail.value = false;
      //                     },
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(
      //               height: 05,
      //             ),
      //             Container(
      //               height: 40,
      //               decoration: BoxDecoration(
      //                 color: themeColorBlue,
      //                 border: Border.all(color: cBlack.withOpacity(0.4)),
      //               ),
      //               child: const Center(
      //                 child: TextFontWidget(
      //                   text: "Auto - Creation",
      //                   fontsize: 12.5,
      //                   color: cWhite,
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //       )), //////////////////////////////2..................
      TextFormFiledBlueContainerWidget(
        controller: teacherController.teacherPhoneNumeber,
        hintText: " Enter Teacher Ph",
        title: 'Phone Number',
        validator: checkFieldPhoneNumberIsValid,
      ), //////////////////2....................number...................
      // Container(
      //   height: 80,
      //   color: cWhite,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       const TextFontWidget(text: 'Gender *', fontsize: 12.5),
      //       const SizedBox(
      //         height: 05,
      //       ),
      //       SizedBox(
      //         height: 40,
      //         child: DropdownSearch(
      //           items: const ['Male', 'Female'],
      //           onChanged: (value) {
      //             teacherController.gender.value = value ?? '';
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ), ////////////////////4.....................
      TextFormFiledBlueContainerWidget(
        controller: teacherController.teacherIDController,
        hintText: " Enter Employee Id",
        title: 'Employee Id',
      ), ///////////////////3.......................
      Container(
        height: 80,
        color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Date of joining 🗓️ *', fontsize: 12.5),
            const SizedBox(
              height: 05,
            ),
            GestureDetector(
              onTap: () => teacherController.selectToDateofBirth(context),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(05),
                    color: screenContainerbackgroundColor,
                    border: Border.all(color: cBlack.withOpacity(0.4))),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() => TextFontWidget(
                      text: teacherController.dateofbithController.value == ''
                          ? 'DD/MM/YYYY *'
                          : teacherController.dateofbithController.value,
                      fontsize: 12.5)),
                ),
              ),
            ),
          ],
        ),
      ),
      // /////////////////////4.............joinong date
      TextFormFiledBlueContainerWidget(
        controller: teacherController.teacherPhoneNumeber,
        hintText: " Enter in number eg 100,500..",
        title: 'Enter Teacher Fees (per/hour)',
        validator: checkFieldPhoneNumberIsValid,
      ), //////////////////////////5..................fees

      Obx(() => ProgressButtonWidget(
          function: () async {
            if (_formKey.currentState!.validate()) {
              teacherController.createNewTeacher(TeacherModel());
            }
          },
          buttonstate: teacherController.buttonstate.value,
          text: 'Create Teacher'))
      // /////////////////////////////8
    ]; ///////////////////////////////////...................................//////////////////////////////////................
    return Form(
      key: _formKey,
      child: Container(
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
                          teacherController.ontapTeacher.value = false;
                        },
                        child:
                            const RouteNonSelectedTextContainer(title: 'Home')),
                  ),
                  const RouteSelectedTextContainer(
                      width: 140, title: 'Create Teacher'),
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
                                          child: createTeacherListWidget[
                                              2]), /////2..........number
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 20, left: 10, top: 10),
                                          child: createTeacherListWidget[
                                              3] //////////////////////............id
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
                                            4] //////////..........joining date
                                        ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 20),
                                        child: createTeacherListWidget[
                                            5] /////////////////////fee............
                                        ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 20),
                                        child: createTeacherListWidget[
                                            6] ////////////button............
                                        ),
                                  ],
                                ),
                              ],
                            ),
                            // Padding(
                            //     padding:
                            //         const EdgeInsets.only(top: 20, left: 20),
                            //     child: createTeacherListWidget[8] ////button
                            //     )
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
                            child: createTeacherListWidget[
                                0], ////////////////////heading
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
                                      child: createTeacherListWidget[
                                          1]), //////////////////name
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 30,
                                        right: 20,
                                        left: 10,
                                      ),
                                      child: createTeacherListWidget[
                                          2]), ////////////number
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, left: 10, top: 30),
                                      child: createTeacherListWidget[
                                          3]), ///////////employee id
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
                                          left: 10, right: 20, bottom: 20),
                                      child: createTeacherListWidget[
                                          4] //////////////////joinin date...........
                                      )),
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 10,
                                          left: 10, right: 20, bottom: 20),
                                      child:
                                          createTeacherListWidget[5] //////fee
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
                                              6] /////button..........
                                          ),
                                      // Padding(
                                      //     padding: const EdgeInsets.only(
                                      //         top: 20, left: 20),
                                      //     child: createTeacherListWidget[
                                      //         8] //////button
                                      //     )
                                    ],
                                  )),
                            ],
                          ),
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
