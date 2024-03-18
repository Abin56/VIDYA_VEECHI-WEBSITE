import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/student_controller/student_controller.dart';
import 'package:vidyaveechi_website/model/student_model/student_model.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/create_student/create_newStudent.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/student_details.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/widget/data_list.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/button_container/button_container.dart';
import 'package:vidyaveechi_website/view/widgets/loading_widget/loading_widget.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';


class AllStudentListContainer extends StatelessWidget {
  final StudentController studentController = Get.put(StudentController());
  AllStudentListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => studentController.ontapStudent.value == true
        ? StudentDetailsContainer()
        : studentController.ontapCreateStudent.value == true
            ? CreateStudent()
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: screenContainerbackgroundColor,
                  height: 1000,
                  width: 1150,
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
                              text: 'All Student List',
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
                                padding: EdgeInsets.only(left: 20, right: 05),
                                child: RouteSelectedTextContainer(
                                    title: 'All Student'),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    studentController.ontapCreateStudent.value =
                                        true;
                                  },
                                  child: ButtonContainerWidget(
                                      curving: 30,
                                      colorindex: 0,
                                      height: 35,
                                      width: 150,
                                      child: const Center(
                                        child: TextFontWidget(
                                          text: 'Create New Student',
                                          fontsize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: cWhite,
                                        ),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            color: cWhite,
                            child: Padding(
                              padding: const EdgeInsets.only( top: 0),
                              child: Container(
                                color: cWhite,
                                height: 40,
                                child: const Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'No')),
                                    SizedBox(
                                      width: 02,
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'ID')),
                                    SizedBox(
                                      width: 02,
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'Name')),
                                    SizedBox(
                                      width: 02,
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'E mail')),
                                    SizedBox(
                                      width: 02,
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'Ph.NO')),
                                    SizedBox(
                                      width: 02,
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'Class')),
                                    SizedBox(
                                      width: 02,
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: CatrgoryTableHeaderWidget(
                                            headerTitle: 'Status')),
                                    SizedBox(
                                      width: 02,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              width: 1150,
                              decoration: BoxDecoration(
                                color: cWhite,
                                border: Border.all(color: cWhite),
                              ),
                              child: SizedBox(
                                // width: 1100,
                                child: StreamBuilder(
                                  stream: server
                                      .collection('SchoolListCollection')
                                      .doc(UserCredentialsController.schoolId)
                                      .collection('AllStudents')
                                      .snapshots(),
                                  builder: (context, snaPS) {
                                    if (snaPS.hasData) {
                                      return ListView.separated(
                                          itemBuilder: (context, index) {
                                            final data = StudentModel.fromMap(
                                                snaPS.data!.docs[index].data());
                                            return GestureDetector(
                                              onTap: () {
                                                studentController
                                                    .studentModelData
                                                    .value = data;
                                                studentController
                                                    .ontapStudent.value = true;
                                                // print(studentController
                                                //     .studentModelData.value = data);
                                              },
                                              child: 
                                              
                                              AllStudentDataList(
                                                data: data,
                                                index: index,
                                              ),
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
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ));
  }
}
