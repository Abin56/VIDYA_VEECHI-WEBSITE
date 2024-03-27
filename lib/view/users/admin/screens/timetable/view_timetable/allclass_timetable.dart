import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/model/timetable_model/timetable_model.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/data_container.dart';

class AllClassTimeTableList extends StatelessWidget {
  final TimeTableModel? data;
  final int index;
  const AllClassTimeTableList({
    required this.index,
     this.data, 
     super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                      height: 45,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: DataContainerWidget(
                                rowMainAccess: MainAxisAlignment.center,
                                color: cWhite,
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
                                rowMainAccess: MainAxisAlignment.center,
                                color: cWhite,
                                index: index,
                                headerTitle: "${data!.selectClass}"),
                          ), //................................................. Months
                          const SizedBox(
                            width: 02,
                          ),
                          Expanded(
                            flex: 1,
                            child: DataContainerWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle:
                                    period[index]), //////////////////periods
                          ),
                          const SizedBox(
                            width: 02,
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: index % 2 == 0
                                  ? const Color.fromARGB(255, 246, 246, 246)
                                  : Colors.blue[50],
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      cBlack.withOpacity(0.2))),
                                          height: 22.5,
                                          width: 71.5,
                                          child: Center(
                                            child: TextFontWidget(
                                              text: " ${data!.teacherName}",
                                              fontsize: 10,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      cBlack.withOpacity(0.2))),
                                          height: 22.5,
                                          width: 71.5,
                                          child: Center(
                                            child: TextFontWidget(
                                              text: " ${data!.teacherName}",
                                              fontsize: 10,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
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
                                rowMainAccess: MainAxisAlignment.center,
                                color: cWhite,
                                index: index,
                                headerTitle: "${data!.startTime}"),
                          ), //....................................... starting tim e
                          const SizedBox(
                            width: 02,
                          ),
                          Expanded(
                            flex: 1,
                            child: DataContainerWidget(
                                rowMainAccess: MainAxisAlignment.center,
                                color: cWhite,
                                index: index,
                                headerTitle: "${data!.endTime}"),
                          ), //.......................................ending time
                          const SizedBox(
                            width: 02,
                          ),
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
                itemCount: 10)));
  }
}

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
