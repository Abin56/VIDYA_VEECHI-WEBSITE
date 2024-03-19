import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

// ignore: must_be_immutable
class TextFormFiledBlueContainerWidget extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final Widget? widget;
  final double? width;
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  String? Function(String?)? validator;
  bool? readOnly;
  Function()? onTap;
  TextInputType? keyboardType;
  TextFormFiledBlueContainerWidget({
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
    this.readOnly,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
      color: cWhite,
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
                readOnly: readOnly ?? false,
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
