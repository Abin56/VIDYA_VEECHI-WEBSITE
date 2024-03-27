import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/fees_N_bills_Controller/fees_bills_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/data_container.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';

class ClassWiseFeesStatus extends StatelessWidget {
  final FeesAndBillsController feesAndBillsController =
      Get.put(FeesAndBillsController());
  ClassWiseFeesStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: screenContainerbackgroundColor,
        height: 1000,
        width: 1200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: TextFontWidget(
                text: 'Fee Details',
                fontsize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 08,
                      right: 05,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        feesAndBillsController.ontapviewclasswiseFees.value = false;
                      },
                      child: const RouteNonSelectedTextContainer(title: 'Home'),
                    ),
                  ),
                  const RouteSelectedTextContainer(
                      width: 140, title: 'Fees Deatils'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: cWhite,
                width: double.infinity,
                height: ResponsiveWebSite.isMobile(context) ? 800 : 500,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: Container(
                        color: cWhite,
                        height: 40,
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:
                                    CatrgoryTableHeaderWidget(headerTitle: 'No')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 1,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Month')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 5,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Subjects')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 1,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Fees Required')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 1,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Fess Collected')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 1,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Fess pending')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 1,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Status')),
                            SizedBox(
                              width: 02,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: SizedBox(
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: ClassWiseFeesDataListContainer(
                                        index: index),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    height: 02,
                                  );
                                },
                                itemCount: 100)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassWiseFeesDataListContainer extends StatelessWidget {
  final int index;
  const ClassWiseFeesDataListContainer({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
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
            width: 02,
          ),
          Expanded(
            flex: 1,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                index: index,
                headerTitle: "January"),
          ), //................................................. Months
          const SizedBox(
            width: 02,
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: index % 2 == 0
                  ? const Color.fromARGB(255, 246, 246, 246)
                  : Colors.blue[50],
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: cBlack.withOpacity(0.2))),
                      width: 50,
                      child: const Center(
                        child: TextFontWidget(
                          text: " English",
                          fontsize: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 03,
                    );
                  },
                  itemCount: 08),
            ),
          ), //........................................... Subjects
          const SizedBox(
            width: 02,
          ),
          Expanded(
            flex: 1,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                index: index,
                headerTitle: "2000 /-"),
          ), // ................................... Fees Required
          const SizedBox(
            width: 02,
          ),
          Expanded(
            flex: 1,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                index: index,
                headerTitle: "2000 /-"),
          ), //....................................... Fess Collectes
          const SizedBox(
            width: 02,
          ),
          Expanded(
            flex: 1,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                index: index,
                headerTitle: "0 /-"),
          ), //....................................... Fess Pending
          const SizedBox(
            width: 02,
          ),

          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                  child: Image.asset(
                    'webassets/png/active.png',
                  ),
                ),
                const TextFontWidget(
                  text: " Full Paid",
                  fontsize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ), //............................. Status [Full paid or Pending]
        ],
      ),
    );
  }
}
