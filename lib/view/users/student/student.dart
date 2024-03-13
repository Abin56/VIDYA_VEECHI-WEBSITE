import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextFontWidget(text: "Teacher", fontsize: 14),
      ),
    );
  }
}
