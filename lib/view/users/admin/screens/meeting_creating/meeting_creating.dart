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
     const TextFontWidget(text: "SCHEDULE MEETING", fontsize: 19,fontWeight: FontWeight.bold,),//...0
      const ContainerTitleWidget(text: "Topic")//////.....1
   ];
  //  final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:ResponsiveWebSite.isMobile(context)?Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 550,
              width:280,
              // decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey.withOpacity(0.2)),
              // boxShadow: const [BoxShadow(blurRadius: 2)],
              color: cWhite,
            //  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                 meetingListWidget[0],///////////////////////heading.........................0
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                      Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: meetingListWidget[1]//////////////////topic.........................1,
                    ),
                    TextFormFiledContainerWidget(hintText: "Enter Topic Here", title: '', width:ResponsiveWebSite.isMobile(context)? 210: ResponsiveWebSite.isTablet(context)?300: 450)
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                     const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ContainerTitleWidget(text: "When")
                    ),Column(children: [
                    TextFormFiledContainerWidget(hintText: "Date", title: '', width:  210),
                     TextFormFiledContainerWidget(hintText: "Time", title: '', width:  210),
                      ],),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                     const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child:ContainerTitleWidget(text: "Category")
                    ),
                    TextFormFiledContainerWidget(hintText: "Enter Category Here", title: '', width: 210)
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                     const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ContainerTitleWidget(text: "Members")
                    ),
                    Column(children: [
                    TextFormFiledContainerWidget(hintText: "Expected Members", title: '', width:  210),
                     TextFormFiledContainerWidget(hintText: "Special Guest", title: '', width:  210),
                      ],),
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ContainerTitleWidget(text: "Venue")
                    ),
                    TextFormFiledContainerWidget(hintText: "Enter Venue Here", title: '', width: 210)
                  ],),
                  // //  const SizedBox(
                  // //             width: double.infinity,
                  // //              child: CheckedBoxMeetingWidget(
                  // //             //   adminMeetingController: adminMeetingController,
                  // //            ),
                  // //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.all(15.0),
                  //             child: SubmitButtonMeetinWidget(
                  //               size: size/2,
                  //               // adminMeetingController: adminMeetingController,
                  //               // schoolId: schoolId,
                  //             ),
                  //           ),
                   Align(alignment: Alignment.center,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Container(
                          height: 35,
                          width: 120,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: themeColorBlue),
                          child: const Center(child: TextFontWidget(text: "Submit", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                       ),
                     ),
                   )
                ],
              ),
            ),
          ),
        ],
      )////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       :Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(65.0),
            child: Container(
              height: 400,
              width:ResponsiveWebSite.isTablet(context)?400: 600,
              // decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey.withOpacity(0.2)),
              // boxShadow: const [BoxShadow(blurRadius: 2)],
              color: cWhite,
            //  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                 meetingListWidget[0],///////////////////////heading.........................0
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                      Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: meetingListWidget[1]//////////////////topic.........................1
                    ),
                    TextFormFiledContainerWidget(hintText: "Enter Topic Here", title: '', width: ResponsiveWebSite.isTablet(context)?300: 450)
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                     const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ContainerTitleWidget(text: "When")
                    ),
                    TextFormFiledContainerWidget(hintText: "Date", title: '', width: ResponsiveWebSite.isTablet(context)?140: 210),
                     TextFormFiledContainerWidget(hintText: "Time", title: '', width: ResponsiveWebSite.isTablet(context)?140: 210),
                      
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                     const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ContainerTitleWidget(text: "Category")
                    ),
                    TextFormFiledContainerWidget(hintText: "Enter Category Here", title: '', width: ResponsiveWebSite.isTablet(context)?300: 450)
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                     const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ContainerTitleWidget(text: "Members")
                    ),
                    TextFormFiledContainerWidget(hintText: "Expected Members", title: '', width: ResponsiveWebSite.isTablet(context)?140: 210),
                     TextFormFiledContainerWidget(hintText: "Special Guest", title: '', width: ResponsiveWebSite.isTablet(context)?140: 210),
                      
                  ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ContainerTitleWidget(text: "Venue")
                    ),
                    TextFormFiledContainerWidget(hintText: "Enter Venue Here", title: '', width: ResponsiveWebSite.isTablet(context)?300: 450)
                  ],),
                  // //  const SizedBox(
                  // //             width: double.infinity,
                  // //              child: CheckedBoxMeetingWidget(
                  // //             //   adminMeetingController: adminMeetingController,
                  // //            ),
                  // //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.all(15.0),
                  //             child: SubmitButtonMeetinWidget(
                  //               size: size/2,
                  //               // adminMeetingController: adminMeetingController,
                  //               // schoolId: schoolId,
                  //             ),
                  //           ),
                   Align(alignment: Alignment.center,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Container(
                          height: 35,
                          width: 120,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: themeColorBlue),
                          child: const Center(child: TextFontWidget(text: "Submit", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                       ),
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
      width: ResponsiveWebSite.isDesktop(context)?90: 70,
      color: cWhite,
      child:  Padding(
        padding: const EdgeInsets.only(top: 5),
        child: TextFontWidget(text: text, fontsize: 15,fontWeight: FontWeight.w500,),
      ),
    );
  }
}