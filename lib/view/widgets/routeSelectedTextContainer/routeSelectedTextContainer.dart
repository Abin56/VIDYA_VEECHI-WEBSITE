import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';

class RouteSelectedTextContainer extends StatelessWidget {
  final double? width;
  final String title;
  const RouteSelectedTextContainer({
    super.key,
    required this.title,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: themeColorBlue,
          border: Border.all(color: cWhite.withOpacity(0.2))),
      height: 30,
      width: width ?? 120,
      child: Center(
        child: TextFontWidget(
          text: title,
          fontsize: 14,
          fontWeight: FontWeight.w500,
          color: cWhite,
        ),
      ),
    );
  }
}
