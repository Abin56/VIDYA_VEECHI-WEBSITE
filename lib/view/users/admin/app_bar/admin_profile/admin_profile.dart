import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

adminProfileShowingFunction(BuildContext context) {
  aweSideSheet(
      context: context,
      sheetPosition: SheetPosition.right,
      backgroundColor: cWhite,
      title: 'Profile',
      showActions: false,
      cancelActionText: '',
      confirmActionText: '',
      body: ResponsiveWebSite.isMobile(context)
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/png/avathar.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            TextFontWidget(
                              text: "Name",
                              fontsize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                            TextFontWidget(
                              text: "Email Id",
                              fontsize: 15,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          alignment: Alignment.centerLeft,
                          child: const TextFontWidget(
                              text: "Employee Id", fontsize: 14)),
                      Container(
                          height: 35,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border:
                                  Border.all(color: cBlack.withOpacity(0.1))),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: TextFontWidget(text: "text", fontsize: 14),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          alignment: Alignment.centerLeft,
                          child: const TextFontWidget(
                              text: "Admin Username", fontsize: 14)),
                      Container(
                          height: 35,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border:
                                  Border.all(color: cBlack.withOpacity(0.1))),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: TextFontWidget(text: "text", fontsize: 14),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          alignment: Alignment.centerLeft,
                          child: const TextFontWidget(
                              text: "Job Title", fontsize: 14)),
                      Container(
                          height: 35,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border:
                                  Border.all(color: cBlack.withOpacity(0.1))),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: TextFontWidget(text: "text", fontsize: 14),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          alignment: Alignment.centerLeft,
                          child: const TextFontWidget(
                              text: "Phone Number", fontsize: 14)),
                      Container(
                          height: 35,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border:
                                  Border.all(color: cBlack.withOpacity(0.1))),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: TextFontWidget(text: "text", fontsize: 14),
                          ))
                    ],
                  )
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        logoutUser();
                      },
                      child: const Center(
                        child: Text('logout'),
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/png/avathar.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            TextFontWidget(
                              text: "Name",
                              fontsize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                            TextFontWidget(
                              text: "Email Id",
                              fontsize: 15,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          alignment: Alignment.centerLeft,
                          child: const TextFontWidget(
                              text: "Employee Id", fontsize: 14)),
                      Container(
                          height: 35,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border:
                                  Border.all(color: cBlack.withOpacity(0.1))),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: TextFontWidget(text: "text", fontsize: 14),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          alignment: Alignment.centerLeft,
                          child: const TextFontWidget(
                              text: "Admin Username", fontsize: 14)),
                      Container(
                          height: 35,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border:
                                  Border.all(color: cBlack.withOpacity(0.1))),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: TextFontWidget(text: "text", fontsize: 14),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          alignment: Alignment.centerLeft,
                          child: const TextFontWidget(
                              text: "Job Title", fontsize: 14)),
                      Container(
                          height: 35,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border:
                                  Border.all(color: cBlack.withOpacity(0.1))),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: TextFontWidget(text: "text", fontsize: 14),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          alignment: Alignment.centerLeft,
                          child: const TextFontWidget(
                              text: "Phone Number", fontsize: 14)),
                      Container(
                          height: 35,
                          width: 240,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              border:
                                  Border.all(color: cBlack.withOpacity(0.1))),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: TextFontWidget(text: "text", fontsize: 14),
                          ))
                    ],
                  )
                ],
              ),
            ));
}
