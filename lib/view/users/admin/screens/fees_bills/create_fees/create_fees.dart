import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/fees_N_bills_Controller/fees_bills_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

createFeesFunction(BuildContext context){
  final FeesAndBillsController feesAndBillsController = Get.put(FeesAndBillsController());
  return
   aweSideSheet(context: context, 
  sheetPosition: SheetPosition.right,
  backgroundColor: cWhite,
  footer: Container(),
  header: Container(),
  body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [ 
        const Row(
          children: [
            BackButton(),
            TextFontWidget(text: "Create Fees", fontsize: 21,fontWeight: FontWeight.w500,),
          ],
        ),
        const SizedBox(height: 10,),
         TextFormFiledBlueContainerWidget(
          hintText: " Enter Fee Amount",
          title: 'Fee Amount',
        ),
         TextFormFiledBlueContainerWidget(
          hintText: " Enter Fee Type",
          title: 'Fee Type',
        ),
        Container(
          height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
         // color: cWhite,
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
                  items: const ['All Class', 'VII','X'],
                  onChanged: (value) {
                  },
                ),
              ),
            ],
          ),
        ), 
        GestureDetector(
          onTap: () {
              feesAndBillsController.ontapCreateFees.value = true;
          },
          child: Container(
            height: 40,
            width: 140,
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
            color: adminePrimayColor),
            alignment: Alignment.center,
            child: const TextFontWidget(text: "Create", fontsize: 15,fontWeight: FontWeight.w500,color: cWhite,),
          ),
        )
    
      ],
    ),
  )
  );
}