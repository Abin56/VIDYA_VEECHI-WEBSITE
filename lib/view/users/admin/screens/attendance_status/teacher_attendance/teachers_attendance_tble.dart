import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/result/widget/data_container_marks.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/tableheaderWidget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';


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
        width:ResponsiveWebSite.isMobile(context)? double.infinity:900,
        child: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                Expanded(
                      flex: 1, child: TableHeaderWidget(headerTitle: 'No')),
                      SizedBox(width: 1,),
                  Expanded(
                      flex: 6,
                      child:ResultTableHeaderWidget(headerTitle: "Teacher Name")), SizedBox(width: 1,),
                  Expanded(
                      flex: 2,
                      child:ResultTableHeaderWidget(headerTitle: "Status")),
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
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: "  Teacher Full Name"),
                          ), const SizedBox(width: 1,),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: "  Present"),
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
