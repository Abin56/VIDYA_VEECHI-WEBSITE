import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/custom_showdialouge/custom_showdialouge.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class MeetingEditRemove extends StatefulWidget {
  const MeetingEditRemove({
    Key? key,
    // required this.schoolID
  }) : super(key: key);

  // String schoolID;

  @override
  State<MeetingEditRemove> createState() => _MeetingEditRemoveState();
}

class _MeetingEditRemoveState extends State<MeetingEditRemove> {
  // TextEditingController headingController = TextEditingController();
  // TextEditingController dateController = TextEditingController();
  // TextEditingController descriptionController = TextEditingController();
  // TextEditingController venueController = TextEditingController();
  // TextEditingController signedByController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cWhite,
      height: 800,
      width: 1000,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextFontWidget(
              text: 'Meeting ',
              fontsize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: ResponsiveWebSite.isMobile(context)
                  ? 1
                  : ResponsiveWebSite.isTablet(context) ? 3 : 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: List.generate(20, (index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration:   const BoxDecoration(color: cWhite,
                    //Color.fromARGB(255, 245,252,255), 
                    boxShadow: [
                      BoxShadow(blurRadius: 1, offset: Offset(3, 3),),
                      BoxShadow(blurRadius: 1, offset: Offset(1, 1),)
                    ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: TextFontWidget(
                            text: 'Meeting Topic ',
                            fontsize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: TextFontWidget(
                            text: 'When',
                            fontsize: 14,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: TextFontWidget(
                            text: 'Venue',
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: MaterialButton(
                                    onPressed: () {
                                      customShowDilogBox(
                                        context: context,
                                        title: 'Edit Meeting',
                                        children: [
                                          TextFormFiledBlueContainerWidgetMeeting(
                                              hintText: 'Topic',
                                              title: 'Topic'),
                                          TextFormFiledBlueContainerWidgetMeeting(
                                              hintText: 'Date', title: 'Date'),
                                          TextFormFiledBlueContainerWidgetMeeting(
                                              hintText: 'Time ',
                                              title: 'Time '),
                                          TextFormFiledBlueContainerWidgetMeeting(
                                              hintText: 'Category',
                                              title: 'Category'),
                                          TextFormFiledBlueContainerWidgetMeeting(
                                              hintText: 'Venue',
                                              title: 'Venue'),
                                          TextFormFiledBlueContainerWidgetMeeting(
                                              hintText: 'Expected Members',
                                              title: 'Expected Members'),
                                          TextFormFiledBlueContainerWidgetMeeting(
                                              hintText: 'Special Guest',
                                              title: 'Special Guest'),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    color: themeColorBlue,
                                                    border: Border.all(
                                                        color: themeColorBlue),
                                                    borderRadius:
                                                        BorderRadius.circular(05)),
                                                child: const Center(
                                                  child: TextFontWidget(
                                                    text: "Update",
                                                    fontsize: 14,
                                                    // fontWeight: FontWeight.w600,
                                                    color: cWhite,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                        doyouwantActionButton: false,
                                        actiontext: 'Update',
                                      );
                                    },
                                    color: themeColorBlue,
                                    child: GooglePoppinsWidgets(
                                      text: 'Edit',
                                      fontsize: 13,
                                      color: cWhite,
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
                                    onPressed: () {
                                      customShowDilogBox(
                                          context: context,
                                          title: 'Delete',
                                          children: [
                                            GooglePoppinsWidgets(
                                                text:
                                                    'Are you sure to want delete',
                                                fontsize:
                                                    ResponsiveWebSite.isMobile(
                                                            context)
                                                        ? 12
                                                        : 15)
                                          ],
                                          doyouwantActionButton: true);
                                    },
                                    color: cred,
                                    child: GooglePoppinsWidgets(
                                      text: 'Delete',
                                      fontsize: 13,
                                      color: cWhite,
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
class TextFormFiledBlueContainerWidgetMeeting extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final Widget? widget;
  final double? width;
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  String? Function(String?)? validator;
  Function()? onTap;
  TextInputType? keyboardType;
  TextFormFiledBlueContainerWidgetMeeting({
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFontWidget(text: '$title *', fontsize: 12.5),
              widget == null ? const SizedBox() : widget!,
            ],
          ),
          const SizedBox(
            height: 05,
          ),
          Container(
            // height: 40,
            width: width,
            color: screenContainerbackgroundColor,
            child: Center(
              child: TextFormField(
                onChanged: onChanged,
                autofillHints: autofillHints,
                onTap: onTap,
                validator: validator,
                keyboardType: keyboardType,
                controller: controller,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 01, horizontal: 01),
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
