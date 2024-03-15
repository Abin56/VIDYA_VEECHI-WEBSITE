import 'package:flutter/material.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/create_teacher_profile/create_teacher_profile.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/teachers/teachers_all_list.dart';
import 'package:vidyaveechi_website/view/users/admin/app_bar/admin_appBar.dart';
import 'package:vidyaveechi_website/view/users/admin/drawer/drawer_pages.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendance_status/students_attendance/all_students.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendance_status/teacher_attendance/all_teachers.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/batch_histroy/batch_history_list.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/allclass_listscreen.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/dash_board/admin_dashboard.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_notification.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/fees_bills.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/meeting/creating_meeting/meeting_creating.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/result/student_result.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/create_student/create_newStudent.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/student_details.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/view_allStudents.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/create_teacher/create_newteachers.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/list_of_teacher/list_of_teacher.dart';

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
   ListingOfTeacher(),
  const AllExamNotificationListView(),
  AllClassListView(),
  const AllTeachersAttendance(),
  const AllStudentsAttendance(),
  const StudentExamResult(),
 
 
  const FeesAndBillsPage(),
  CreateTeacher(),
  
  AllStudentListContainer(),
   StudentDetailsContainer(), 

   StudentDetailsContainer(),

  AllClassListView(),

  ///
  AllStudentListContainer(),

  const AllTeachersList(),
  const CreateTeacherProfile(),
  Center(
    child: Text(sideMenu[5]),
  ),

  Center(
    child: Text(sideMenu[7]),
  ),
  ////

  const MeetingCreatingPage(),

  const FeesAndBillsPage(),
  Container(
    height: 200,
    color: Colors.redAccent,
  ),
  const BatchHistroyListPage(),
  // const FeesAndBillsPage(),

  Center(
    child: Text(sideMenu[1]),
  ),
  Center(
    child: Text(sideMenu[2]),
  ),
  Center(
    child: Text(sideMenu[3]),
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
];
