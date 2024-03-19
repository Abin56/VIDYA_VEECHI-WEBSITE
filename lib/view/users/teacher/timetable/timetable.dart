import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/notice/noticebutton_container.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  bool? valuefirst = false; 
  @override
  Widget build(BuildContext context) {
    List<Widget> textformWidget = [
      const Padding(
        padding: EdgeInsets.only(top: 10,right: 10),
        child: TimeTableDropdownContainerWidgetColor(title: 'Select day *', items: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],),
      ), ///////////////////////////////////////////////////////////////////////0
      const Padding(
         padding: EdgeInsets.only(top: 10,right: 10),
        child: TimeTableDropdownContainerWidget(title: 'Select subject *', items: ['English', 'Hindi', 'malayalam', 'Chemistry', ],),
      ), /////////////////////////////////////////////////////////////////1
       const Padding(
          padding: EdgeInsets.only(top: 10,right: 10),
         child: TimeTableDropdownContainerWidget(title: 'Select teacher *', items: ['Renu', 'Clara', ],),
       ), /////////////////////////////////////////////////////2
       const Padding(
          padding: EdgeInsets.only(top: 10,right: 10),
         child: TimeTableDropdownContainerWidget(title: 'Select period *', items: ['Period 1', 'Period 2', 'Period 3', 'Period 4', 'Period 4'],),
       ), /////////////////////////////////////////////////3
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget1(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 400,
          hintText: 'Start time',
          title: 'Start time',
        ),
      ), ////////////////////////////////////////////////////////4
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget1(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 400,
          title: 'End Time',
          hintText: 'End Time',
        ),
      ), ///////////////////////////////////////////////5
      const Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child:  TimeTableDropdownContainerWidgetColor(title: 'Select color *', color: [Colors.amber,Colors.pink],
      ),), ////////////////////////////////////6
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: TextFormFiledBlueContainerWidget1(
          width: ResponsiveWebSite.isMobile(context) ? double.infinity : 400,
          title: '',
          hintText: '',
        ),
      ),
    ];
   
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
                        text: 'TimeTable',
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
                                        Column(
                                          children: [
                                            textformWidget[0],
                                            textformWidget[1],
                                            textformWidget[2],
                                            textformWidget[3],
                                            textformWidget[4],
                                            textformWidget[5],
                                            textformWidget[6],
                                          ],
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

                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: textformWidget[0],
                                                ),
                                                Expanded(
                                                  child: textformWidget[1],
                                                ),
                                                Expanded(
                                                  child: textformWidget[2],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: textformWidget[3],
                                                ),
                                                Expanded(
                                                  child: textformWidget[4],
                                                ),
                                                Expanded(
                                                  child: textformWidget[5],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                    child: textformWidget[6]),
                                                
                                                const Expanded(
                                                    child: SizedBox(
                                                  height: 40,
                                                  width:400,
                                                )),
                                                 const Expanded(
                                                    child: SizedBox(
                                                  height: 40,
                                                  width: 400,
                                                ))
                                              ],
                                            ),
                                          ],
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

class TimeTableDropdownContainerWidget extends StatelessWidget {
  const TimeTableDropdownContainerWidget({
    required this.title,
     this.items,
     
   this.color,
    super.key,
  });
final String title;
final List<String>? items ;
final List<Color>? color ;
  @override
  Widget build(BuildContext context) {
    return Container(width: ResponsiveWebSite.isMobile(context) ?double.infinity:500,
      height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
      color: cWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           TextFontWidget(text: title, fontsize: 12.5),
          const SizedBox(
            height: 05,
          ),
          SizedBox(
            height: 40,
            child: DropdownSearch(
              items: items??[]
            ),
          ),
          
        ],
      ),
    );
  }
}
class TimeTableDropdownContainerWidgetColor extends StatelessWidget {
  const TimeTableDropdownContainerWidgetColor({
    required this.title,
     this.items,
   this.color,
    super.key,
  });
final String title;
final List<String>? items ;
final List<Color>? color ;
  @override
  Widget build(BuildContext context) {
    return Container(width: ResponsiveWebSite.isMobile(context) ?double.infinity:400,
      height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
      color: cWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           TextFontWidget(text: title, fontsize: 12.5),
          const SizedBox(
            height: 05,
          ),
          SizedBox(
            height: 40,
            child: DropdownSearch<Color>(
              items: color??[],
              
            ),
          ),
          
        ],
      ),
    );
  }
}







// ignore: must_be_immutable
class TextFormFiledBlueContainerWidget1 extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final Widget? widget;
  // Added child parameter
  final double? width;
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  String? Function(String?)? validator;
  Function()? onTap;
  TextInputType? keyboardType;

  TextFormFiledBlueContainerWidget1({
    this.width,
    this.widget,
    
    required this.hintText,
    required this.title,
    this.keyboardType,
    this.controller,
    this.autofillHints,
    this.onChanged,
    this.validator,
    this.onTap,
    Key? key, // Changed super.key to Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFontWidget(text: '$title *', fontsize: 12.5),
             
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 40,
            width: width,
            color: Colors.white,
            child: Center(
              child: TextFormField(
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
                    ),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                      color: Colors.red,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 0.4),
                  ),
                  hintStyle: const TextStyle(fontSize: 13),
                  hintText: hintText,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.green),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
