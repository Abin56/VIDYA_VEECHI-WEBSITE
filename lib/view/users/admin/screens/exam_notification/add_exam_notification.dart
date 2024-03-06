import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';

addExamFunction(BuildContext context) {
  final formKey = GlobalKey<FormState>();
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(
          children: [
            SizedBox(
              width: 400,
              height: 350,
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              BackButton(),
                              TextFontWidget(
                                  text: "Add Exam Notification", fontsize: 15),
                            ],
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: DropdownSearch<String>(
                              selectedItem: 'Select Exam Level',
                              validator: (v) =>
                                  v == null ? "required field" : null,
                              items: const [
                                "School Level",
                                "Public Level",
                              ],
                              // onChanged: (value) {
                              //   setState(() {
                              //     selectedLeaveType =
                              //         value!;
                              //   });
                              // },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: checkFieldEmpty,
                        // controller: name,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Name of Examination',
                            labelStyle: GoogleFonts.poppins()),
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: checkFieldEmpty,
                        // controller:
                        //     _applyFromDateController,
                        readOnly: true,
                        onTap: () {
                          // _selectFromDate(context),
                        },
                        decoration: const InputDecoration(
                          labelText: 'From',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: checkFieldEmpty,
                        // controller:
                        //     _applyTODateController,
                        readOnly: true,
                        onTap: () {
                          // _selectToDate(context),
                        },
                        decoration: const InputDecoration(
                          labelText: 'To',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MaterialButton(
              color: themeColorBlue,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                color: themeColorBlue,
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    // await widget.addExamController
                    // .addExamtoSever(
                    //     context,
                    //     '',
                    //     name.text.trim(),
                    //     selectedLeaveType,
                    //     _applyFromDateController
                    //         .text
                    //         .trim(),
                    //     _applyTODateController
                    //         .text
                    //         .trim(),
                    //     DateTime.now()
                    //         .toString());

                    //         clearnotFunction();
                  }
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
