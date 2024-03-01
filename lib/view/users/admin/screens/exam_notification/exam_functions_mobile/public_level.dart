import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';

publicLevelExamListing(BuildContext context){
showDialog(context: context,
 builder: (context) {
   return  AlertDialog(
    
    content: Column(
      children: [ 
         SingleChildScrollView(
                 child: Column(
                   children: [
                     const Row(
                       children: [
                        BackButton(),
                         Padding(
                           padding: EdgeInsets.only(left: 8),
                           child: TextFontWidget(
                               text: "SCHOOL LEVEL EXAMS", fontsize: 15,fontWeight: FontWeight.w500,),
                         ),
                       ],
                     ),
                         const Padding(
                           padding: EdgeInsets.only(top: 8,left: 10,right: 10),
                           child: Divider(),
                         ),
                     SizedBox(
                      height: 500,
                      width: 300,
                       child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                           padding: const EdgeInsets.only(left: 2,right: 2, top: 8,bottom: 8),
                           child: Container(
                             height: 40,
                             width: double.infinity,
                             decoration: const BoxDecoration(color: cWhite,
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                                 boxShadow: [BoxShadow(blurRadius: 1)]),
                             child: const Column(
                               children: [
                                 TextFontWidget(text: "Onam Exam", fontsize: 15),
                                 TextFontWidget(text: "23/05/2023", fontsize: 12)
                               ],
                             ),
                           ),
                         );
                        },
                        itemCount: 10,
                        separatorBuilder: (context, index) => const SizedBox(height: 1,),
                       
                       ),
                     )
                   ],
                 ),
               )
      ],
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const TextFontWidget(text: "Ok", fontsize: 12))
    ],
   );
 },);
}