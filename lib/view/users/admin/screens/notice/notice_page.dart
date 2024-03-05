import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/notice_controller/notice_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/notice/noticebutton_container.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({super.key});

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  bool? valuefirst = false;
  @override
  Widget build(BuildContext context) {
    List<Widget> textformWidget = [
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          hintText: 'Custom Content',
          title: 'Custom content',
        ),
      ), ///////////////////////////////////////////////////////////////////////0
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          hintText: 'Custom Heading',
          title: 'Heading',
        ),
      ), /////////////////////////////////////////////////////////////////1
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          hintText: 'Heading',
          title: 'Heading',
        ),
      ), /////////////////////////////////////////////////////2
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          hintText: 'Publish Date',
          title: 'Publish Date',
        ),
      ), /////////////////////////////////////////////////3
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          hintText: 'Heading',
          title: 'Heading',
        ),
      ), ////////////////////////////////////////////////////////4
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          title: 'Subjects',
          hintText: 'Subjects',
        ),
      ), ///////////////////////////////////////////////5
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          title: 'Date of Occation',
          hintText: 'Date of Occation',
        ),
      ), ////////////////////////////////////6
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          title: 'Venue',
          hintText: 'Venue',
        ),
      ), /////////////////////////////////////////7
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          hintText: 'Chief Guest ',
          title: 'Chief Guest ',
        ),
      ), ///////////////////////////////////////////////////////////8
       Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          hintText: 'Signed by ',
          title: 'Signed by ',
        ),
      ), //////////////////////////////////////////////////////////9
       Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget(
          width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
          hintText: ' ',
          title: ' ',
        ),
      ),
    ];
    final NoticeController noticeController = Get.put(NoticeController());
    return Container(
        height: 1000,
        color: screenContainerbackgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      GooglePoppinsWidgets(
                        text: 'Add Notice',
                        fontsize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ResponsiveWebSite.isMobile(context)
                          ? Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 30, top: 10),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: cWhite
                                        // border: Border.all(color:Colors.grey
                                        // )
                                        ),
                                    height: 820,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Checkbox(
                                              value: valuefirst,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  valuefirst = value;
                                                });
                                              },
                                            ),
                                            GooglePoppinsWidgets(
                                              text: 'Custom Content',
                                              fontsize: 14,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: GooglePoppinsWidgets(
                                                  text:
                                                      '(If you select this, the other contents will disappear)',
                                                  fontsize: 11),
                                            )
                                          ],
                                        ),
                                        if (valuefirst == true)
                                          Column(
                                            children: [
                                              textformWidget[0],
                                              if (valuefirst = true)
                                                textformWidget[1],
                                            ],
                                          )
                                        else
                                          Column(
                                            children: [
                                              textformWidget[2],
                                              textformWidget[3],
                                              textformWidget[4],
                                              textformWidget[5],
                                              textformWidget[6],
                                              textformWidget[7],
                                              textformWidget[8],
                                              textformWidget[9],
                                            ],
                                          ),
                                        const UploadsignContainerwidget(
                                          title: 'Upload Sign',
                                        ),
                                        const UploadsignContainerwidget(
                                          title: 'Upload Notice',
                                        ),
                                        NoticeButtonContainerWidget(
                                            text: 'Submit',
                                            width: 300,
                                            height: 50,
                                            fontSize: 18,
                                            onTap: () {}, color: Colors.blue.withOpacity(0.3),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SingleChildScrollView(
                              child: Row(
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 30, top: 10),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: cWhite
                                        // border: Border.all(color:Colors.grey
                                        // )
                                        ),
                                    height: 820,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Checkbox(
                                              value: valuefirst,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  valuefirst = value;
                                                });
                                              },
                                            ),
                                            GooglePoppinsWidgets(
                                                text: 'Custom Content',
                                                fontsize: 14),
                                            Expanded(
                                              child: GooglePoppinsWidgets(
                                                  text:
                                                      '(If you select this, the other contents will disappear)',
                                                  fontsize: 11),
                                            )
                                          ],
                                        ),
                                        if (valuefirst == true)
                                          Row(
                                            children: [
                                              Expanded(child: textformWidget[0]),
                                              if (valuefirst = true)
                                                Expanded(child: textformWidget[1]),
                                            ],
                                          )
                                        else
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: textformWidget[2],
                                                  ),
                                                  Expanded(
                                                    child: textformWidget[3],
                                                  ),
                                                  Expanded(
                                                    child: textformWidget[4],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: textformWidget[5],
                                                  ),
                                                  Expanded(
                                                    child: textformWidget[6],
                                                  ),
                                                  Expanded(
                                                    child: textformWidget[7],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(child: textformWidget[8]),
                                                   Expanded(child: textformWidget[9]),
                                                    const Expanded(child:SizedBox(height: 40,width:300 ,))
                                                ],
                                              ),
                                            
                                            ],
                                          ),
                                        const UploadsignContainerwidget(
                                          title: 'Upload Sign',
                                        ),
                                        const UploadsignContainerwidget(
                                          title: 'Upload Notice',
                                        ),
                                        NoticeButtonContainerWidget(
                                            text: 'Submit',
                                            width: 300,
                                            height: 50,
                                            fontSize: 18,
                                            onTap: () {}, color: Colors.purple.withOpacity(0.3),)
                                      ],
                                    ),
                                  ),
                                )),
                              ],
                            )),
                    ],
                  ),
                ]),
          ),
        ));
  }
}

class UploadsignContainerwidget extends StatelessWidget {
  const UploadsignContainerwidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
            color: themeColorBlue, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: GooglePoppinsWidgets(
          text: title,
          fontsize: 15,
          color: cWhite,
        )),
      )),
    );
  }
}

// ignore_for_file: file_names, must_be_immutable

