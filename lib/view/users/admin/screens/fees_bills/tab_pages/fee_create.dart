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
    final feesCreationList = [
      TextFontWidget(
          text: "Fees Create",
          fontsize: ResponsiveWebSite.isMobile(context)
              ? 17
              : 21), /////////..........heading.......0
      TextFormFiledContainerWidget(
          hintText: "Enter Fee Name",
          title: "Fee Name",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), /////////......fee.....1
      TextFormFiledContainerWidget(
        hintText: "Select Category",
        title: "Select Category",
        width: ResponsiveWebSite.isMobile(context) ? 280 : 320,
      ), /////////////..........2.
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
      const Text("Specific Class Only"), ////////////tick box...............3
      //   ],
      // )),

      TextFormFiledContainerWidget(
          hintText: "Created Date",
          title: "Created Date",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), /////////////////4...........

      TextFormFiledContainerWidget(
          hintText: "Due Date",
          title: "Due Date",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), /////////////...........5
      TextFormFiledContainerWidget(
          hintText: "Enter Fee Period",
          title: "Fee Period",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), ///////////////////6....................

      TextFormFiledContainerWidget(
          hintText: "Enter Amount",
          title: "Amount",
          width: ResponsiveWebSite.isMobile(context)
              ? 280
              : 320), ////////////..........7
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
              text: "Submit",
              fontsize: 15,
              fontWeight: FontWeight.bold,
              color: cWhite,
            )),
          ),
        ),
      ) ///////////////////////.....................8
    ];
    return SingleChildScrollView(
      child: ResponsiveWebSite.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 800,
                  width: 500,
                  color: cWhite,
                  child: Column(
                    children: [
                      feesCreationList[0],
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            feesCreationList[
                                1], /////////////////////...........................enter fee name
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
                                feesCreationList[
                                    2], ////////////////////////////////.....................select categroy
                                feesCreationList[3],
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            feesCreationList[4],

                            ///4...
                            feesCreationList[
                                5], /////////////5......................
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            feesCreationList[
                                6], //////////////////////6............fees period
                            feesCreationList[
                                7], ///////////////////....................amount
                          ],
                        ),
                      ),
                      feesCreationList[8] /////////////////submit.....8
                      //  Padding(
                      //    padding: const EdgeInsets.only(top: 20),
                      //    child: Container(
                      //       height: 35,
                      //       width: 120,
                      //       decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                      //       color: themeColorBlue),
                      //       child: const Center(child: TextFontWidget(text: "Submit", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
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
                      feesCreationList[0],
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          feesCreationList[
                              1], /////////////////////...........................enter fee name
                          Column(
                            children: [
                              feesCreationList[
                                  2], ////////////////////////////////.....................select categroy
                              feesCreationList[
                                  3], /////////////////////////////////////tick box
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          feesCreationList[4],
                          feesCreationList[
                              5], /////////////5......................
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          feesCreationList[
                              6], //////////////////////6............fees period
                          feesCreationList[
                              7], ///////////////////....................amount
                        ],
                      ),
                      feesCreationList[8] /////////////////submit.....8
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
