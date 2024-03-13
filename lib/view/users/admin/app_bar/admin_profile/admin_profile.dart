import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

adminProfileShowingFunction(BuildContext context) {
  final adminprofileListWidget = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        'assets/png/avathar.png',
        width: 110,
        height: 110,
      ),
    ), //////////////....................0
    const Column(
      children: [
        TextFontWidget(
          text: "ABIN JOHN",
          fontsize: 19,
          fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis,
        ),
        TextFontWidget(
          text: "abinjohn8089@gmail.com",
          fontsize: 15,
          fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis,
        )
      ],
    ), ///////////////////...............1
    Container(
        height: 35,
        width: 120,
        alignment: Alignment.centerLeft,
        child: const TextFontWidget(
            text: "Employee Id", fontsize: 14)), //,,,,,,,,,...........2
    Container(
        height: 35,
        width: 240,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: cBlack.withOpacity(0.2))),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: TextFontWidget(text: "0256324", fontsize: 14),
        )), //.......,..............................................3
    Container(
        height: 35,
        width: 120,
        alignment: Alignment.centerLeft,
        child: const TextFontWidget(
            text: "Admin Username", fontsize: 14)), //.............4
    Container(
        height: 35,
        width: 240,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: cBlack.withOpacity(0.2))),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: TextFontWidget(text: "Abin John", fontsize: 14,overflow: TextOverflow.ellipsis,),
        )), //.................................5
    Container(
        height: 35,
        width: 120,
        alignment: Alignment.centerLeft,
        child: const TextFontWidget(text: "Job Title", fontsize: 14)), ///,,.......6
    Container(
        height: 35,
        width: 240,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: cBlack.withOpacity(0.2))),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: TextFontWidget(text: "Principal", fontsize: 14),
        )), //....................7
    Container(
        height: 35,
        width: 120,
        alignment: Alignment.centerLeft,
        child: const TextFontWidget(
            text: "Phone Number", fontsize: 14)), //............8
    Container(
        height: 35,
        width: 240,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: cBlack.withOpacity(0.2))),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: TextFontWidget(text: "8089262564", fontsize: 14),
        )) ///...................9
  ];
  aweSideSheet(
      context: context,
      sheetPosition: SheetPosition.right,
      backgroundColor: cWhite,
      header: Container(),
      showActions: false,
      footer: Container(),
      body: ResponsiveWebSite.isMobile(context)
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      BackButton(),
                      TextFontWidget(
                        text: "Profile",
                        fontsize: 17,
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      adminprofileListWidget[
                          0], /////////////,,,,,,,,,,,,,,,,,image
                      Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: adminprofileListWidget[ 1] //////////////.............name and email id
                          )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      adminprofileListWidget[2], ///employe id
                      adminprofileListWidget[3], //......
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      adminprofileListWidget[4], /////admin user name
                      adminprofileListWidget[5], //......
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      adminprofileListWidget[6], //.......job title
                      adminprofileListWidget[7] //,,,,,
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      adminprofileListWidget[ 8], /////...................phone no
                      adminprofileListWidget[9], //////............
                    ],
                  )
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      BackButton(),
                      TextFontWidget(
                        text: "Profile",
                        fontsize: 17,
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        logoutUser();
                      },
                      child: const Center(
                        child: Text('logout'),
                      )),
                  Row(
                    children: [
                      adminprofileListWidget[
                          0], /////////////,,,,,,,,,,,,,,,,,image
                      Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: adminprofileListWidget[ 1] //,,...............name and email id
                          )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      adminprofileListWidget[2],

                      ///employe id
                      adminprofileListWidget[3], //......
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      adminprofileListWidget[4], /////admin user name
                      adminprofileListWidget[5], //......
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      adminprofileListWidget[6], //.......job
                      adminprofileListWidget[7]
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      adminprofileListWidget[8] ,/////...................phone no
                      adminprofileListWidget[9]
                    ],
                  )
                ],
              ),
            ));
}
