import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

createClassFunction(BuildContext context){
  aweSideSheet(context: context,
  footer: Container(), 
  sheetPosition: SheetPosition.right,
  title: 'Create Class',
  body: Column(
    children: [ 
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextFontWidget(text: "Batch 2024 - 2025", fontsize: 19),
      ),
      const SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextFormFiledBlueContainerWidget(
          hintText: "Enter Class Name",
          title: 'Class Name',
          validator: checkFieldEmpty,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: themeColorBlue,
                border: Border.all(color: themeColorBlue),
                borderRadius: BorderRadius.circular(05)),
            child: const Center(
              child: TextFontWidget(
                text: "Add",
                fontsize: 14,
                // fontWeight: FontWeight.w600,
                color: cWhite,
              ),
            ),
          ),
        ),
      ), 
      SizedBox(
        height: ResponsiveWebSite.isDesktop(context)? 480:400,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            color: Colors.blue.withOpacity(0.2),
            height: 35,
            width: double.infinity,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFontWidget(text: "LkG", fontsize: 13,fontWeight: FontWeight.w600,),
                ),
                Container(
                  color: screenContainerbackgroundColor,
                  height: 35,
                  width: 90,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.edit,color: cgreen,size: 18,),
                      Container(width: 1,color: cWhite,),
                       const Icon(Icons.delete,color: cred,size: 18,)
                    ],
                  )),
               
              ],
            ),
          ),
        );
          }, separatorBuilder: (context, index) => const SizedBox(height: 1,), 
          itemCount: 25),
      ),
      
    ],
  ));
}