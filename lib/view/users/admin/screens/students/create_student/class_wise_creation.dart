import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

class ClassWiseStudentCreation extends StatelessWidget {
  const ClassWiseStudentCreation({super.key});

  @override
  Widget build(BuildContext context) {
    final classSWiseCreationList = [
      const TextFontWidget(
        text: 'Add New Student',
        fontsize: 18,
        fontWeight: FontWeight.bold,
      ), //////////////////////...............0
      Container(
        height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
        color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Class *', fontsize: 12.5),
            const SizedBox(
              height: 05,
            ),
            SizedBox(
              height: 40,
              child: DropdownSearch(
                items: const ['Class X', 'Class XI'],
              ),
            ),
          ],
        ),
      ), //////////////////...........1
      TextFormFiledBlueContainerWidget(
        hintText: "Enter Student Name",
        title: 'Student Name',
        validator: checkFieldEmpty,
      ), ///////////////////..........2
      TextFormFiledBlueContainerWidget(
        hintText: "Enter Student Ph",
        title: 'Phone Number',
        validator: checkFieldPhoneNumberIsValid,
      ), /////////////.............3
      GestureDetector(
        onTap: () {},
        child: Container(
          height: 40,
          width: 200,
          decoration: BoxDecoration(
              color: themeColorBlue,
              border: Border.all(color: themeColorBlue),
              borderRadius: BorderRadius.circular(05)),
          child: const Center(
            child: TextFontWidget(
              text: "Create Student",
              fontsize: 14,
              // fontWeight: FontWeight.w600,
              color: cWhite,
            ),
          ),
        ),
      ) ////////////////////////////.............4
    ];
    return Padding(
      padding:
          EdgeInsets.only(top: ResponsiveWebSite.isMobile(context) ? 20 : 10,left: 8,right: 8),
      child: Container(
        color: cWhite,
        height: 600,
        width: double.infinity,
        child: Padding(
            padding: EdgeInsets.only(
                top: ResponsiveWebSite.isMobile(context) ? 20 : 10),
            child: ResponsiveWebSite.isMobile(context)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      classSWiseCreationList[0], //////heading
                      Padding(
                        padding: EdgeInsets.only(
                            top: ResponsiveWebSite.isMobile(context) ? 20 : 30),
                        child: classSWiseCreationList[1], ////.....class
                      ),
                      classSWiseCreationList[
                          2], ////////////..............enter name
                      classSWiseCreationList[3], ////////////........enter ph.no
                      classSWiseCreationList[
                          4], ////////////............create button
                    ],
                  )
                : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        classSWiseCreationList[0], //////heading
                        Padding(
                          padding: EdgeInsets.only(
                              top: ResponsiveWebSite.isMobile(context) ? 20 : 30),
                          child: SizedBox(width: 370,
                            child: classSWiseCreationList[1]), ////.....class
                        ),
                        SizedBox(width: 370,
                          child: classSWiseCreationList[
                              2],
                        ), ////////////..............enter name
                        SizedBox(width: 370,
                          child: classSWiseCreationList[3]), ////////////........enter ph.no
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: classSWiseCreationList[
                              4],
                        ), ////////////............create butto
                      ],
                    ),
                )),
      ),
    );
  }
}
