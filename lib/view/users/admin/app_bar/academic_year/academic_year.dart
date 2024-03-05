import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

academicYearSettingFunction(BuildContext context){
  showDialog(context: context,
    builder: (context) {
    return AlertDialog(
      title: const TextFontWidget(text: "Change Academic Year", fontsize: 15),
      backgroundColor: cWhite,
      content: Column(
        children: [ 
           Container(
        height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
        color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Select Academic Year*', fontsize: 12.5),
            const SizedBox(
              height: 05,
            ),
            SizedBox(
              height: 40,
              child: DropdownSearch(
                items: const ['2024-2025', '2023-2024'],
              ),
            ),
          ],
        ),
      ),
        ],
      ),
    );
  },);
}