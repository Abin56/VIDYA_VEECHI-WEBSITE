import 'package:flutter/material.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/create_teacher_profile/create_teacher_profile.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/allclass_listscreen.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/view_allStudents.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/subject/create_subject/create_newsubject.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/create_teacher/create_newteachers.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/list_of_teacher/list_of_teacher.dart';
import 'package:vidyaveechi_website/view/teachers/teachers_all_list.dart';
import 'package:vidyaveechi_website/view/users/admin/app_bar/admin_appBar.dart';
import 'package:vidyaveechi_website/view/users/admin/drawer/drawer_pages.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/create_student/create_newStudent.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/student_details.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/batch_histroy/batch_history_list.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/dash_board/admin_dashboard.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/fees_bills.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/meeting_creating/meeting_creating.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_notification.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: SafeArea(
        child: SidebarDrawer(
            body: ListView(
              children: [
                const AppBarAdminPanel(),
                pages[selectedIndex],
              ],
            ),
            drawer: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 60,
                              child: Image.asset(
                                'assets/images/vidyaveechi_logo.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "VIDHYA VEECHI",
                              fontsize: 20,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 12),
                        child: Text(
                          "Main Menu",
                          style: TextStyle(
                              color: cBlack.withOpacity(
                                0.4,
                              ),
                              fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DrawerSelectedPagesSection(
                        selectedIndex: selectedIndex,
                        onTap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

List<Widget> pages = [
  const AdminDashBoardSections(),
  CreateStudent(),
  ListingOfTeacher(),
  const CreateSubject(),
  CreateTeacher(),

  CreateStudent(),
  const StudentDetailsContainer(),
  const AdminDashBoardSections(),
  AllClassListView(),
  AllStudentListContainer(),
  Center(
    child: Text(sideMenu[2]),
  ),
  const AllTeachersList(),
  const CreateTeacherProfile(),
  Center(
    child: Text(sideMenu[5]),
  ),

  Center(
    child: Text(sideMenu[7]),
  ),
  ExamNotification(), ////

  Container(
    height: 200,
    color: Colors.brown,
  ),
  Container(
    height: 200,
    color: Colors.purple,
  ),
  Container(
    height: 200,
    color: Colors.black54,
  ),
  Center(
    child: Text(sideMenu[19]),
  ),
  const MeetingCreatingPage(),
  Center(
    child: Text(sideMenu[21]),
  ),
  Container(
    height: 200,
    color: Colors.pink,
  ),
  Container(
    height: 200,
    color: Colors.cyan,
  ),
  Container(
    height: 200,
    color: Colors.blueGrey,
  ),
  Container(
    height: 200,
    color: Colors.green,
  ),
  Container(
    height: 200,
    color: Colors.pink,
  ),
  Container(
    height: 200,
    color: Colors.orange,
  ),
  Container(
    height: 200,
    color: Colors.deepPurple,
  ),

  const FeesAndBillsPage(),
  const BatchHistroyListPage(),
  //  Container(height: 200,color: Colors.green,),
  //  Container(height: 200,color: Colors.redAccent,),
  const BatchHistroyListPage(),
  // const FeesAndBillsPage(),

  Center(
    child: Text(sideMenu[30]),
  ),
];
List<String> sideMenu = [
  'Attendence',
  'Food Manage',
  'Rooms Manage',
  'Leave Requests',
  'Visitors Pass',
  'Students Manage',
  'Students Payment',
  'Employee Manage',
  'Bill Manage',
  'Notice Board',
  'Settings',
  'Rules',

  ///12
  '1Attendence',
  '1Food Manage',
  '1Rooms Manage',
  '1Leave Requests',
  '1Visitors Pass',
  '1Students Manage',
  '1Students Payment',
  '1Employee Manage',
  '1Bill Manage',
  '1Notice Board',
  '1Settings',

  ///
  '1Rules', //24
  '2Attendence',
  '2Food Manage',
  '2Rooms Manage',
  '2Leave Requests', //28
  '2Visitors Pass', //29
  '2Students Manage', //30
  '2Students Payment', //31
  '2Employee Manage', //////last 32
  '2Bill Manage',
  '2Notice Board',
  '2Settings',
  '2Rules', //32
];
