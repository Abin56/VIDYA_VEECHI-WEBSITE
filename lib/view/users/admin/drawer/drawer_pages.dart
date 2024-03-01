// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/widgets/dashboard_textFontWidget.dart';

class DrawerSelectedPagesSection extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  DrawerSelectedPagesSection({
    required this.selectedIndex,
    required this.onTap,
    super.key,
  });

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: selectedIndex == 0
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('assets/png/dashboard.png')),
            onTap: () {
              index = 0;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Dashboard',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: selectedIndex == 1
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('assets/png/blackboard.png')),
            onTap: () {
              index = 1;
              onTap.call(index);
            },
            title: DashboardTextFontWidget(
              title: 'Class',
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/png/attendance.png')),
          title: DashboardTextFontWidget(
            title: 'Attendance',
          ),
          children: <Widget>[
            Container(
              color: selectedIndex == 0
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              child: ListTile(
                onTap: () {
                  index = 2;
                  onTap.call(index);
                },
                title: DashboardTextFontWidget(
                  title: 'Students',
                ),
              ),
            ),
            ListTile(
              tileColor: selectedIndex == 3
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 3;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Teachers',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: SizedBox(
              height: 20, width: 20, child: Image.asset('assets/png/exam.png')),
          title: DashboardTextFontWidget(
            title: ' Examinations',
          ),
          children: <Widget>[
            ListTile(
              tileColor: selectedIndex == 8
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 8;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Class Test',
              ),
            ),
            ListTile(
              tileColor: selectedIndex == 9
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 9;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'School Test',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/results.png')),
          title: DashboardTextFontWidget(
            title: 'Results',
          ),
          children: <Widget>[
            ListTile(
              tileColor: selectedIndex == 12
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 12;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Students',
              ),
            ),
            ListTile(
              tileColor: selectedIndex == 13
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 13;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Teachers',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/notice.png')),
          title: DashboardTextFontWidget(
            title: 'Notices',
          ),
          children: <Widget>[
            ListTile(
              tileColor: selectedIndex == 15
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 15;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Students',
              ),
            ),
            ListTile(
              tileColor: selectedIndex == 16
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 4;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Teachers',
              ),
            ),
            ListTile(
              tileColor: selectedIndex == 17
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 17;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Parents',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/banner.png')),
          title: DashboardTextFontWidget(
            title: 'Events',
          ),
          children: <Widget>[
            ListTile(
              tileColor: selectedIndex == 18
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 18;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Students',
              ),
            ),
            ListTile(
              tileColor: selectedIndex == 19
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 19;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Teachers',
              ),
            ),
            ListTile(
              tileColor: selectedIndex == 20
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 20;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Parents',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/meetings.png')),
          textColor: Colors.amber,
          title: DashboardTextFontWidget(
            title: 'Meetings',
          ),
          children: <Widget>[
            // ListTile(
            //   tileColor: selectedIndex == 21
            //       ? themeColorBlue.withOpacity(0.1)
            //       : Colors.transparent,
            //   onTap: () {
            //     index = 21;
            //     onTap.call(index);
            //   },
            //   title: DashboardTextFontWidget(
            //     title: 'PTA',
            //   ),
            // ),
            // ListTile(
            //   tileColor: selectedIndex == 22
            //       ? themeColorBlue.withOpacity(0.1)
            //       : Colors.transparent,
            //   onTap: () {
            //     index = 22;
            //     onTap.call(index);
            //   },
            //   title: DashboardTextFontWidget(
            //     title: 'Mothers PTA',
            //   ),
            // ),
            ListTile(
              tileColor: selectedIndex == 23
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 23;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Parents Meeting',
              ),
            ),
            ListTile(
              tileColor: selectedIndex == 24
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              onTap: () {
                index = 24;
                onTap.call(index);
              },
              title: DashboardTextFontWidget(
                title: 'Teachers Meeting',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/notification.png')),
          tileColor: selectedIndex == 26
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 26;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'Notifications',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/student.png')),
          tileColor: selectedIndex == 28
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 28;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'Student',
          ),
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/teacher (1).png')),
          tileColor: selectedIndex == 28
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 28;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'Teacher',
          ),
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/parents.png')),
          tileColor: selectedIndex == 28
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 28;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'Parent',
          ),
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/createadmin.png')),
          tileColor: selectedIndex == 28
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 28;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'Create Admin',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/generalinstruction.png')),
          tileColor: selectedIndex == 29
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 29;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'General Instructions',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/achive.png')),
          tileColor: selectedIndex == 30
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 30;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'Achievements',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/fees&bills.png')),
          tileColor: selectedIndex == 31
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 31;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'Fees and Bills',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/batchhistory.png')),
          tileColor: selectedIndex == 33
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 33;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'Batch History',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('assets/png/timetable.png')),
          tileColor: selectedIndex == 33
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          onTap: () {
            index = 33;
            onTap.call(index);
          },
          title: DashboardTextFontWidget(
            title: 'TimeTable',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
