import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:vidyaveechi_website/controller/fees_N_bills_Controller/fees_bills_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/create_fees/class_wise_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/create_fees/create_fees.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/data_container.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/button_container/button_container.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class CreatedFeesStatus extends StatelessWidget {
  final FeesAndBillsController feesAndBillsController =
      Get.put(FeesAndBillsController());
  CreatedFeesStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => feesAndBillsController.ontapviewclasswiseFees.value == true
        ? ClassWiseFeesStatus()
        : Container(
            color: screenContainerbackgroundColor,
            height:ResponsiveWebSite.isMobile(context)?800: 700,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const Padding(
                          padding: EdgeInsets.only(left: 25, top: 20),
                          child: TextFontWidget(
                            text: 'All Fees & Bills List ',
                            fontsize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, right: 25),
                  child: ResponsiveWebSite.isMobile(context)?
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Padding(
                       padding: EdgeInsets.only(left: 05, right: 05,bottom: 5),
                       child: RouteSelectedTextContainer(
                           title: 'All Fees & Bills'),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 10),
                       child: Container(
                         width: 250,
                         height: ResponsiveWebSite.isMobile(context) ? 80 : 80,
                         //color: cWhite,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             const TextFontWidget(
                                 text: 'Class *', fontsize: 12.5),
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
                     GestureDetector(
                       onTap: () {
                         createFeesFunction(context);
                       },
                       child: ButtonContainerWidget(
                           curving: 30,
                           colorindex: 0,
                           height: 40,
                           width: 180,
                           child: const Center(
                             child: TextFontWidget(
                               text: 'Create Fee',
                               fontsize: 14,
                               fontWeight: FontWeight.bold,
                               color: cWhite,
                             ),
                           )),
                     )
                   ],): Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 05, right: 05),
                        child: RouteSelectedTextContainer(
                            title: 'All Fees & Bills'),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: 250,
                          height: ResponsiveWebSite.isMobile(context) ? 80 : 80,
                          //color: cWhite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextFontWidget(
                                  text: 'Class *', fontsize: 12.5),
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
                      GestureDetector(
                        onTap: () {
                          createFeesFunction(context);
                        },
                        child: ButtonContainerWidget(
                            curving: 30,
                            colorindex: 0,
                            height: 40,
                            width: 180,
                            child: const Center(
                              child: TextFontWidget(
                                text: 'Create Fee',
                                fontsize: 14,
                                fontWeight: FontWeight.bold,
                                color: cWhite,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
                  child: Container(
                      width: double.infinity,
                      height: ResponsiveWebSite.isMobile(context) ? 500 : 500,
                      color: cWhite,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 8,left: 8,right: 8),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: CatrgoryTableHeaderWidget(
                                        headerTitle: 'No')),
                                SizedBox(
                                  width: 01,
                                ),
                                Expanded(
                                    flex: 3,
                                    child: CatrgoryTableHeaderWidget(
                                        headerTitle: 'No. of Class')),
                                SizedBox(
                                  width: 01,
                                ),
                                Expanded(
                                    flex: 2,
                                    child: CatrgoryTableHeaderWidget(
                                        headerTitle: 'Class Name')),
                                SizedBox(
                                  width: 01,
                                ),
                                Expanded(
                                    flex: 3,
                                    child: CatrgoryTableHeaderWidget(
                                        headerTitle: 'Fee Amount')),
                                SizedBox(
                                  width: 01,
                                ),
                                Expanded(
                                    flex: 2,
                                    child: CatrgoryTableHeaderWidget(
                                        headerTitle: 'Collected')),
                                SizedBox(
                                  width: 01,
                                ),
                                Expanded(
                                    flex: 2,
                                    child: CatrgoryTableHeaderWidget(
                                        headerTitle: 'Pending')),
                                SizedBox(
                                  width: 01,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8,left: 8,right: 8),
                              child: SizedBox(
                                 // width: 1200,
                                  child: ListView.separated(
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            feesAndBillsController
                                                .ontapviewclasswiseFees
                                                .value = true;
                                          },
                                          child: AllClassessFeesDataList(
                                            // data: data,
                                            index: index,
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return const SizedBox(
                                          height: 02,
                                        );
                                      },
                                      itemCount: 10)),
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ));
  }
}

class AllClassessFeesDataList extends StatelessWidget {
  final int index;
  const AllClassessFeesDataList({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                // width: 150,
                index: index,
                headerTitle: '${index + 1}'), //....................No
          ),
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 3,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                index: index,
                headerTitle: "    10"),
          ),
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 2,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                // width: 150,
                index: index,
                headerTitle: '   XII'),
          ), // ...................................Total Number
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 3,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                // width: 150,
                index: index,
                headerTitle: '   2500'),
          ), //....................................... fee amount
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 2,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                // width: 150,
                index: index,
                headerTitle: '   1000'),
          ), /////////////...............................collected
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 2,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                // width: 150,
                index: index,
                headerTitle: '   1000'),
          ),
        ],
      ),
    );
  }
}
