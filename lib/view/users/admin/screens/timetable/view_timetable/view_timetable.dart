import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/controller/time_table_controller/timetable_controller.dart';
import 'package:vidyaveechi_website/model/class_model/class_model.dart';
import 'package:vidyaveechi_website/model/timetable_model/timetable_model.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/timetable/timetable.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/timetable/view_timetable/allclass_timetable.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/button_container/button_container.dart';
import 'package:vidyaveechi_website/view/widgets/loading_widget/loading_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class ViewTimeTable extends StatelessWidget {
  final TimeTableController timetableController =
      Get.put(TimeTableController());
  final classCtrl = Get.put(ClassController());
  ViewTimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => timetableController.ontapTimetable.value == true
          ? TimeTable()
          : SingleChildScrollView(
              child: Container(
                color: screenContainerbackgroundColor,
                height: ResponsiveWebSite.isMobile(context) ? 840 : 780,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 25, top: 10),
                          child: TextFontWidget(
                            text: 'Timetable List ',
                            fontsize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 250,
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextFontWidget(
                                    text: 'Select Class*', fontsize: 12.5),
                                const SizedBox(
                                  height: 05,
                                ),
                                SizedBox(
                                    height: 40,
                                    child: DropdownSearch<ClassModel>(
                                      validator: (item) {
                                        if (item == null) {
                                          return "Required field";
                                        } else {
                                          return null;
                                        }
                                      },
                                      asyncItems: (value) {
                                        classCtrl.allclassList.clear();

                                        return classCtrl.fetchClass();
                                      },
                                      itemAsString: (value) => value.className,
                                      onChanged: (value) async {
                                        if (value != null) {
                                          classCtrl.className.value =
                                              value.className;
                                          classCtrl.classDocID.value =
                                              value.docid;
                                        }
                                      },
                                      popupProps: const PopupProps.menu(
                                          searchFieldProps: TextFieldProps(
                                              decoration: InputDecoration(
                                                  hintText: "Search Class",
                                                  border:
                                                      OutlineInputBorder())),
                                          showSearchBox: true,
                                          searchDelay:
                                              Duration(microseconds: 10)),
                                      dropdownDecoratorProps:
                                          DropDownDecoratorProps(
                                              baseStyle: GoogleFonts.poppins(
                                                  fontSize: 13,
                                                  color: Colors.black
                                                      .withOpacity(0.7))),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 05, right: 05),
                          child:
                              RouteSelectedTextContainer(title: 'All Classes'),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: GestureDetector(
                            onTap: () {
                              timetableController.ontapTimetable.value = true;
                            },
                            child: ButtonContainerWidget(
                                curving: 30,
                                colorindex: 0,
                                height: 40,
                                width: 180,
                                child: const Center(
                                  child: TextFontWidget(
                                    text: 'Create ',
                                    fontsize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: cWhite,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: cWhite,
                        height: ResponsiveWebSite.isMobile(context) ? 750 : 600,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Container(
                                color: cWhite,
                                height: 40,
                                child: Row(
                                  children: [
                                    const Expanded(
                                        flex: 1,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'No')),
                                    const SizedBox(
                                      width: 02,
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'Class')),
                                    const SizedBox(
                                      width: 02,
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'Period')),
                                    const SizedBox(
                                      width: 02,
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        height: 30,
                                        decoration: const BoxDecoration(
                                            color: cBlue,
                                            border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  color: Colors.blue),
                                            )),
                                        child: ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: cBlack
                                                            .withOpacity(0.2))),
                                                width: 71.5,
                                                child: Center(
                                                  child: TextFontWidget(
                                                    text: days[index],
                                                    fontsize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: cWhite,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return const SizedBox(
                                                width: 03,
                                              );
                                            },
                                            itemCount: 08),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 02,
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'Starting Time')),
                                    const SizedBox(
                                      width: 02,
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'Ending Time')),
                                    const SizedBox(
                                      width: 02,
                                    ),
                                  ],
                                ),
                              ),
                            ), ///////////////////////////////////////////////////////////////////////////////////////////////
                           // Container(width: 1120,height: 600, color: cBlue,)
                             SizedBox(
                                 width: 1200,
                                 height: 600,
                                  child: StreamBuilder(
                                    stream: server
                                        .collection('SchoolListCollection')
                                        .doc(UserCredentialsController.schoolId)
                                        .collection('timetables')
                                        .snapshots(),
                                    builder: (context, snaPS) {
                                      if (snaPS.hasData) {
                                        return ListView.separated(
                                            itemBuilder: (context, index) {
                                              final data = TimeTableModel.fromMap(
                                                  snaPS.data!.docs[index].data());
                                              return GestureDetector(
                                                onTap: () {
                                                  // timetableController 
                                                  //     .timetableModelData
                                                  //     .value = data;
                                                  // timetableController
                                                  //     .ontapview
                                                  //     .value = true;
                                                },
                                                child:  AllClassTimeTableList(
                                                 // index: index,data: data,
                                                  )
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return const SizedBox(
                                                height: 02,
                                              );
                                            },
                                            itemCount: snaPS.data!.docs.length);
                                      } else {
                                        return const LoadingWidget();
                                      }
                                    },
                                  ),//
                                ),
                                ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

List<String> days = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
  'Special Class'
];
