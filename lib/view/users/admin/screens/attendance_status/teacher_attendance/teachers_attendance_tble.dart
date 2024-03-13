import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/result/widget/data_container_marks.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/tableheaderWidget.dart';


class TeachersAttendanceDataList extends StatelessWidget {
//  final int index;
  const TeachersAttendanceDataList({
 //   required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 580,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                Expanded(
                      flex: 1, child: TableHeaderWidget(headerTitle: 'No')),
                      SizedBox(width: 1,),
                  Expanded(
                      flex: 6,
                      child:TableHeaderWidget(headerTitle: "Student Name")), SizedBox(width: 1,),
                  Expanded(
                      flex: 2,
                      child:TableHeaderWidget(headerTitle: "Status")),
                ],
              ),
              SizedBox(
                height: 500,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.center,
                                color: cWhite,
                                index: index,
                                headerTitle: "${index + 1}"),
                          ),
                            const SizedBox(width: 1,),
                          Expanded(
                            flex: 6,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.center,
                                color: cWhite,
                                index: index,
                                headerTitle: "Teacher Full Name"),
                          ), const SizedBox(width: 1,),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.center,
                                color: cWhite,
                                index: index,
                                headerTitle: "Present"),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 20,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
    
  }
}
