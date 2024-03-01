


import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_monstre.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/tab_pages/Schl_fees_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/tab_pages/bills_create.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/tab_pages/cls_fee_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/fees_bills/tab_pages/fee_create.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class FeesAndBillsPage extends StatelessWidget {
  const FeesAndBillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height:ResponsiveWebSite.isMobile(context)?800: 500,
      color: cWhite,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: cBlack),
            title: Row(
              children: [
                //  IconButtonBackWidget(color: cBlack),
                const SizedBox(
                  width: 20,
                ),
                GoogleMonstserratWidgets(text: "Fees", fontsize: 15),
              ],
            ),
            backgroundColor: cWhite,
            bottom:  TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    child: ResponsiveWebSite.isMobile(context)? 
                    const TextFontWidget(text: "Fee Create", fontsize: 12,fontWeight: FontWeight.w500,)
                    : const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FeesAndBillsWidget(
                        text: 'Fees Create',
                      ),
                    ),
                  ),
                  Tab(
                    child: ResponsiveWebSite.isMobile(context)? 
                    const TextFontWidget(text: "Fee Status", fontsize: 12,fontWeight: FontWeight.w500,)
                    :const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FeesAndBillsWidget(
                        text: 'Fees Status',
                      ),
                    ),
                  ),
                  Tab(
                    child: ResponsiveWebSite.isMobile(context)? 
                    const TextFontWidget(text: "Class Fees", fontsize: 12,fontWeight: FontWeight.w500,)
                    :
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FeesAndBillsWidget(
                        text: 'Class Fees Status',
                      ),
                    ),
                  ),
                  Tab(
                    child: ResponsiveWebSite.isMobile(context)? 
                    const TextFontWidget(text: "Bills", fontsize: 12,fontWeight: FontWeight.w500,)
                    :const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FeesAndBillsWidget(text: 'Bills'),
                    ),
                  ),
                ]),
          ),
              
          //  appBar: AppBar(backgroundColor: adminePrimayColor),
          body: const SafeArea(
            child: TabBarView(
              children: [
                FeesCreatePage(),
                SchoolFeesStatuesPage(),
                ClassFeesStatusPage(),
                BillsCreationPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class FeesAndBillsWidget extends StatelessWidget {
  final String text;
  const FeesAndBillsWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 45,
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [BoxShadow(blurRadius: 1)],
      color: cWhite),
      child: Center(child: TextFontWidget(text: text, fontsize: 15)),
    );
  }
}