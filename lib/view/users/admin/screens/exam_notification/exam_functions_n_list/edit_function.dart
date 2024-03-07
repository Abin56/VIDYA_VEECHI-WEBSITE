import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';

editFunctionOfExam(BuildContext context){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      backgroundColor: cWhite,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [ 
        BackButton(),
        TextFontWidget(text: "  Edit Exam", fontsize: 15,fontWeight: FontWeight.bold,)
      ],),
      content: SizedBox(
        height: 350,
        child: Column(
          children: [ 
            SizedBox(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const TextFontWidget(text: ' Exam Name *', fontsize: 12.5),
                const SizedBox(
                  height: 05,
                ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: const BorderRadius.all(Radius.circular(5))),
                    child: TextFormField(decoration: const InputDecoration(hintText: 'Enter Exam Name',hintStyle: TextStyle(fontSize: 13)),)),
                ],
              ),
            ),
            SizedBox(
           height: 80,
          // color: cWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextFontWidget(text: 'Starting Date🗓️ *', fontsize: 12.5),
              const SizedBox(
                height: 05,
              ),
              GestureDetector(
                onTap: () => showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2018),
                  lastDate: DateTime(2030),
                  helpText: 'Select a date',
                  cancelText: 'Cancel',
                  confirmText: 'OK',
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        primaryColor:
                            const Color(0xFF2296F3), // Header background color
                        // accentColor: Colors.white, // Selection color
                        colorScheme:
                            const ColorScheme.light(primary: Color(0xFF2296F3)),
                        buttonTheme: const ButtonThemeData(
                          textTheme: ButtonTextTheme.primary,
                        ),
                      ),
                      child: child!,
                    );
                  },
                ),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(05),
                      color: screenContainerbackgroundColor,
                      border: Border.all(color: cBlack.withOpacity(0.4))),
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFontWidget(text: 'DD/MM/YYYY *', fontsize: 12.5),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80,
         // color: cWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextFontWidget(text: 'Ending Date🗓️ *', fontsize: 12.5),
              const SizedBox(
                height: 05,
              ),
              GestureDetector(
                onTap: () => showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2018),
                  lastDate: DateTime(2030),
                  helpText: 'Select a date',
                  cancelText: 'Cancel',
                  confirmText: 'OK',
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        primaryColor:
                            const Color(0xFF2296F3), // Header background color
                        // accentColor: Colors.white, // Selection color
                        colorScheme:
                            const ColorScheme.light(primary: Color(0xFF2296F3)),
                        buttonTheme: const ButtonThemeData(
                          textTheme: ButtonTextTheme.primary,
                        ),
                      ),
                      child: child!,
                    );
                  },
                ),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(05),
                      color: screenContainerbackgroundColor,
                      border: Border.all(color: cBlack.withOpacity(0.4))),
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFontWidget(text: 'DD/MM/YYYY *', fontsize: 12.5),
                  ),
                ),
              ),
            ],
          ),
        ),
         GestureDetector(
          onTap: () {
            //if (_formKey.currentState!.validate()) {}
          },
          child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: themeColorBlue,
                border: Border.all(color: themeColorBlue),
                borderRadius: BorderRadius.circular(05)),
            child: const Center(
              child: TextFontWidget(
                text: "Edit",
                fontsize: 14,
                // fontWeight: FontWeight.w600,
                color: cWhite,
              ),
            ),
          ),
        ),
          ],
        ),
      ),
    );
  },);
}