import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/achievements/achievements.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/notice/noticebutton_container.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

import '../../../../../constants/colors/app_colors.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> textformWidget = [
      
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 500,
          title: 'Event Name',
          hintText: 'Event Name',/////////////////////////////////////////0
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 500,
          hintText: 'Date',
          title: 'Date',
        ),
      ), ////////////////////////////////////////////////////////1
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 500,
          title: 'Venue',
          hintText: 'Venue',
        ),
      ), ///////////////////////////////////////////////2
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 500,
          title: 'Description',
          hintText: 'Description',
        ),
      ), ////////////////////////////////////3
       Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 500,
          title: 'Signed by',
          hintText: 'Signed by',
        ),
      ), ////////////////////////////////////4
      
      const Expanded(
          child: SizedBox(
        height: 40,
        width: 400,
      ))
    ];
    return  Container(
      child: Column(children: [  Padding(
                padding:  const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                 
                    GestureDetector(
                        onTap: () {
                          {
                            aweSideSheet(
                                context: context,
                                sheetPosition: SheetPosition.right,
                                title: "Events",
                                body: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height: 800,
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child:
                                                  //  Obx(() {
                                                  // return
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                             
                                                    textformWidget[0],
                                                    textformWidget[1],
                                                    textformWidget[2],

                                                    textformWidget[3],
                                                    textformWidget[4],

                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10,
                                                              bottom: 10),
                                                      child:
                                                          Center(
                                                            child: NoticeButtonContainerWidget(
                                                                                                                    text: 'Submit',
                                                                                                                    width: 300,
                                                                                                                    height: 50,
                                                                                                                    fontSize: 18,
                                                                                                                    onTap: () {},
                                                                                                                    color: AppColors.darkBlueColor
                                                              ,
                                                                                                                  ),
                                                          ),
                                                    )
                                                    // }),
                                                  ]),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                showCloseButton: false,
                                footer: Container());
                          }
                        },
                        child: const RouteSelectedTextContainer(
                            width: 140, title: 'Create')),
                  ],
                ),
              ),],),
    );
  }
}