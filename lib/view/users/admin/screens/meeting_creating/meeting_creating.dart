import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

class MeetingCreatingPage extends StatelessWidget {
  const MeetingCreatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> meetingListWidget = [
      const TextFontWidget(
        text: "SCHEDULE MEETING",
        fontsize: 19,
        fontWeight: FontWeight.bold,
      ), //...0

      const ContainerTitleWidget(text: "Topic"), //////.....1

      TextFormFiledContainerWidget(
          hintText: "Enter Topic Here",
          title: '',
          width: ResponsiveWebSite.isMobile(context)
              ? 210
              : ResponsiveWebSite.isTablet(context)
                  ? 300
                  : 450), //////////topic field......2

      const ContainerTitleWidget(text: "When"), //////.3

      TextFormFiledContainerWidget(
          hintText: "Date",
          title: '',
          width: ResponsiveWebSite.isTablet(context) ? 140 : 210), /////...4
      TextFormFiledContainerWidget(
          hintText: "Time",
          title: '',
          width: ResponsiveWebSite.isTablet(context) ? 140 : 210), /////....5

      const ContainerTitleWidget(text: "Category"), /////////.........6

      TextFormFiledContainerWidget(
          hintText: "Enter Category Here",
          title: '',
          width: ResponsiveWebSite.isMobile(context)
              ? 210
              : ResponsiveWebSite.isTablet(context)
                  ? 300
                  : 450), //////.....7
      const ContainerTitleWidget(text: "Members"), ////////////////,,,8

      TextFormFiledContainerWidget(
          hintText: "Expected Members",
          title: '',
          width: ResponsiveWebSite.isTablet(context) ? 140 : 210), ///////9

      TextFormFiledContainerWidget(
          hintText: "Special Guest",
          title: '',
          width: ResponsiveWebSite.isTablet(context) ? 140 : 210), //////////10

      const ContainerTitleWidget(text: "Venue"), ///////////////////11

      TextFormFiledContainerWidget(
          hintText: "Enter Venue Here",
          title: '',
          width: ResponsiveWebSite.isMobile(context)
              ? 210
              : ResponsiveWebSite.isTablet(context)
                  ? 300
                  : 450),//////////////////12
      Container(
        height: 35,
        width: 120,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: themeColorBlue),
        child: const Center(
            child: TextFontWidget(
          text: "Submit",
          fontsize: 15,
          fontWeight: FontWeight.bold,
          color: cWhite,
        )),
      ), ////////////////////////13
    ];
    //////////////////////////////////////////////////////////////////////////////
    ///...............................................................///
    /////////////////////////////////////////////////////////////////
    //  final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: ResponsiveWebSite.isMobile(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 550,
                    width: 280,
                    // decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey.withOpacity(0.2)),
                    // boxShadow: const [BoxShadow(blurRadius: 2)],
                    color: cWhite,
                    //  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        meetingListWidget[
                            0], ///////////////////////heading.........................0
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: meetingListWidget[
                                    1] //////////////////topic.........................1,
                                ),
                            meetingListWidget[2] //////////topic field
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: meetingListWidget[3]),
                            Column(
                              children: [
                                meetingListWidget[4], //////......date
                                meetingListWidget[5], /////....time
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: meetingListWidget[6] ////.....category
                                ),
                            meetingListWidget[
                                7] //////////////..........................categroy field
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: meetingListWidget[
                                    8] ///////////////////............members
                                ),
                            Column(
                              children: [
                                meetingListWidget[
                                    9], ////////...........expected members
                                meetingListWidget[10], /////////special guest
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: meetingListWidget[11], ///////venu
                            ),
                            meetingListWidget[12] /////////////////venu field
                          ],
                        ),
                       
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child:
                                  meetingListWidget[13] /////////////////button
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ) ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(65.0),
                  child: Container(
                    height: 400,
                    width: ResponsiveWebSite.isTablet(context) ? 400 : 600,
                    // decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey.withOpacity(0.2)),
                    // boxShadow: const [BoxShadow(blurRadius: 2)],
                    color: cWhite,
                    //  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        meetingListWidget[
                            0], ///////////////////////heading.........................0
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: meetingListWidget[
                                    1] //////////////////topic.........................1
                                ),
                            meetingListWidget[2] //////////topic field
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: meetingListWidget[3] ///////.......whwn
                                ),
                            meetingListWidget[4], //////......date
                            meetingListWidget[5], /////....time
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: meetingListWidget[6] ////.....category
                                ),
                            meetingListWidget[7] /////////....category field
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: meetingListWidget[
                                    8] ///////////////////............member
                                ),
                            meetingListWidget[
                                9], ////////...........expected members
                            meetingListWidget[10], /////////special guest
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: meetingListWidget[11], ///////venu
                            ),
                            meetingListWidget[12] /////////////////venu field
                          ],
                        ),
                              
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child:
                                  meetingListWidget[13] /////////////////button
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class ContainerTitleWidget extends StatelessWidget {
  final String text;
  const ContainerTitleWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: ResponsiveWebSite.isDesktop(context) ? 90 : 70,
      color: cWhite,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: TextFontWidget(
          text: text,
          fontsize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
