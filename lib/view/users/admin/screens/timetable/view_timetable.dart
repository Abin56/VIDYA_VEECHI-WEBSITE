import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/data_container.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class ViewTimeTable extends StatelessWidget {
  const ViewTimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: screenContainerbackgroundColor,
        height: ResponsiveWebSite.isMobile(context) ? 840 : 800,
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
                          child: DropdownSearch(
                            selectedItem: 'Class XII',
                            items: const ['Class XII', 'Class XI'],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: cWhite,
                height: ResponsiveWebSite.isMobile(context) ? 750 : 650,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10,top: 10 ),
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
                                      horizontal:
                                          BorderSide(color: Colors.blue),
                                    )),
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    cBlack.withOpacity(0.2))),
                                        width: 71.5,
                                        child: Center(
                                          child: TextFontWidget(
                                            text: days[index],
                                            fontsize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: cWhite,
                                            overflow: TextOverflow.ellipsis,
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
                            // Expanded(
                            //     flex: 1,
                            //     child: CatrgoryTableHeaderWidget(
                            //         headerTitle: 'Status')),
                            // SizedBox(
                            //   width: 02,
                            // ),
                          ],
                        ),
                      ),
                    ),///////////////////////////////////////////////////////////////////////////////////////////////
                    Expanded(
                        child: SizedBox(
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: SizedBox(
                                      height: 45,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: DataContainerWidget(
                                                rowMainAccess:
                                                    MainAxisAlignment.center,
                                                color: cWhite,
                                                // width: 150,
                                                index: index,
                                                headerTitle:
                                                    '${index + 1}'), //....................No
                                          ),
                                          const SizedBox(
                                            width: 02,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: DataContainerWidget(
                                                rowMainAccess:
                                                    MainAxisAlignment.center,
                                                color: cWhite,
                                                index: index,
                                                headerTitle: "Class XII"),
                                          ), //................................................. Months
                                          const SizedBox(
                                            width: 02,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: DataContainerWidget(
                                                rowMainAccess:
                                                    MainAxisAlignment.start,
                                                color: cWhite,
                                                index: index,
                                                headerTitle: period[
                                                    index]), //////////////////periods
                                          ),
                                          const SizedBox(
                                            width: 02,
                                          ),
                                          Expanded(
                                            flex: 5,
                                            child: Container(
                                              color: index % 2 == 0
                                                  ? const Color.fromARGB(
                                                      255, 246, 246, 246)
                                                  : Colors.blue[50],
                                              child: ListView.separated(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Column(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: cBlack
                                                                      .withOpacity(
                                                                          0.2))),
                                                                          height: 22.5,
                                                          width: 71.5,
                                                          child: const Center(
                                                            child: TextFontWidget(
                                                              text: " Annie",
                                                              fontsize: 10,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: cBlack
                                                                      .withOpacity(
                                                                          0.2))),
                                                                          height: 22.5,
                                                          width: 71.5,
                                                          child: const Center(
                                                            child: TextFontWidget(
                                                              text: " English",
                                                              fontsize: 10,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return const SizedBox(
                                                      width: 03,
                                                    );
                                                  },
                                                  itemCount: 08),
                                            ),
                                          ), ///////////////////////////sub
                                          const SizedBox(
                                            width: 02,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: DataContainerWidget(
                                                rowMainAccess:
                                                    MainAxisAlignment.center,
                                                color: cWhite,
                                                index: index,
                                                headerTitle: "11:30"),
                                          ), //....................................... starting tim e
                                          const SizedBox(
                                            width: 02,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: DataContainerWidget(
                                                rowMainAccess:
                                                    MainAxisAlignment.center,
                                                color: cWhite,
                                                index: index,
                                                headerTitle: "12:30"),
                                          ), //.......................................ending time
                                          const SizedBox(
                                            width: 02,
                                          ),

                                          // Expanded(
                                          //   flex: 1,
                                          //   child: Row(
                                          //     mainAxisAlignment:
                                          //         MainAxisAlignment.center,
                                          //     children: [
                                          //       SizedBox(
                                          //         width: 15,
                                          //         child: Image.asset(
                                          //           'webassets/png/active.png',
                                          //         ),
                                          //       ),
                                          //       const TextFontWidget(
                                          //         text: " Full Paid",
                                          //         fontsize: 12,
                                          //         overflow:
                                          //             TextOverflow.ellipsis,
                                          //       ),
                                          //     ],
                                          //   ),
                                          // ), //............................. Status [Full paid or Pending]
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    height: 02,
                                  );
                                },
                                itemCount: 10)))
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

List<String> period = [
  '  First period',
  '  Second peroid',
  '  Third peroid',
  '  Fourth peroid',
  '  Fifth peroid',
  '  Sixth peroid',
  '  Seventh peroid',
  '  Eighth peroid',
  '  Ninth peroid',
  '  Tenth peroid'
];
