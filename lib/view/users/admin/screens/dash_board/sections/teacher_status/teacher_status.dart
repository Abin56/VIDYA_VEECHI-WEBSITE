import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class TotalTeacherViewContainer extends StatelessWidget {
  const TotalTeacherViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context) ? 320 : 420,
      width: ResponsiveWebSite.isMobile(context) ? double.infinity : 450,
      decoration: BoxDecoration(
          color: cWhite, border: Border.all(color: cBlack.withOpacity(0.1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: TextFontWidget(
              text: "All Teachers",
              fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: AllTeacherStatusListView(),
            ),
          )
        ],
      ),
    );
  }
}

class AllTeacherStatusListView extends StatelessWidget {
  const AllTeacherStatusListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 176, 238, 178).withOpacity(0.1),
                border: Border.all(color: Colors.grey.withOpacity(0.1))),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 15,
                child: CircleAvatar(
                  backgroundColor: cWhite,
                  radius: 10,
                ),
              ),
              title: TextFontWidget(
                text: 'Cheekan Para',
                fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
                fontWeight: FontWeight.w600,
              ),
              subtitle: Row(
                children: [
                  Expanded(
                    child: TextFontWidget(
                      text: 'Subject',
                      fontsize: ResponsiveWebSite.isMobile(context) ? 11 : 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 05,
          );
        },
        itemCount: 10);
  }
}
