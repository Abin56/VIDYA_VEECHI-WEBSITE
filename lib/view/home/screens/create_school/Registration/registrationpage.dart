// ignore_for_file: prefer_const_constructors



import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/home/screens/footer/widgets/Iconbackbutton.dart';
import 'package:vidyaveechi_website/view/widgets/drop_DownList/schoolDropDownList.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';


class RegisrationPage extends StatefulWidget {
  const RegisrationPage({super.key});
  static const String route = '/createSchool';

  @override
  State<RegisrationPage> createState() => _RegisrationPageState();
}

class _RegisrationPageState extends State<RegisrationPage> {
 


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(appBar: AppBar( title:IconButtonBackWidget(),automaticallyImplyLeading: false ),
      body: SingleChildScrollView(
        child: Container(
            height:
                ResponsiveWebSite.isMobile(context) ? 800 : 1000,
            width: double.infinity,
            decoration: BoxDecoration(
             
              image: DecorationImage(
                image: AssetImage("assets/images/login-bg.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top:ResponsiveWebSite.isMobile(context) ? 30:80),
                  child: Container(
                    
                    decoration: BoxDecoration(
                        color: cWhite,
                        borderRadius: BorderRadius.circular(4)),
                    height: ResponsiveWebSite.isMobile(context) ? 600 : 650,
                    width: ResponsiveWebSite.isMobile(context) ? 300 : 400,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: GooglePoppinsWidgets(
                            text: 'REGISTRATION',
                            fontsize: ResponsiveWebSite.isMobile(context) ?18:25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: GetSchoolListDropDownButton(),
                          
                        ),
                         const Padding(
         padding: EdgeInsets.only(top: 10,left: 10,right: 10),
        child: DropdownContainerWidget(title: 'Select class *', items: ['Class 1', 'Class 2', 'Class 3', 'Class 3', ],),
      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormFiledBlueContainerWidget1(
                              hintText: 'Student name',
                              title: 'Student name',
                              labelText: 'Student name'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormFiledBlueContainerWidget1(
                              hintText: 'Email',
                              title: 'Email',
                              labelText: 'Email'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextFormFiledBlueContainerWidget1(
                              hintText: 'Phone number',
                              title: 'Phone number',
                              labelText: 'Phone number'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height:ResponsiveWebSite.isMobile(context) ? 40:50,
                            width:ResponsiveWebSite.isMobile(context) ?240: 300,
                            decoration: BoxDecoration(
                              color: AppColors.blueDarkColor,
                            ),
                            child: Center(
                                child: GooglePoppinsWidgets(
                              text: 'Submit',
                              fontsize:ResponsiveWebSite.isMobile(context) ? 14:16,
                              color: cWhite,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  

}

class DropdownContainerWidget extends StatelessWidget {
  const DropdownContainerWidget({
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
    Key? key,
    required String labelText, // Changed super.key to Key key
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



