import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/controller/timetable_controller/timetable_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/drop_down/class_wise_subject.dart';
import 'package:vidyaveechi_website/view/drop_down/select_class.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/notice/noticebutton_container.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

import '../../../../../controller/subject_controller/subject_controller.dart';
import '../../../../drop_down/all_teacher.dart';

class TimeTable extends StatefulWidget {
 final String firebaseColor = '';

  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  final subjectCtrl = Get.put(SubjectController());
  bool? valuefirst = false;
  Color selectedColor = Colors.amber;
  String schoolID = '';
  String dropdownValue1 = 'Select Day';
  // String selectClass = 'Select Class';
  String dropdownValue2 = 'Select Subject';
  String dropdownValue3 = 'Select Teacher';
  String classvalue = 'Select Class';
  String selectedPeriod = 'Period 1';
  String selectedTime1 = 'Start Time  ';
  String selectedTime2 = 'End Time  ';
  //Color selectedColor = const Color(0x00fcfcfc);
  // Color selectedColor = Colors.amber;
  bool loadingStatus = false;

  String classid = '';

  //values
  String dayName = '';
  String subjectName = '';
  String teacherName = '';
  String periodNumber = '';
  String selectClass = '';

  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  final timetableCtrl = Get.put(TimeTableController());
  // Get.put(AdminLoginScreenController());

  @override
  Widget build(BuildContext context) {
    Get.put(ClassController());

    List<Widget> textformWidget = [
      SelectClassDropDown(), /////////////////////////////////////////////////////////////////0
      Obx(() => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black, width: 0.5),
            ),
            width: 450,
            child: DropdownButton<String>(
              underline: Container(),
              isExpanded: true,
              value: timetableCtrl.dayName.value,
              onChanged: (String? newValue) {
                timetableCtrl.dayName.value = newValue ?? '';
              },
              items: <String>[
                'Select Day',
                'Monday',
                'Tuesday',
                'Wednesday',
                'Thursday',
                'Friday',
                'Saturday',
                'Sunday'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )),
///////////////////////////////////////////////////////////////////////1
      SelectClassWiseSubjectDropDown(),

      SelectTeachersDropDown(), /////////////////////////////////////////////////////3
      Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black, width: 0.5),
          ),
          width: 450,
          child: DropdownButton<String>(
            underline: Container(),
            isExpanded: true,
            value: timetableCtrl.periodNumber.value,
            onChanged: (String? newValue) {
              timetableCtrl.periodNumber.value = newValue ?? '';

              periodNumber = newValue!;
            },
            items: <String>[
              'Period 1',
              'Period 2',
              'Period 3',
              'Period 4',
              'Period 5',
              'Period 6',
              'Period 7',
              'Period 8',
              'Period 9',
              'Period 10'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ), /////////////////////////////////////////////////4
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget1(
          controller: timetableCtrl.startTimeController,
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 420,
          hintText: 'Start time',
          title: 'Start time',
        ),
      ), 
        Padding(
        padding: const EdgeInsets.only( left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget1(
          controller: timetableCtrl.endTimeController,
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 420,
          hintText: 'End time',
          title: 'End time',
        ),
      ), ////////////////////////////////////////////////////////5
Padding(
  padding: const EdgeInsets.only( left: 10, right: 10),
  child: Obx(
    () => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 0.5),
      ),
      width: 400,
      child: DropdownButtonFormField<Color>(
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
        value: timetableCtrl.selectColor.value,
        onChanged: (Color? newValue) {
          timetableCtrl.selectColor.value = newValue ?? Colors.amber; // Update selectColor in controller
          log('COL :${newValue?.value.toRadixString(16)}');
        },
        items: [
          Colors.amber,
          Colors.red,
          Colors.green,
          Colors.blue,
          Colors.yellow,
          Colors.brown,
          Colors.deepOrange,
          Colors.deepPurple,
          Colors.lime,
          Colors.indigo,
          Colors.grey
        ].map<DropdownMenuItem<Color>>((Color value) {
          return DropdownMenuItem<Color>(
            value: value,
            child: Container(
              height: 30,
              width: 30,
              color: value,
            ),
          );
        }).toList(),
      ),
    ),
  ),
),

      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget1(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 400,
          title: '',
          hintText: '',
        ),
      ),
    ];

    return Container(
        height: 1000,
        color: screenContainerbackgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const TextFontWidget(text: 'TimeTable', fontsize: 20,fontWeight:FontWeight.bold ,),
                ResponsiveWebSite.isMobile(context)
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30, top: 10),
                            child: Container(
                              decoration: const BoxDecoration(color: cWhite
                                  // border: Border.all(color:Colors.grey
                                  // )
                                  ),
                              height: 820,
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      textformWidget[0],
                                      textformWidget[1],
                                      textformWidget[2],
                                      textformWidget[3],
                                      textformWidget[4],
                                      textformWidget[5],
                                      textformWidget[6],
                                      textformWidget[7],
                                    ],
                                  ),
                                  NoticeButtonContainerWidget(
                                      text: 'Submit',
                                      width: 300,
                                      height: 50,
                                      fontSize: 18,
                                      onTap: () {},
                                      color: themeColorBlue)
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : SingleChildScrollView(
                        child: Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 30, top: 10),
                            child: Container(
                              decoration: const BoxDecoration(color: cWhite
                                  // border: Border.all(color:Colors.grey
                                  // )
                                  ),
                              height: 820,
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                 padding: const EdgeInsets.only(right: 10),
                                                child: textformWidget[0],
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                 padding: const EdgeInsets.only(left: 10,right: 10),
                                                child: textformWidget[1],
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                 padding: const EdgeInsets.only(left: 10),
                                                child: textformWidget[2],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 10),
                                                child: textformWidget[3],
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 10,left: 10),
                                                child: textformWidget[4],
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: textformWidget[5],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Row(
                                          children: [
                                            Expanded(child: Padding(
                                              padding: const EdgeInsets.only(right: 10),
                                              child: textformWidget[6],
                                            )),
                                            Expanded(child: Padding(
                                              padding: const EdgeInsets.only(right: 10,left: 10),
                                              child: textformWidget[7],
                                            )),
                                            const Expanded(
                                                child: SizedBox(
                                                                                              height: 40,
                                                                                              width: 400,
                                                                                            ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  NoticeButtonContainerWidget(
                                    text: 'Submit',
                                    width: 300,
                                    height: 50,
                                    fontSize: 18,
                                    onTap: () async {
                                    timetableCtrl. addTimeTableDataToFirebase();
                                     
                                    },
                                    color: themeColorBlue,
                                  )
                                ],
                              ),
                            ),
                          )),
                        ],
                      )),
              ],
            ),
          ),
        ));
  }
}

class TimeTableDropdownContainerWidget extends StatelessWidget {
  const TimeTableDropdownContainerWidget({
    required this.title,
    this.items,
    this.color,
    super.key,
  });
  final String title;
  final List<String>? items;
  final List<Color>? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveWebSite.isMobile(context) ? double.infinity : 500,
      height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
      color: cWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFontWidget(text: title, fontsize: 12.5),
          const SizedBox(
            height: 05,
          ),
          SizedBox(
            height: 40,
            child: DropdownSearch(items: items ?? []),
          ),
        ],
      ),
    );
  }
}

class TimeTableDropdownContainerWidgetColor extends StatelessWidget {
  const TimeTableDropdownContainerWidgetColor({
    required this.title,
    this.items,
    this.color,
    super.key,
  });
  final String title;
  final List<String>? items;
  final List<Color>? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveWebSite.isMobile(context) ? double.infinity : 400,
      height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
      color: cWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFontWidget(text: title, fontsize: 12.5),
          const SizedBox(
            height: 05,
          ),
          SizedBox(
            height: 40,
            child: DropdownSearch<Color>(
              items: color ?? [],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class TextFormFiledBlueContainerWidget1 extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final Widget? widget;
  // Added child parameter
  final double? width;
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  String? Function(String?)? validator;
  Function()? onTap;
  TextInputType? keyboardType;

  TextFormFiledBlueContainerWidget1({
    this.width,
    this.widget,
    required this.hintText,
    required this.title,
    this.keyboardType,
    this.controller,
    this.autofillHints,
    this.onChanged,
    this.validator,
    this.onTap,
    Key? key, // Changed super.key to Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFontWidget(text: '$title *', fontsize: 12.5),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 45,
            width: width,
            color: Colors.white,
            child: Center(
              child: TextFormField(
                onChanged: onChanged,
                autofillHints: autofillHints,
                onTap: onTap,
                validator: validator,
                keyboardType: keyboardType,
                controller: controller,
                decoration: InputDecoration(
                  errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                      color: Colors.red,
                    ),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                      color: Colors.red,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 0.4),
                  ),
                  hintStyle: const TextStyle(fontSize: 13),
                  hintText: hintText,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.green),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
