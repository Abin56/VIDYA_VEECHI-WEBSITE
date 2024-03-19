import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/back_button/back_button_widget.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';


createTeacherFunction(BuildContext context){
  final createTeacherList = [
     TextFormFiledBlueContainerWidgetWithOutColor(
        hintText: " Enter Teacher Name",
        title: 'Teacher Name',
        validator: checkFieldEmpty,
      ), /////////////////////////...........................0....................name
        TextFormFiledBlueContainerWidgetWithOutColor(
        hintText: " Enter Teacher Ph",
        title: 'Phone Number',
        validator: checkFieldPhoneNumberIsValid,
      ), //////////////////1....................number...................
       TextFormFiledBlueContainerWidgetWithOutColor(
        hintText: " Enter Employee Id",
        title: 'Employee Id',
        validator: checkFieldEmpty,
      ), ///////////////////4.......................
      Container(
                          height: 35,
                          width: 140,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: themeColorBlue),
                          child: const Center(child: TextFontWidget(text: "Create Teacher", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                       ),
     
  ];
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          BackButtonContainerWidget(),
          TextFontWidget(text: "Create Teacher", fontsize: 15)
        ],
      ),
      content: Container(
        height: 400,
        width: 300,
        child: Column(
          children: [ 
             createTeacherList[0],
               createTeacherList[1],
                 createTeacherList[2],
                   createTeacherList[3],

  
          ],
        ),
      ),
    );
  },);
}