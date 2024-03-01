// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:vidyaveechi_website/view/colors/colors.dart';
// import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
// import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

// class AddAttendancePage extends StatelessWidget {
//   const AddAttendancePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  SingleChildScrollView(
//       child: Column(
//         children: [
//           GooglePoppinsWidgets(text: "ADD ATTENDANCE", fontsize: 23,fontWeight: FontWeight.bold,),
//           //  SizedBox(
//           //   width: double.infinity,
//           //   height: 500,
//           //   child: Image.asset("assets/images/admin_add_attendance.jpg",fit: BoxFit.cover,),
//           //  ),
//             Padding(
//               padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
//               child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                      // Image.asset("assets/images/computer.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
//                       GooglePoppinsWidgets(text: ResponsiveWebSite.isMobile(context)?"SELECT CLASS": "  SELECT CLASS",
//                       fontsize: ResponsiveWebSite.isMobile(context)?12:15,fontWeight: FontWeight.w500,)
//                     ],
//                   ),
//                   DropdownSearch<Map<String, dynamic>>(
//                           // asyncItems: (String filter) =>
//                           //     _addAttendanceController.fetchAllClass(),
//                           // itemAsString: (Map<String, dynamic> u) => u["className"],
//                           // onChanged: (Map<String, dynamic>? data) =>
//                           //     _addAttendanceController.selectClassData = data ?? {},
//                           dropdownDecoratorProps: const DropDownDecoratorProps(
//                             dropdownSearchDecoration: InputDecoration(
//                                 labelText: "Select Class",
//                                 border: OutlineInputBorder()),
//                           ),
//                         ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: SizedBox(width: double.infinity,height: 90,
//               child: Row(

//                 children: [
//                   Expanded(child:
//                    Padding(
//                      padding:  EdgeInsets.only(left: ResponsiveWebSite.isMobile(context)?7: 15,right: ResponsiveWebSite.isMobile(context)?7: 15),
//                      child: Container(height: 90,
//                      color: cWhite,
//                      child:Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: [
//                         Row(
//                           children: [
//                          //   Image.asset("assets/images/month.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
//                             GooglePoppinsWidgets(text: ResponsiveWebSite.isMobile(context)?"SELECT MONTH": "  SELECT MONTH",
//                              fontsize: ResponsiveWebSite.isMobile(context)?12:15,fontWeight: FontWeight.w500,)
//                           ],
//                         ),
//                          DropdownSearch<Map<String, dynamic>>(
//                                            // asyncItems: (String filter) =>
//                                            //     _addAttendanceController.fetchAllMonths(),
//                                            // itemAsString: (Map<String, dynamic> u) => u["id"],
//                                            // onChanged: (Map<String, dynamic>? data) =>
//                                            //     _addAttendanceController.selectMonthId =
//                                            //         data?["id"] ?? "",
//                                            dropdownDecoratorProps: const DropDownDecoratorProps(
//                           dropdownSearchDecoration: InputDecoration(
//                               labelText: "Select Month",
//                               border: OutlineInputBorder()),
//                                            ),
//                                          ),
//                        ],
//                      ) ,),
//                    )),
//                Expanded(
//                 child: Padding(
//                   padding:  EdgeInsets.only(left: ResponsiveWebSite.isMobile(context)?7: 15,right: ResponsiveWebSite.isMobile(context)?7: 15),
//                   child: Container(
//                     height: 90,
//                     color: cWhite,
//                     child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                           //  Image.asset("assets/images/next-week.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
//                             GooglePoppinsWidgets(text: ResponsiveWebSite.isMobile(context)?"SELECT DATE": "  SELECT DATE",
//                              fontsize: ResponsiveWebSite.isMobile(context)?12:15,fontWeight: FontWeight.w500,)
//                           ],
//                         ),
//                         TextFormField(
//                         decoration: const InputDecoration(
//                             border: OutlineInputBorder(), hintText: "Select Date"),
//                         readOnly: true,
//                         // controller: _addAttendanceController.dateTextController,
//                         // onTap: () async {
//                         //   if (_addAttendanceController.selectClassData.isNotEmpty ||
//                         //       _addAttendanceController.selectMonthId.isNotEmpty) {
//                         //     await _addAttendanceController.callDatePicker(
//                         //         context: context);
//                         //     await _addAttendanceController.fetchAllStudentsData();
//                         //   }
//                         // },
//                                           ),
//                       ],
//                     ),),
//                 ))],),),
//             ),

//              Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: SizedBox(width: double.infinity,height: 90,
//               child: Row(
//                 children: [
//                   Expanded(child:
//                    Padding(
//                      padding:  EdgeInsets.only(left: ResponsiveWebSite.isMobile(context)?7: 15,right: ResponsiveWebSite.isMobile(context)?7: 15),
//                      child: Container(height: 90,
//                      color: cWhite,
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: [
//                         Row(
//                           children: [
//                           //  Image.asset("assets/images/period.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
//                             GooglePoppinsWidgets(text: ResponsiveWebSite.isMobile(context)?"SELECTPERIOD" : "  SELECT PERIOD",
//                             fontsize: ResponsiveWebSite.isMobile(context)?12:15,fontWeight: FontWeight.w500,)
//                           ],
//                         ),
//                          DropdownSearch<int>(
//                                           // items: _addAttendanceController.periodLists,
//                                            itemAsString: (int u) => u.toString(),
//                                            onChanged: (int? data) {
//                                              if (data != null) {
//                                              //  _addAttendanceController.selectedPeriod = data;
//                                              }
//                                            },
//                                            dropdownDecoratorProps: const DropDownDecoratorProps(
//                                              dropdownSearchDecoration: InputDecoration(
//                             labelText: "Select Period",
//                             border: OutlineInputBorder()),
//                                            ),
//                                          ),
//                        ],
//                      ),
//                                      ),
//                    )),
//                Expanded(
//                 child: Padding(
//                   padding:  EdgeInsets.only(left: ResponsiveWebSite.isMobile(context)?7: 15,right: ResponsiveWebSite.isMobile(context)?7: 15),
//                   child: Container(
//                     height: 90,
//                     color: cWhite,
//                     child:  Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                           //  Image.asset("assets/images/books.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
//                             GooglePoppinsWidgets(text:ResponsiveWebSite.isMobile(context)?"SELECT SUBJECT": "  SELECT SUBJECT",
//                              fontsize: ResponsiveWebSite.isMobile(context)?12:15,fontWeight: FontWeight.w500,)
//                           ],
//                         ),
//                         DropdownSearch<Map<String, dynamic>>(
//                                           // asyncItems: (String filter) =>
//                                           //     _addAttendanceController.fetchAllSubjects(),
//                                           // itemAsString: (Map<String, dynamic> u) => u["subjectName"],
//                                           // onChanged: (Map<String, dynamic>? data) =>
//                                           //     _addAttendanceController.selectedSubject = data ?? {},
//                                           dropdownDecoratorProps: const DropDownDecoratorProps(
//                         dropdownSearchDecoration: InputDecoration(
//                             labelText: "Select Subject",
//                             border: OutlineInputBorder()),
//                                           ),
//                                         ),
//                       ],
//                     ),),
//                 ))],),),
//             ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 15),
//                 child: ButtonBar(
//                    alignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Container(height: 40,
//                         width: 160,
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                            color: cgreen,),

//                         child: Center(child: GooglePoppinsWidgets(text: "Submit",fontsize: 15,fontWeight: FontWeight.w500,color: cWhite,)),)
//                       ],
//                 ),
//               )  ,
//               Container(height: 200,
//               width: double.infinity,
//               color: cWhite,)
//         ],
//       ),
//     );
//   }
// }

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

addAttendance(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(backgroundColor: cWhite,
        content: SingleChildScrollView(
          child: SizedBox(
            width: 600,
            child:ResponsiveWebSite.isMobile(context)
            ?Column(children: [ 
              Row(
                children: [
                  const BackButton(),
                  GooglePoppinsWidgets(
                      text: "ADD ATTENDANCE",
                      fontsize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                ],
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 7, right: 7,bottom: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GooglePoppinsWidgets(
                        text:  "SELECT CLASS" ,
                        fontsize: 12 ,
                        fontWeight: FontWeight.w500,
                      ),
                      DropdownSearch<Map<String, dynamic>>(
                        // asyncItems: (String filter) =>
                        //     _addAttendanceController.fetchAllClass(),
                        // itemAsString: (Map<String, dynamic> u) => u["className"],
                        // onChanged: (Map<String, dynamic>? data) =>
                        //     _addAttendanceController.selectClassData = data ?? {},
                        dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                              labelText: "Select Class",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding( padding: const EdgeInsets.only( top: 7, left: 7 , right: 7 ,bottom: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GooglePoppinsWidgets(
                                text:  "SELECT MONTH"
                                    ,
                                fontsize: ResponsiveWebSite.isMobile(context)
                                    ? 12
                                    : 15,
                                fontWeight: FontWeight.w500,
                              ),
                              DropdownSearch<Map<String, dynamic>>(
                                // asyncItems: (String filter) =>
                                //     _addAttendanceController.fetchAllMonths(),
                                // itemAsString: (Map<String, dynamic> u) => u["id"],
                                // onChanged: (Map<String, dynamic>? data) =>
                                //     _addAttendanceController.selectMonthId =
                                //         data?["id"] ?? "",
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                      labelText: "Select Month",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7,bottom: 7,
                              left: 7 ,
                              right: 7 ),
                          child: SizedBox(
                            height: 90,
                           
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GooglePoppinsWidgets(
                                  text: ResponsiveWebSite.isMobile(context)
                                      ? "SELECT DATE"
                                      : "  SELECT DATE",
                                  fontsize: ResponsiveWebSite.isMobile(context)
                                      ? 12
                                      : 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Select Date"),
                                  readOnly: true,
                                  // controller: _addAttendanceController.dateTextController,
                                  // onTap: () async {
                                  //   if (_addAttendanceController.selectClassData.isNotEmpty ||
                                  //       _addAttendanceController.selectMonthId.isNotEmpty) {
                                  //     await _addAttendanceController.callDatePicker(
                                  //         context: context);
                                  //     await _addAttendanceController.fetchAllStudentsData();
                                  //   }
                                  // },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7,bottom: 7,
                              left: 7 ,
                              right: 7 ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GooglePoppinsWidgets(
                                text: ResponsiveWebSite.isMobile(context)
                                    ? "SELECTPERIOD"
                                    : "  SELECT PERIOD",
                                fontsize: ResponsiveWebSite.isMobile(context)
                                    ? 12
                                    : 15,
                                fontWeight: FontWeight.w500,
                              ),
                              DropdownSearch<int>(
                                // items: _addAttendanceController.periodLists,
                                itemAsString: (int u) => u.toString(),
                                onChanged: (int? data) {
                                  if (data != null) {
                                    //  _addAttendanceController.selectedPeriod = data;
                                  }
                                },
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                      labelText: "Select Period",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7,bottom: 7,
                              left:  7 ,
                              right:  7 ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GooglePoppinsWidgets(
                                text: ResponsiveWebSite.isMobile(context)
                                    ? "SELECT SUBJECT"
                                    : "  SELECT SUBJECT",
                                fontsize: ResponsiveWebSite.isMobile(context)
                                    ? 12
                                    : 15,
                                fontWeight: FontWeight.w500,
                              ),
                              DropdownSearch<Map<String, dynamic>>(
                                // asyncItems: (String filter) =>
                                //     _addAttendanceController.fetchAllSubjects(),
                                // itemAsString: (Map<String, dynamic> u) => u["subjectName"],
                                // onChanged: (Map<String, dynamic>? data) =>
                                //     _addAttendanceController.selectedSubject = data ?? {},
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                      labelText: "Select Subject",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                        ),
                         Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 40,
                        width: 160,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: cgreen,
                        ),
                        child: Center(
                            child: GooglePoppinsWidgets(
                          text: "Submit",
                          fontsize: 15,
                          fontWeight: FontWeight.w500,
                         color: cWhite,
                        )),
                      )
                    ],
                  ),
                ),
            ],)/////////////////////////////////////////////////////////////
            : Column(
              children: [
                Row(
                  children: [
                    const BackButton(),
                    GooglePoppinsWidgets(
                      text: "ADD ATTENDANCE",
                      fontsize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                //  SizedBox(
                //   width: double.infinity,
                //   height: 500,
                //   child: Image.asset("assets/images/admin_add_attendance.jpg",fit: BoxFit.cover,),
                //  ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // Image.asset("assets/images/computer.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
                          GooglePoppinsWidgets(
                            text:"  SELECT CLASS",
                            fontsize:  15,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                      DropdownSearch<Map<String, dynamic>>(
                        // asyncItems: (String filter) =>
                        //     _addAttendanceController.fetchAllClass(),
                        // itemAsString: (Map<String, dynamic> u) => u["className"],
                        // onChanged: (Map<String, dynamic>? data) =>
                        //     _addAttendanceController.selectClassData = data ?? {},
                        dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                              labelText: "Select Class",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 90,
                    child: Row(
                      children: [
                        Expanded(
                         child: Padding(
                          padding: const EdgeInsets.only(
                              left:  15,
                              right:  15),
                          child: SizedBox(
                            height: 90,
                           
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    //   Image.asset("assets/images/month.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
                                    GooglePoppinsWidgets(
                                      text: "  SELECT MONTH",
                                      fontsize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                DropdownSearch<Map<String, dynamic>>(
                                  // asyncItems: (String filter) =>
                                  //     _addAttendanceController.fetchAllMonths(),
                                  // itemAsString: (Map<String, dynamic> u) => u["id"],
                                  // onChanged: (Map<String, dynamic>? data) =>
                                  //     _addAttendanceController.selectMonthId =
                                  //         data?["id"] ?? "",
                                  dropdownDecoratorProps:
                                      const DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                        labelText: "Select Month",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                         child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15,
                              right: 15),
                          child: SizedBox(
                            height: 90,
                           
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    //  Image.asset("assets/images/next-week.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
                                    GooglePoppinsWidgets(
                                      text: "  SELECT DATE",
                                      fontsize:  15,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Select Date"),
                                  readOnly: true,
                                  // controller: _addAttendanceController.dateTextController,
                                  // onTap: () async {
                                  //   if (_addAttendanceController.selectClassData.isNotEmpty ||
                                  //       _addAttendanceController.selectMonthId.isNotEmpty) {
                                  //     await _addAttendanceController.callDatePicker(
                                  //         context: context);
                                  //     await _addAttendanceController.fetchAllStudentsData();
                                  //   }
                                  // },
                                ),
                              ],
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                    
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 90,
                    child: Row(
                      children: [
                        Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15,
                              right: 15),
                          child: SizedBox(
                            height: 90,
                           
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    //  Image.asset("assets/images/period.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
                                    GooglePoppinsWidgets(
                                      text: "  SELECT PERIOD",
                                      fontsize: 15,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                DropdownSearch<int>(
                                  // items: _addAttendanceController.periodLists,
                                  itemAsString: (int u) => u.toString(),
                                  onChanged: (int? data) {
                                    if (data != null) {
                                      //  _addAttendanceController.selectedPeriod = data;
                                    }
                                  },
                                  dropdownDecoratorProps:
                                      const DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                        labelText: "Select Period",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left:  15,
                              right:  15),
                          child: SizedBox(
                            height: 90,
                           
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    //  Image.asset("assets/images/books.png",scale: ResponsiveWebSite.isMobile(context)?15: 12),
                                    GooglePoppinsWidgets(
                                      text: "  SELECT SUBJECT",
                                      fontsize:  15,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                DropdownSearch<Map<String, dynamic>>(
                                  // asyncItems: (String filter) =>
                                  //     _addAttendanceController.fetchAllSubjects(),
                                  // itemAsString: (Map<String, dynamic> u) => u["subjectName"],
                                  // onChanged: (Map<String, dynamic>? data) =>
                                  //     _addAttendanceController.selectedSubject = data ?? {},
                                  dropdownDecoratorProps:
                                      const DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                        labelText: "Select Subject",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 40,
                        width: 160,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: cgreen,
                        ),
                        child: Center(
                            child: GooglePoppinsWidgets(
                          text: "Submit",
                          fontsize: 15,
                          fontWeight: FontWeight.w500,
                         color: cWhite,
                        )),
                      )
                    ],
                  ),
                ),
              
              ],
            ),
          ),
        ),
      );
    },
  );
}
