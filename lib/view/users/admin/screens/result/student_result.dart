import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/result/result_listing_table.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class StudentExamResult extends StatelessWidget {
  const StudentExamResult({super.key});

  @override
  Widget build(BuildContext context) {
    final resultListWidget = [
      const TextFontWidget(
        text: 'Exam Results',
        fontsize: 18,
        fontWeight: FontWeight.bold,
      ), /////////////////////////////////....................0
      Container(
        height: 80,
        width: ResponsiveWebSite.isTablet(context)?230: 250,
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
                items: const ['Class X', 'Class XI'],
              ),
            ),
          ],
        ),
      ), //////////////////...........1
      Container(
        height: 80,
        width:  ResponsiveWebSite.isTablet(context)?230: 250,
        // color: cWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFontWidget(text: 'Exam*', fontsize: 12.5),
            const SizedBox(
              height: 05,
            ),
            SizedBox(
              height: 40,
              child: DropdownSearch(
                items: const ['Public Exam', 'Test Exam'],
              ),
            ),
          ],
        ),
      ), //////////////////////...........2
    ];
    return Container(
      color: screenContainerbackgroundColor,
      height: 760,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 25),
            child: TextFontWidget(
              text: 'Class Wise Student Results',
              fontsize: 18,
              fontWeight: FontWeight.bold,
            ),
          ), /////////////////////////////................common
          // const Padding(
          //   padding: EdgeInsets.only(left: 25, top: 25, right: 05),
          //   child: RouteSelectedTextContainer(title: 'All Results'),
          // ),
          ResponsiveWebSite.isMobile(context)
              ? Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
            padding: EdgeInsets.only(left: 15, top: 20,bottom: 5, right: 05),
            child: RouteSelectedTextContainer(title: 'All Results'),
          ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Expanded(
                        //   flex: 1,
                        //   child: resultListWidget[0]),/////////////////heading
                        SizedBox(
                          height: 170,
                          child: Column(
                            children: [
                              resultListWidget[1], /////////////////////////class
                              resultListWidget[2] ///////////////////////....exam
                            ],
                          ),
                        )
                      ],
                    ),
                ],
              ) ///////////////////////////.....................mobile
              : Row(
                  children: [
                    const Padding(
            padding: EdgeInsets.only(left: 25, top: 25, right: 05),
            child: RouteSelectedTextContainer(title: 'All Results'),
          ),
                    Spacer(),
                    // Expanded(flex: 1, child: Padding(
                    //   padding: const EdgeInsets.only(left: 20),
                    //   child: resultListWidget[0],
                    // )),/////////////////heading
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(child: resultListWidget[1])),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: resultListWidget[2]),
                  ],
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: cWhite,
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  // ResponsiveWebSite.isMobile(context)
                  //     ? Row(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Expanded(
                  //             flex: 1,
                  //             child: resultListWidget[0]),/////////////////heading
                  //           Expanded(
                  //             flex: 1,
                  //             child: SizedBox(
                  //               height: 170,
                  //               child: Column(
                  //                 children: [
                  //                   resultListWidget[1],/////////////////////////class
                  //                   resultListWidget[2]///////////////////////....exam
                  //                 ],
                  //               ),
                  //             ),
                  //           )
                  //         ],
                  //       )///////////////////////////.....................mobile
                  //     : Row(
                  //         children: [
                  //           Expanded(flex: 1, child: Padding(
                  //             padding: const EdgeInsets.only(left: 20),
                  //             child: resultListWidget[0],
                  //           )),/////////////////heading
                  //           Expanded(
                  //             flex: 1,
                  //             child: Padding(
                  //                 padding: const EdgeInsets.all(8.0),
                  //                 child: resultListWidget[1]),///////////////////.....class
                  //           ),
                  //           Expanded(
                  //             flex: 1,
                  //             child: Padding(
                  //                 padding: const EdgeInsets.all(8.0),
                  //                 child: resultListWidget[2]),///////......exam
                  //           ),
                  //         ],
                  //       ),
                  const AllResultStatusListView() //////////..............common
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
