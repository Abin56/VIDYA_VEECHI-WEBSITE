import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/model/admin_model.dart/admin_model.dart';
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
        width: ResponsiveWebSite.isMobile(context) ? 90 : 110,
        height: ResponsiveWebSite.isMobile(context) ? 90 : 110,
      ),
    ), //////////////....................0
    Column(
      children: [
        TextFontWidget(
          text: "ABIN JOHN",
          fontsize: ResponsiveWebSite.isMobile(context) ? 17 : 19,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        TextFontWidget(
          text: "abinjohn8089@gmail.com",
          fontsize: ResponsiveWebSite.isMobile(context) ? 13 : 15,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        )
      ],
    ), ///////////////////...............1
    Container(
        height: 35,
        width: ResponsiveWebSite.isMobile(context) ? 100 : 120,
        alignment: Alignment.centerLeft,
        child: TextFontWidget(
          text: "Employee Id",
          fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
        )), //,,,,,,,,,...........2
    Container(
        height: 35,
        width: ResponsiveWebSite.isMobile(context) ? 170 : 220,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: cBlack.withOpacity(0.2))),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: TextFontWidget(
            text: "0256324",
            fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
          ),
        )), //.......,..............................................3
    Container(
        height: 35,
        width: ResponsiveWebSite.isMobile(context) ? 100 : 120,
        alignment: Alignment.centerLeft,
        child: TextFontWidget(
          text: "Gender",
          fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
        )), //.............4
    Container(
        height: 35,
        width: ResponsiveWebSite.isMobile(context) ? 170 : 220,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: cBlack.withOpacity(0.2))),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: TextFontWidget(
            text: "Male",
            fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
            overflow: TextOverflow.ellipsis,
          ),
        )), //.................................5
    Container(
        height: 35,
        width: ResponsiveWebSite.isMobile(context) ? 100 : 120,
        alignment: Alignment.centerLeft,
        child: TextFontWidget(
          text: "Email",
          fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
        )),

    ///,,.......6
    Container(
        height: 35,
        width: ResponsiveWebSite.isMobile(context) ? 170 : 220,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: cBlack.withOpacity(0.2))),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: TextFontWidget(
            text: "Principal@gmail.com",
            fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
          ),
        )), //....................7
    Container(
        height: 35,
        width: ResponsiveWebSite.isMobile(context) ? 100 : 120,
        alignment: Alignment.centerLeft,
        child: TextFontWidget(
          text: "Phone Number",
          fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
        )), //............8
    Container(
        height: 35,
        width: ResponsiveWebSite.isMobile(context) ? 170 : 220,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: cBlack.withOpacity(0.2))),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: TextFontWidget(
            text: "8089262564",
            fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
          ),
        )),

    ///...................9
    Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWebSite.isMobile(context) ? 1 : 3,
      ),
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 216, 232, 233),
            borderRadius: BorderRadius.circular(5)),
        child: Icon(
          Icons.edit,
          size: 15,
          color: Color.fromARGB(255, 3, 194, 9),
        ),
      ),
    ), /////////////////////////////,,,,,,,Edit button..................10
  ];
  aweSideSheet(
      context: context,
      sheetPosition: SheetPosition.right,
      backgroundColor: cWhite,
      header: Container(),
      showActions: false,
      footer: Container(),
      body: ResponsiveWebSite.isMobile(context)
          ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        BackButton(),
                        TextFontWidget(
                          text: "Profile",
                          fontsize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        Icon(Icons.logout)
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
                            child: adminprofileListWidget[
                                1] //////////////.............name and email id
                            )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        adminprofileListWidget[2],

                        ///employe id
                        Row(
                          children: [
                            Expanded(child: adminprofileListWidget[3]),
                            adminprofileListWidget[10],
                          ],
                        ), //////////

                        //......
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        adminprofileListWidget[4], /////admin user name
                        Row(
                          children: [
                            Expanded(child: adminprofileListWidget[5]),
                            adminprofileListWidget[10],
                          ],
                        ), //......
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        adminprofileListWidget[6], //.......job title
                        Row(
                          children: [
                            Expanded(child: adminprofileListWidget[7]),
                            adminprofileListWidget[10],
                          ],
                        ), //,,,,,
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        adminprofileListWidget[
                            8], /////...................phone no
                        Row(
                          children: [
                            Expanded(child: adminprofileListWidget[9]),
                            adminprofileListWidget[10],
                          ],
                        ), //////............
                      ],
                    )
                  ],
                ),
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(),
                        TextFontWidget(
                          text: "Profile",
                          fontsize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.logout),
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
                            child: adminprofileListWidget[
                                1] //,,...............name and email id
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
                        adminprofileListWidget[10],
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        adminprofileListWidget[4], /////admin user name
                        adminprofileListWidget[5],
                        adminprofileListWidget[10], //......
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        adminprofileListWidget[6], //.......job
                        adminprofileListWidget[7],
                        adminprofileListWidget[10],
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        adminprofileListWidget[
                            8], /////...................phone no
                        adminprofileListWidget[9],
                        adminprofileListWidget[10],
                      ],
                    )
                  ],
                ),
              ),
            ));
}
