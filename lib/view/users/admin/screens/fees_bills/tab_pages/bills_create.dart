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
    final billsCreationList = [
      TextFontWidget(
          text: "Bills",
          fontsize: ResponsiveWebSite.isMobile(context)
              ? 18
              : 21), ////////////..0....heading

      TextFormFiledContainerWidget(
          hintText: "Enter Category Name",
          title: "Category Name",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), //////..1......category
      TextFormFiledContainerWidget(
          hintText: "Enter Invoice Number",
          title: "Invoice Number",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), /////////////......2.....invoice number entr
      TextFormFiledContainerWidget(
          hintText: "Name Of Student",
          title: "Name Of Student",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), //////////////name of student..........3
      TextFormFiledContainerWidget(
          hintText: "Student Id",
          title: "Student Id",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), /////////////////std id enter.............4
      TextFormFiledContainerWidget(
          hintText: "Enter Amount",
          title: "Amount",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), ///////////////enter amount....................5
      TextFormFiledContainerWidget(
          hintText: "Enter Due Date",
          title: "Due Date",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), /////////////////////date...6
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 35,
            width: 120,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: themeColorBlue),
            child: const Center(
                child: TextFontWidget(
              text: "Create",
              fontsize: 15,
              fontWeight: FontWeight.bold,
              color: cWhite,
            )),
          ),
        ),
      ) /////////////////////7......................button
    ];
    return SingleChildScrollView(
      child: ResponsiveWebSite.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 800,
                  width: 600,
                  color: cWhite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      billsCreationList[0],
                      Column(
                        children: [
                          billsCreationList[
                              1], /////..............................enter category name
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
                                billsCreationList[
                                    2], /////////////////////////////...............invoice
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            billsCreationList[
                                3], ////////////////////////...name of student enter
                            billsCreationList[
                                4], ///////////////////////////.....student id
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            billsCreationList[5], ///////amount.....
                            billsCreationList[6], ////////////////date
                          ],
                        ),
                      ),
                      billsCreationList[7], /////////////////////button
                      //  Padding(
                      //    padding: const EdgeInsets.only(top: 20),
                      //    child: Container(
                      //       height: 35,
                      //       width: 120,
                      //       decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                      //       color: cBlue),
                      //       child: const Center(child: TextFontWidget(text: "Create", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                      //    ),
                      //  )
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
                    children: [
                      billsCreationList[0],
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          billsCreationList[
                              1], /////..............................enter category name
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
                              billsCreationList[
                                  2], /////////////////////////////...............invoice
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          billsCreationList[
                              3], ////////////////////////...name of student enter
                          billsCreationList[
                              4], ///////////////////////////.....student id
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          billsCreationList[5], ///////amount.....
                          billsCreationList[6], ////////////////date
                        ],
                      ),
                      billsCreationList[7] ////////////////button
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
