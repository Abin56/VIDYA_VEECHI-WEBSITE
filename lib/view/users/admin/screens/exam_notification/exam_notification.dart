import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/model/exam_notification/exam_notification.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/create_exam.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_functions_n_list/data_list_exam.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/button_container/button_container.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/tableheaderWidget.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class AllExamNotificationListView extends StatelessWidget {
  const AllExamNotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: cWhite,
        height: 1000,
        width: 1000,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextFontWidget(
                    text: 'All Exams List',
                    fontsize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 05, right: 05),
                      child: RouteSelectedTextContainer(title: 'All Exams'),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        createExamNotificationFunction(context);
                      },
                      child: ButtonContainerWidget(
                          curving: 30,
                          colorindex: 0,
                          height: 40,
                          width: 180,
                          child: const Center(
                            child: TextFontWidget(
                              text: 'Create / E D I T',
                              fontsize: 14,
                              fontWeight: FontWeight.bold,
                              color: cWhite,
                            ),
                          )),
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Expanded(
                      flex: 1, child: TableHeaderWidget(headerTitle: 'No')),
                  SizedBox(
                    width: 01,
                  ),
                  Expanded(
                      flex: 4,
                      child: TableHeaderWidget(headerTitle: 'Exam Name')),
                  SizedBox(
                    width: 01,
                  ),
                  Expanded(
                      flex: 2,
                      child: TableHeaderWidget(headerTitle: 'Total Days')),
                  SizedBox(
                    width: 01,
                  ),
                  Expanded(
                      flex: 3,
                      child: TableHeaderWidget(headerTitle: 'Starting')),
                  SizedBox(
                    width: 01,
                  ),
                  Expanded(
                      flex: 1, child: TableHeaderWidget(headerTitle: 'Ending')),
                  SizedBox(
                    width: 01,
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: 1200,
                  child: StreamBuilder(
                    stream: server
                        .collection('SchoolListCollection')
                        .doc(UserCredentialsController.schoolId)
                        .collection(UserCredentialsController.batchId!)
                        .doc(UserCredentialsController.batchId!)
                        .collection('ExamNotification')
                        .snapshots(),
                    builder: (context, snaps) {
                      if (snaps.hasData) {
                        if (snaps.data!.docs.isEmpty) {
                          return const Center(
                            child: TextFontWidget(
                                text: "No exam found, add new exams",
                                fontsize: 12.5),
                          );
                        } else {
                          return ListView.separated(
                              itemBuilder: (context, index) {
                                final data = ExamNotificationModel.fromMap(
                                    snaps.data!.docs[index].data());
                                return
                                    // GestureDetector(
                                    //   onTap: () => classController
                                    //       .ontapClass.value = true,
                                    //   child:
                                    ExamNotificationDataListWidget(
                                  data: data,
                                  index: index,
                                  //   ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 02,
                                );
                              },
                              itemCount: snaps.data!.docs.length);
                        } //
                      } else {
                        return circularProgressIndicator;
                      }
                    },
                  ), //
                ),
              )
            ],
          ),
        ),
      ),
      //  ),
    );
  }
}
