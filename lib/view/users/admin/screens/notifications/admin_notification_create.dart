import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class AdminNotificationCreate extends StatelessWidget {
  const AdminNotificationCreate({super.key});

  @override
  Widget build(BuildContext context) {
    final adminSendNotificationWidgets = [
      Text(
        "Send Notifications",
        style: TextStyle(
            fontSize: ResponsiveWebSite.isMobile(context) ? 15 : 17,
            fontWeight: FontWeight.bold),
      ), ////////////////////////////..................0
      Container(
          width: ResponsiveWebSite.isMobile(context) ? 60 : 80,
          child: Text(
            "Category",
            style: TextStyle(
                fontSize: ResponsiveWebSite.isMobile(context) ? 13 : 15,
                fontWeight: FontWeight.bold),
          )), //////////////////////////......................1
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownSearch(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
              hintText: " Please Select Category",
              prefixIcon: Icon(
                Icons.groups,
                size: 20,
              ),
              labelStyle: TextStyle(
                fontSize: ResponsiveWebSite.isMobile(context) ? 13 : 15,
              ),
              contentPadding: EdgeInsets.only(top: 5, bottom: 5),
            )),
            items: const [
              'All Users',
              'All Teachers',
              'All Parents',
              'All Students'
            ],
          ),
        ],
      ), ///////////////////////////////////////..........................2

      Container(
        width: ResponsiveWebSite.isMobile(context) ? 60 : 80,
        child: Text(
          "Content",
          style: TextStyle(
              fontSize: ResponsiveWebSite.isMobile(context) ? 13 : 15,
              fontWeight: FontWeight.bold),
        ),
      ), ////////////////////..................3
      Container(
        width: ResponsiveWebSite.isMobile(context) ? 80 : 150,
        child: TextField(
          maxLines: 10,
          style: const TextStyle(fontSize: 14),
          decoration: const InputDecoration(
            // fillColor: Colors.white,
            border: OutlineInputBorder(),
            hintText: ' Enter Messages',

            contentPadding: EdgeInsets.only(top: 5, bottom: 5),
          ),
        ),
      ), //////////////////////................4

      Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: adminePrimayColor
          ),
          onPressed: () {
            // Validate returns true if the form is valid, or false otherwise.
            // if (_formKey.currentState!.validate()) {
            //   // If the form is valid, display a snackbar. In the real world,
            //   // you'd often call a server or save the information in a database.
            //   // ScaffoldMessenger.of(context).showSnackBar(
            //   //   const SnackBar(content: Text('Processing Data')),
            //   // );
            // }
          },
          child: Text(
            'Send',
            style: TextStyle(
                fontSize: ResponsiveWebSite.isMobile(context) ? 13 : 15,
                fontWeight: FontWeight.bold,
                color: cWhite),
          ),
        ),
      ), //////////////////////////////////............................5
    ];

    return SafeArea(
        child: SingleChildScrollView(
      child: ResponsiveWebSite.isMobile(context)
          ? Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: double.infinity,
                    height: 50,
                    color: screenContainerbackgroundColor,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: adminSendNotificationWidgets[
                            0] ///////////////////....................Send Notifications
                        )),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 20, right: 10),
                          child: adminSendNotificationWidgets[
                              1] ////////////////............Category
                          ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                              width: 200,
                              color: cWhite,
                              child: adminSendNotificationWidgets[
                                  2] ///////////////////////...............Category select
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: cWhite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20, right: 10),
                              child: adminSendNotificationWidgets[
                                  3], /////////////////.....................Content
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: adminSendNotificationWidgets[
                                      4] ///////////////////.....................Content type
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 15, top: 25),
                    child: adminSendNotificationWidgets[
                        5] ///////////////////////.................submit button
                    ),
              ],
            )
          : ////////////////////////////////////////////////////............................................mobile view

          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 29),
                  child: Container(
                      width: double.infinity,
                      height:48,
                      color: screenContainerbackgroundColor,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 25),
                          child: adminSendNotificationWidgets[
                              0] ///////////////////....................Send Notifications
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 20, right: 10),
                            child: adminSendNotificationWidgets[
                                1] ////////////////............Category
                            ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                                width: 200,
                                color: cWhite,
                                child: adminSendNotificationWidgets[
                                    2] ///////////////////////...............Category select
                                ),
                          ),
                        ),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: cWhite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20, right: 10),
                              child: adminSendNotificationWidgets[
                                  3], /////////////////.....................Content
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: adminSendNotificationWidgets[
                                      4] ///////////////////..................Content Text
                                  ),
                            ),
                            Expanded(flex: 1, child: Container()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 15, top: 30),
                    child: Container(
                      child: adminSendNotificationWidgets[5],
                    ) ///////////////////////.................submit button
                    ),
              ],
            ),
    ) /////////////////////////////////////////////////////////.......................................web view

        );
  }
}
