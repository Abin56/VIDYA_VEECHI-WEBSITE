




import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/notice/notice_create.dart';
import 'package:vidyaveechi_website/view/widgets/custom_showdialouge/custom_showdialouge.dart';
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
              crossAxisCount: ResponsiveWebSite.isMobile(context) ? 1 :  ResponsiveWebSite.isTablet(context)?2:3,
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
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10),
                                child: GooglePoppinsWidgets(
                                  text: 'School arts',
                                  fontsize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top:10,left: 10,right: 10,bottom: 5),
                                child: GooglePoppinsWidgets(
                                  text: 'Subject:Arts',
                                  fontsize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10,left: 10,right: 10,bottom: 5),
                          child: GooglePoppinsWidgets(
                            text: 'Date:00/00/00',
                            fontsize: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10,left: 10,right: 10,bottom: 5),
                          child: GooglePoppinsWidgets(
                            text: 'Venue:School',
                            fontsize: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10,left: 10,right: 10,bottom: 5),
                          child: GooglePoppinsWidgets(
                            text: 'Chief guest:Principal',
                            fontsize: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10,left: 10,right: 10,bottom: 5),
                          child: GooglePoppinsWidgets(
                            text: 'Signed by:Principal',
                            fontsize: 14,
                          ),
                        ),
                        const Spacer(),
                         Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:  const EdgeInsets.only(left: 10),
                                  child: MaterialButton(
                                    onPressed: () {customShowDilogBox(
                                  context: context,
                                  title: 'Edit',
                                  children: [
                                    TextFormFiledBlueContainerWidgetEvent(
                                        hintText: 'Heading',
                                        title: 'Heading'),
                                    TextFormFiledBlueContainerWidgetEvent(
                                        hintText: 'Date',
                                        title: 'Date'),
                                        TextFormFiledBlueContainerWidgetEvent(
                                        hintText: 'Subject',
                                        title: 'Subject'),
                                    TextFormFiledBlueContainerWidgetEvent(
                                        hintText: 'Venue', title: 'Venue'),
                                    TextFormFiledBlueContainerWidgetEvent(
                                        hintText: 'Cheif guest',
                                        title: 'Cheif guest'),
                                        TextFormFiledBlueContainerWidgetEvent(
                                        hintText: 'Signed by',
                                        title: 'Signed by'),
                                      
                                  ],
                                  doyouwantActionButton: true,
                                  actiontext: 'Update');},
                                    color: cBlue,
                                    child: GooglePoppinsWidgets(
                                      text: 'Edit',
                                      fontsize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: MaterialButton(
                                    onPressed: () { customShowDilogBox(
                                  context: context,
                                  title: 'Delete',
                                  children: [
                                    GooglePoppinsWidgets(
                                        text: 'Are you sure to want delete',
                                        fontsize:
                                            ResponsiveWebSite.isMobile(context)
                                                ? 12
                                                : 15)
                                  ],
                                  doyouwantActionButton: true);},
                                    color: cred,
                                    child: GooglePoppinsWidgets(
                                      text: 'Delete',
                                      fontsize: 13,
                                    ),
                                  ),
                                ),
                              ),
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


// ignore: must_be_immutable
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

