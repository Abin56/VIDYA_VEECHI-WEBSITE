import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

class BillsCreationPage extends StatelessWidget {
  const BillsCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: ResponsiveWebSite.isMobile(context)? 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 800,
            width: 600,
            color: cWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ const TextFontWidget(text: "Bills", fontsize: 18),
              Column(
                children: [
                  TextFormFiledContainerWidget(hintText: "Enter Category Name", title: "Category Name", width: 280),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
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
                       TextFormFiledContainerWidget(hintText: "Enter Invoice Number", title: "Invoice Number", width: 280),
                    
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    TextFormFiledContainerWidget(hintText: "Name Of Student", title: "Name Of Student", width: 280),
                    TextFormFiledContainerWidget(hintText: "Student Id", title: "Student Id", width: 280),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    TextFormFiledContainerWidget(hintText: "Enter Amount", title: "Amount", width: 280),
                     TextFormFiledContainerWidget(hintText: "Enter Due Date", title: "Due Date", width: 280),
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
                    child: const Center(child: TextFontWidget(text: "Create", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                 ),
               )
              ],
            ),
          ),
        ],
      )
      : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: 800,
            color: cWhite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ const TextFontWidget(text: "Bills", fontsize: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormFiledContainerWidget(hintText: "Enter Category Name", title: "Category Name", width: 320),
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
                     TextFormFiledContainerWidget(hintText: "Enter Invoice Number", title: "Invoice Number", width: 320),
                  
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormFiledContainerWidget(hintText: "Name Of Student", title: "Name Of Student", width: 320),
                  TextFormFiledContainerWidget(hintText: "Student Id", title: "Student Id", width: 320),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormFiledContainerWidget(hintText: "Enter Amount", title: "Amount", width: 320),
                   TextFormFiledContainerWidget(hintText: "Enter Due Date", title: "Due Date", width: 320),
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
                          child: const Center(child: TextFontWidget(text: "Create", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
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