import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/result/widget/data_container_marks.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/tableheaderWidget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';


class StudentAttendanceDataList extends StatelessWidget {
//  final int index;
  const StudentAttendanceDataList({
 //   required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
   // scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 580,
        width: ResponsiveWebSite.isMobile(context)? double.infinity:1300,
        // width: ResponsiveWebSite.isMobile(context)?500: ResponsiveWebSite.isTablet(context)?800: 1200,
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
                      child:ResultTableHeaderWidget(headerTitle: "Student Name")), SizedBox(width: 1,),
                        Expanded(
                      flex: 2,
                      child:ResultTableHeaderWidget(headerTitle: "Class")),SizedBox(width: 1,),
                  Expanded(
                      flex: 2,
                      child:ResultTableHeaderWidget(headerTitle: "Date")),SizedBox(width: 1,),
                        Expanded(
                      flex: 2,
                      child:ResultTableHeaderWidget(headerTitle: "Time")),SizedBox(width: 1,),
                  Expanded(
                      flex: 2,
                      child:ResultTableHeaderWidget(headerTitle: "Status from app")),SizedBox(width: 1,),
                       Expanded(
                      flex: 2,
                      child:ResultTableHeaderWidget(headerTitle: "Status from machine")),
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
                                headerTitle: " Student Full Name"),
                          ), const SizedBox(width: 1,),
                            Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " VIII"),
                          ),const SizedBox(width: 1,),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " 23/04/2024"),
                          ),
                          const SizedBox(width: 1,),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " 11:30"),
                          ),
                          const SizedBox(width: 1,),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " Present"),
                          ),
                          const SizedBox(width: 1,),
                          Expanded(
                            flex: 2,
                            child: DataContainerMarksWidget(
                                rowMainAccess: MainAxisAlignment.start,
                                color: cWhite,
                                index: index,
                                headerTitle: " Present"),
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
