// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';

class TotalMembersSection extends StatelessWidget {
  const TotalMembersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
            //  addAttendance(context);
            },
            child: TotalMemberContainerWidget(
                imageradius: 20,
                imagepath: 'webassets/png/student.png',
                imageColor: const Color.fromARGB(255, 60, 184, 120),
                color: const Color.fromARGB(255, 209, 243, 224),
                count: 4020,
                title: 'Students'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TotalMemberContainerWidget(
                imageradius: 18,
                imagepath: 'webassets/png/teacher.png',
                imageColor: const Color.fromARGB(255, 63, 122, 252),
                color: const Color.fromARGB(255, 225, 241, 255),
                count: 56,
                title: 'Teachers'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TotalMemberContainerWidget(
                imageradius: 18,
                imagepath: 'webassets/png/parent.png',
                imageColor: const Color.fromARGB(255, 255, 160, 1),
                color: const Color.fromARGB(255, 255, 242, 216),
                count: 4020,
                title: 'Parents'),
          ),
        ],
      ),
    );
  }
}

class TotalMemberContainerWidget extends StatelessWidget {
  String imagepath;
  String title;
  int count;
  Color color;
  Color imageColor;
  double imageradius;

  TotalMemberContainerWidget({
    required this.imagepath,
    required this.imageColor,
    required this.imageradius,
    required this.color,
    required this.count,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 250,
      decoration: BoxDecoration(
          color: cWhite, border: Border.all(color: cBlack.withOpacity(0.1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: CircleAvatar(
              radius: 33,
              backgroundColor: color,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: imageradius,
                child: Image.asset(
                  imagepath,
                  color: imageColor,
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFontWidget(
                  text: title,
                  fontsize: 14,
                  color: cBlack.withOpacity(0.4),
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFontWidget(
                  text: count.toString(),
                  fontsize: 17,
                  fontWeight: FontWeight.w800,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
