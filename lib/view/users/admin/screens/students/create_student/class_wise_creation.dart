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
    return Padding(
      padding:
          EdgeInsets.only(top: ResponsiveWebSite.isMobile(context) ? 20 : 10),
      child: Container(
        color: cWhite,
        height: 600,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
              top: ResponsiveWebSite.isMobile(context) ? 20 : 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextFontWidget(
                text: 'Add New Student',
                fontsize: 18,
                fontWeight: FontWeight.bold,
              ),
              Padding(
                padding:  EdgeInsets.only(top: ResponsiveWebSite.isMobile(context)?20: 30),
                child: Container(
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
                ),
              ),
              TextFormFiledBlueContainerWidget(
                hintText: "Enter Student Name",
                title: 'Student Name',
                validator: checkFieldEmpty,
              ),
              TextFormFiledBlueContainerWidget(
                hintText: "Enter Student Ph",
                title: 'Phone Number',
                validator: checkFieldPhoneNumberIsValid,
              ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
