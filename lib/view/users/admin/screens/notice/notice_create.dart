import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/achievements/achievements.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/notice/noticebutton_container.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

import '../../../../../constants/colors/app_colors.dart';

class CreateNotice extends StatefulWidget {
  const CreateNotice({super.key});

  @override
  State<CreateNotice> createState() => _CreateNoticeState();
}

class _CreateNoticeState extends State<CreateNotice> {
  bool? valuefirst = true;
  @override
  Widget build(BuildContext context) {
    List<Widget> textformWidget = [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
            child: TextFormFiledBlueContainerWidget(
              width: 500,
              title: 'Heading',
              hintText: 'Heading', /////////////////////////////////////////0
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
            child: TextFormFiledBlueContainerWidget(
              width: 500,
              title: 'Custom Content',
              hintText:
                  'Custom Content', /////////////////////////////////////////1
            ),
          ),
        ],
      ),

      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: 500,
          hintText: 'Published Date',
          title: 'Published Date',
        ),
      ), ////////////////////////////////////////////////////////2
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: 500,
          title: 'Subject',
          hintText: 'Subject',
        ),
      ), ///////////////////////////////////////////////3
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: 500,
          title: 'Date of occation',
          hintText: 'Date of occation',
        ),
      ), ////////////////////////////////////4
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: 500,
          title: 'Venue',
          hintText: 'Venue',
        ),
      ), ////////////////////////////////////5
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: 500,
          title: 'Cheif guest',
          hintText: 'Cheif guest',
        ),
      ), ////////////////////////////////////6
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidgetAchievement(
          width: 500,
          title: 'Signed by',
          hintText: 'Signed by',
        ),
      ), ////////////////////////////////////7

      const Expanded(
          child: SizedBox(
        height: 40,
        width: 400,
      ))
    ];
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      {
                        aweSideSheet(
                            context: context,
                            sheetPosition: SheetPosition.right,
                            title: "Notice",
                            body: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 900,
                                      width: 500,
                                      margin: const EdgeInsets.only(top: 10),
                                      child:
                                          //  Obx(() {
                                          // return
                                          Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Checkbox(
                                                value: valuefirst,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    valuefirst = value ??
                                                        false; // Update the value of valuefirst
                                                  });
                                                },
                                              ),
                                              GooglePoppinsWidgets(
                                                text: 'Custom Content',
                                                fontsize: 14,
                                              ),
                                            ],
                                          ), //////////////////////////////////////////////////0
                                          Row(
                                            children: [
                                              Expanded(
                                                child: GooglePoppinsWidgets(
                                                  text:
                                                      '(If you select this, the other contents will disappear)',
                                                  fontsize: 11,
                                                ),
                                              )
                                            ],
                                          ), /////////////////////////////////////1
                                          if (valuefirst != null && valuefirst!)
                                            Column(
                                              children: [
                                                textformWidget[0],
                                                textformWidget[1],
                                              ],
                                            )
                                          else
                                            Column(
                                              children: [
                                                textformWidget[0],
                                                textformWidget[2],
                                                textformWidget[3],
                                                textformWidget[4],
                                                textformWidget[5],
                                                textformWidget[6],
                                              ],
                                            ),

                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: Center(
                                              child:
                                                  NoticeButtonContainerWidget(
                                                text: 'Submit',
                                                width: 300,
                                                height: 50,
                                                fontSize: 18,
                                                onTap: () {},
                                                color: AppColors.darkBlueColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
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
          ),
        ],
      ),
    );
  }
}
