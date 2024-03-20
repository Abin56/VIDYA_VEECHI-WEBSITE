// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vidyaveechi_website/controller/notice_controller/notice_controller.dart';
// import 'package:vidyaveechi_website/view/colors/colors.dart';
// import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
// import 'package:vidyaveechi_website/view/users/admin/screens/notice/noticebutton_container.dart';
// import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
// import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

// class NoticePage extends StatefulWidget {
//   const NoticePage({super.key});

//   @override
//   State<NoticePage> createState() => _NoticePageState();
// }

// class _NoticePageState extends State<NoticePage> {
//   bool? valuefirst = false;
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> textformWidget = [
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           hintText: 'Custom Content',
//           title: 'Custom content',
//         ),
//       ), ///////////////////////////////////////////////////////////////////////0
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           hintText: 'Custom Heading',
//           title: 'Heading',
//         ),
//       ), /////////////////////////////////////////////////////////////////1
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           hintText: 'Heading',
//           title: 'Heading',
//         ),
//       ), /////////////////////////////////////////////////////2
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           hintText: 'Publish Date',
//           title: 'Publish Date',
//         ),
//       ), /////////////////////////////////////////////////3
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           hintText: 'Heading',
//           title: 'Heading',
//         ),
//       ), ////////////////////////////////////////////////////////4
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           title: 'Subjects',
//           hintText: 'Subjects',
//         ),
//       ), ///////////////////////////////////////////////5
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           title: 'Date of Occation',
//           hintText: 'Date of Occation',
//         ),
//       ), ////////////////////////////////////6
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           title: 'Venue',
//           hintText: 'Venue',
//         ),
//       ), /////////////////////////////////////////7
//       Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           hintText: 'Chief Guest ',
//           title: 'Chief Guest ',
//         ),
//       ), ///////////////////////////////////////////////////////////8
//        Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           hintText: 'Signed by ',
//           title: 'Signed by ',
//         ),
//       ), //////////////////////////////////////////////////////////9
//        Padding(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: TextFormFiledBlueContainerWidget(
//           width: ResponsiveWebSite.isMobile(context)?double.infinity:300,
//           hintText: ' ',
//           title: ' ',
//         ),
//       ),
//     ];
//     final NoticeController noticeController = Get.put(NoticeController());
//     return Container(
//         height: 1000,
//         color: screenContainerbackgroundColor,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 10),
//           child: SingleChildScrollView(
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Column(
//                     children: [
//                       GooglePoppinsWidgets(
//                         text: 'Add Notice',
//                         fontsize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       ResponsiveWebSite.isMobile(context)
//                           ? Column(
//                               children: [
//                                 Padding(
//                                   padding:
//                                       const EdgeInsets.only(right: 30, top: 10),
//                                   child: Container(
//                                     decoration: const BoxDecoration(
//                                         color: cWhite
//                                         // border: Border.all(color:Colors.grey
//                                         // )
//                                         ),
//                                     height: 820,
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Checkbox(
//                                               value: valuefirst,
//                                               onChanged: (bool? value) {
//                                                 setState(() {
//                                                   valuefirst = value;
//                                                 });
//                                               },
//                                             ),
//                                             GooglePoppinsWidgets(
//                                               text: 'Custom Content',
//                                               fontsize: 14,
//                                             ),
//                                           ],
//                                         ),
//                                         Row(
//                                           children: [
//                                             Expanded(
//                                               child: GooglePoppinsWidgets(
//                                                   text:
//                                                       '(If you select this, the other contents will disappear)',
//                                                   fontsize: 11),
//                                             )
//                                           ],
//                                         ),
//                                         if (valuefirst == true)
//                                           Column(
//                                             children: [
//                                               textformWidget[0],
//                                               if (valuefirst = true)
//                                                 textformWidget[1],
//                                             ],
//                                           )
//                                         else
//                                           Column(
//                                             children: [
//                                               textformWidget[2],
//                                               textformWidget[3],
//                                               textformWidget[4],
//                                               textformWidget[5],
//                                               textformWidget[6],
//                                               textformWidget[7],
//                                               textformWidget[8],
//                                               textformWidget[9],
//                                             ],
//                                           ),
//                                         const UploadsignContainerwidget(
//                                           title: 'Upload Sign',
//                                         ),
//                                         const UploadsignContainerwidget(
//                                           title: 'Upload Notice',
//                                         ),
//                                         NoticeButtonContainerWidget(
//                                             text: 'Submit',
//                                             width: 300,
//                                             height: 50,
//                                             fontSize: 18,
//                                             onTap: () {}, color: Colors.blue.withOpacity(0.3),)
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             )
//                           : SingleChildScrollView(
//                               child: Row(
//                               children: [
//                                 Expanded(
//                                     child: Padding(
//                                   padding:
//                                       const EdgeInsets.only(right: 30, top: 10),
//                                   child: Container(
//                                     decoration: const BoxDecoration(
//                                         color: cWhite
//                                         // border: Border.all(color:Colors.grey
//                                         // )
//                                         ),
//                                     height: 820,
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Checkbox(
//                                               value: valuefirst,
//                                               onChanged: (bool? value) {
//                                                 setState(() {
//                                                   valuefirst = value;
//                                                 });
//                                               },
//                                             ),
//                                             GooglePoppinsWidgets(
//                                                 text: 'Custom Content',
//                                                 fontsize: 14),
//                                             Expanded(
//                                               child: GooglePoppinsWidgets(
//                                                   text:
//                                                       '(If you select this, the other contents will disappear)',
//                                                   fontsize: 11),
//                                             )
//                                           ],
//                                         ),
//                                         if (valuefirst == true)
//                                           Row(
//                                             children: [
//                                               Expanded(child: textformWidget[0]),
//                                               if (valuefirst = true)
//                                                 Expanded(child: textformWidget[1]),
//                                             ],
//                                           )
//                                         else
//                                           Column(
//                                             children: [
//                                               Row(
//                                                 children: [
//                                                   Expanded(
//                                                     child: textformWidget[2],
//                                                   ),
//                                                   Expanded(
//                                                     child: textformWidget[3],
//                                                   ),
//                                                   Expanded(
//                                                     child: textformWidget[4],
//                                                   ),
//                                                 ],
//                                               ),
//                                               Row(
//                                                 children: [
//                                                   Expanded(
//                                                     child: textformWidget[5],
//                                                   ),
//                                                   Expanded(
//                                                     child: textformWidget[6],
//                                                   ),
//                                                   Expanded(
//                                                     child: textformWidget[7],
//                                                   ),
//                                                 ],
//                                               ),
//                                               Row(
//                                                 children: [
//                                                   Expanded(child: textformWidget[8]),
//                                                    Expanded(child: textformWidget[9]),
//                                                     const Expanded(child:SizedBox(height: 40,width:300 ,))
//                                                 ],
//                                               ),
                                            
//                                             ],
//                                           ),
//                                         const UploadsignContainerwidget(
//                                           title: 'Upload Sign',
//                                         ),
//                                         const UploadsignContainerwidget(
//                                           title: 'Upload Notice',
//                                         ),
//                                         NoticeButtonContainerWidget(
//                                             text: 'Submit',
//                                             width: 300,
//                                             height: 50,
//                                             fontSize: 18,
//                                             onTap: () {}, color: Colors.purple.withOpacity(0.3),)
//                                       ],
//                                     ),
//                                   ),
//                                 )),
//                               ],
//                             )),
//                     ],
//                   ),
//                 ]),
//           ),
//         ));
//   }
// }

// class UploadsignContainerwidget extends StatelessWidget {
//   const UploadsignContainerwidget({
//     super.key,
//     required this.title,
//   });
//   final String title;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Center(
//           child: Container(
//         width: 150,
//         height: 40,
//         decoration: BoxDecoration(
//             color: themeColorBlue, borderRadius: BorderRadius.circular(10)),
//         child: Center(
//             child: GooglePoppinsWidgets(
//           text: title,
//           fontsize: 15,
//           color: cWhite,
//         )),
//       )),
//     );
//   }
// }

// // ignore_for_file: file_names, must_be_immutable




import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/notice/notice_create.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class NoticeEditRemove extends StatefulWidget {
  const NoticeEditRemove({
    Key? key,
    // required this.schoolID
  }) : super(key: key);

  // String schoolID;

  @override
  State<NoticeEditRemove> createState() => _NoticeEditRemoveState();
}

class _NoticeEditRemoveState extends State<NoticeEditRemove> {
  TextEditingController headingController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController venueController = TextEditingController();
  TextEditingController signedByController = TextEditingController();
 bool? valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: screenContainerbackgroundColor,
      height: 800,
      width: 1000,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: GooglePoppinsWidgets(
              text: 'Notice ',
              fontsize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CreateNotice(),
          Expanded(
            child: GridView.count(
              crossAxisCount: ResponsiveWebSite.isMobile(context) ? 2 :  ResponsiveWebSite.isTablet(context)?3:4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: List.generate(20, (index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cWhite,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: GooglePoppinsWidgets(
                            text: 'Notice ',
                            fontsize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: GooglePoppinsWidgets(
                            text: 'School egdhfvehyfgvehrgferfgyhft',
                            fontsize: 14,
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              // Expanded(
                              //   child: Padding(
                              //     padding: const EdgeInsets.only(left: 10),
                              //     child: MaterialButton(
                              //       onPressed: () {customShowDilogBox(
                              //     context: context,
                              //     title: 'Edit',
                              //     children: [
                              //       TextFormFiledBlueContainerWidgetEvent(
                              //           hintText: 'Event',
                              //           title: 'Event'),
                              //       TextFormFiledBlueContainerWidgetEvent(
                              //           hintText: 'Date',
                              //           title: 'Date'),
                              //       TextFormFiledBlueContainerWidgetEvent(
                              //           hintText: 'Venue', title: 'Venue'),
                              //       TextFormFiledBlueContainerWidgetEvent(
                              //           hintText: 'Description',
                              //           title: 'Description'),
                              //           TextFormFiledBlueContainerWidgetEvent(
                              //           hintText: 'Signed by',
                              //           title: 'Signed by')
                                      
                              //     ],
                              //     doyouwantActionButton: true,
                              //     actiontext: 'Update');},
                              //       color: cBlue,
                              //       child: GooglePoppinsWidgets(
                              //         text: 'Edit',
                              //         fontsize: 13,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // Expanded(
                              //   child: Padding(
                              //     padding: const EdgeInsets.only(
                              //       left: 10,
                              //       right: 10,
                              //     ),
                              //     child: MaterialButton(
                              //       onPressed: () { customShowDilogBox(
                              //     context: context,
                              //     title: 'Delete',
                              //     children: [
                              //       GooglePoppinsWidgets(
                              //           text: 'Are you sure to want delete',
                              //           fontsize:
                              //               ResponsiveWebSite.isMobile(context)
                              //                   ? 12
                              //                   : 15)
                              //     ],
                              //     doyouwantActionButton: true);},
                              //       color: cred,
                              //       child: GooglePoppinsWidgets(
                              //         text: 'Delete',
                              //         fontsize: 13,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}


class TextFormFiledBlueContainerWidgetEvent extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final Widget? widget;
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  String? Function(String?)? validator;
  Function()? onTap;
  TextInputType? keyboardType;
  TextFormFiledBlueContainerWidgetEvent({
    this.widget,
    required this.hintText,
    required this.title,
    this.keyboardType,
    this.controller,
    this.autofillHints,
    this.onChanged,
    this.validator,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TextFontWidget(text: '$title *', fontsize: 12.5),
              widget == null ? const SizedBox() : widget!,
            ],
          ),
          const SizedBox(
            height: 05,
          ),
          Container(
            height: 60,width: 500,
            color: screenContainerbackgroundColor,
            child: Center(
              child: TextFormField(
                maxLines: 5,
                onChanged: onChanged,
                autofillHints: autofillHints,
                onTap: onTap,
                validator: validator,
                keyboardType: keyboardType,
                controller: controller,
                decoration: InputDecoration(
                  errorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                        color: Colors.red,
                      )),
                  focusedErrorBorder: const OutlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                      color: Colors.red,
                    ),
                  ),
                  // contentPadding: const EdgeInsets.all(8.0),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 0.4)),
                  hintStyle: const TextStyle(fontSize: 13),
                  hintText: hintText,
                  focusedBorder: const OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(width: 1, color: Colors.green),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

