import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/model/class_model/class_model.dart';

class SelectClassDropDown extends StatelessWidget {
  SelectClassDropDown({
    Key? key,
  }) : super(key: key);

  final classCtrl = Get.put(ClassController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.blue.withOpacity(0.3),
          border: Border.all(color: Colors.grey.withOpacity(0.2))),
      child: Center(
          child: DropdownSearch<ClassModel>(
        validator: (item) {
          if (item == null) {
            return "Required field";
          } else {
            return null;
          }
        },

        // autoValidateMode: AutovalidateMode.always,
        asyncItems: (value) {
          classCtrl.allclassList.clear();

          return classCtrl.fetchClass();
        },
        itemAsString: (value) => value.className,
        onChanged: (value) async {
          if (value != null) {
            classCtrl.className.value = value.className;
            classCtrl.classDocID.value = value.docid;
          }
        },
        dropdownDecoratorProps: DropDownDecoratorProps(
            baseStyle: GoogleFonts.poppins(
                fontSize: 13, color: Colors.black.withOpacity(0.7))),
      )),
    );
  }
}
