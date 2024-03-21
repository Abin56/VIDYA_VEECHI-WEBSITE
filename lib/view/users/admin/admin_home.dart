import 'package:flutter/material.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/create_teacher_profile/create_teacher_profile.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/teachers/teachers_all_list.dart';
import 'package:vidyaveechi_website/view/users/admin/app_bar/admin_appBar.dart';
import 'package:vidyaveechi_website/view/users/admin/drawer/drawer_pages.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/achievements/achievements.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendance_status/students_attendance/all_students.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/attendance_status/teacher_attendance/all_teachers.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/batch_histroy/batch_history_list.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/allclass_listscreen.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/class_details/class_details.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/dash_board/admin_dashboard.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/events/events.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_notification.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/fees_bills.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/general%20instruction/general_instructions.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/meeting/creating_meeting/meeting_creating.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/notice/notice_page.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/parents/all_parents_list.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/result/student_result.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/view_allStudents.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/teacher/view_allTeachers.dart';
import 'package:vidyaveechi_website/view/users/teacher/timetable/timetable.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

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
                                'webassets/images/vidyaveechi_logo.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "VIDYA VEECHI",
                              fontsize:
                                  ResponsiveWebSite.isMobile(context) ? 18 : 20,
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

  AllClassListView(),

  const AllStudentsAttendance(),

  const AllTeachersAttendance(),

  const AllExamNotificationListView(),
  const AllExamNotificationListView(),
  const AllExamNotificationListView(),

  const StudentExamResult(),
  const StudentExamResult(),

  const NoticeEditRemove(),
  const NoticeEditRemove(),
  const NoticeEditRemove(),

  const EventsEditREmove(),
  const EventsEditREmove(),
  const EventsEditREmove(),

  const MeetingCreatingPage(),
  const MeetingCreatingPage(),

  const AdminDashBoardSections(),

  AllStudentListContainer(),

  AllTeacherListContainer(),

  AllParentsListContainer(),

  GeneralInsructions(),

  ///create admin eduknm
  GeneralInsructions(),

  const Achievements(),

  const FeesAndBillsPage(),

  const BatchHistroyListPage(),

  const TimeTable(),

  // AllClassListView(),
  // TeachersDetailsContainer(),

  // CreateTeacher(),

  // AllClassListView(),

  // ///
  // AllStudentListContainer(),

  // const AllTeachersList(),
  // const CreateTeacherProfile(),
  // Center(
  //   child: Text(sideMenu[5]),
  // ),

  // Center(
  //   child: Text(sideMenu[7]),
  // ),
  // ////

  // const MeetingCreatingPage(),
  // const AllExamNotificationListView(),
  // const FeesAndBillsPage(),
  // Container(
  //   height: 200,
  //   color: Colors.redAccent,
  // ),
  // // const FeesAndBillsPage(),
  // const AllExamNotificationListView(),
  // Center(
  //   child: Text(sideMenu[1]),
  // ),
  // Center(
  //   child: Text(sideMenu[2]),
  // ),
  // Center(
  //   child: Text(sideMenu[3]),
  // ),
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
