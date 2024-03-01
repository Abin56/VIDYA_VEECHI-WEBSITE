import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

class FeesCreatePage extends StatelessWidget {
   const FeesCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: ResponsiveWebSite.isMobile(context)? 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 800,
            width: 500,
            color: cWhite,
            child: Column(
              children: [ const TextFontWidget(text: "Fees Create", fontsize: 17),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    TextFormFiledContainerWidget(hintText: "Enter Fee Name", title: "Fee Name", width: 280),
                    Column(
                      children: [
                //          DropdownSearch<CategoryModel>(
                //   asyncItems: (String item) =>
                //      _feesCreateController.fetchAllCategories(),
                //   onChanged: (value) {
                //     _feesCreateController.selectedCategory = value;
                //   },
                  
                //   itemAsString: (CategoryModel u) => u.categoryName,
                //   dropdownDecoratorProps: const DropDownDecoratorProps(
                //     dropdownSearchDecoration: InputDecoration(
                //       labelText: "Select Category",
                //       border: OutlineInputBorder(),
                //     ),
                //   ),
                // ),
                       TextFormFiledContainerWidget(hintText: "Select Category", title: "Select Category", width: 280,),
                    //      Obx(() => Row(
                    //   children: [
                    //     Checkbox(
                    //       value: ''.isEmpty,
                    //      // value: _feesCreateController.isClassShow.value,
                    //       onChanged: (value) {
                    //         if (value != null) {
                    //        //   _feesCreateController.isClassShow.value = value;
                    //         }
                    //       },
                    //     ),
                      const Text("Specific Class Only")
                    //   ],
                    // )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    TextFormFiledContainerWidget(hintText: "Created Date", title: "Created Date", width: 280),
                    TextFormFiledContainerWidget(hintText: "Due Date", title: "Due Date", width: 280),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    TextFormFiledContainerWidget(hintText: "Enter Fee Period", title: "Fee Period", width: 280),
                    TextFormFiledContainerWidget(hintText: "Enter Amount", title: "Amount", width: 280),
                  ],
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Container(
                    height: 35,
                    width: 120,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: cBlue),
                    child: const Center(child: TextFontWidget(text: "Submit", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                 ),
               )
              ],
            ),
          ),
        ],
      )
      :Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: 800,
            color: cWhite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ const TextFontWidget(text: "Fees Create", fontsize: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormFiledContainerWidget(hintText: "Enter Fee Name", title: "Fee Name", width: 320),
                  Column(
                    children: [
              //          DropdownSearch<CategoryModel>(
              //   asyncItems: (String item) =>
              //      _feesCreateController.fetchAllCategories(),
              //   onChanged: (value) {
              //     _feesCreateController.selectedCategory = value;
              //   },
                
              //   itemAsString: (CategoryModel u) => u.categoryName,
              //   dropdownDecoratorProps: const DropDownDecoratorProps(
              //     dropdownSearchDecoration: InputDecoration(
              //       labelText: "Select Category",
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              // ),
                     TextFormFiledContainerWidget(hintText: "Select Category", title: "Select Category", width: 320),
                  //      Obx(() => Row(
                  //   children: [
                  //     Checkbox(
                  //       value: ''.isEmpty,
                  //      // value: _feesCreateController.isClassShow.value,
                  //       onChanged: (value) {
                  //         if (value != null) {
                  //        //   _feesCreateController.isClassShow.value = value;
                  //         }
                  //       },
                  //     ),
                    const Text("Specific Class Only")
                  //   ],
                  // )),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormFiledContainerWidget(hintText: "Created Date", title: "Created Date", width: 320),
                  TextFormFiledContainerWidget(hintText: "Due Date", title: "Due Date", width: 320),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormFiledContainerWidget(hintText: "Enter Fee Period", title: "Fee Period", width: 320),
                  TextFormFiledContainerWidget(hintText: "Enter Amount", title: "Amount", width: 320),
                ],
              ),
               Align(alignment: Alignment.center,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Container(
                          height: 35,
                          width: 120,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: cBlue),
                          child: const Center(child: TextFontWidget(text: "Submit", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                       ),
                     ),
                   )
              ],
            ),
          ),
        ],
      ),
    );
  }
}