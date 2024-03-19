import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class SchoolFeesStatuesPage extends StatelessWidget {
  const SchoolFeesStatuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: ResponsiveWebSite.isMobile(context)?CrossAxisAlignment.center :  CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: 400,
            color: cWhite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment:ResponsiveWebSite.isMobile(context)?CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [ const TextFontWidget(text: "Fees Status", fontsize: 17),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFontWidget(
                          text:  "SELECT CLASS" ,
                          fontsize: 15 ,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                      Padding(
                        padding:  EdgeInsets.all(ResponsiveWebSite.isMobile(context)? 8:4.0),
                        child: SizedBox(
                          height: 40,
                          child: DropdownSearch<Map<String, dynamic>>(
                            dropdownDecoratorProps: const DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                  labelText: "Select Class",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                      ),
                    
                ],
              ),
               Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(  
                    padding: EdgeInsets.all(8.0),
                    child: TextFontWidget(
                          text:  "SELECT FEES" ,
                          fontsize: 15 ,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                      Padding(
                         padding:  EdgeInsets.all(ResponsiveWebSite.isMobile(context)? 8:4.0),
                        child: SizedBox(
                          height: 40,
                          child: DropdownSearch<Map<String, dynamic>>(
                            dropdownDecoratorProps: const DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                  labelText: "Select Fees",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                      ),
                    
                ],
              ),
              Align(alignment: Alignment.center,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Container(
                          height: 35,
                          width: 120,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: themeColorBlue),
                          child: const Center(child: TextFontWidget(text: "Submit", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                       ),
                     ),
                   ),
               Align(alignment: Alignment.center,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Container(
                          height: 35,
                          width: 140,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: themeColorBlue),
                          child: const Center(child: TextFontWidget(text: "Send Notification", fontsize: 15,fontWeight: FontWeight.bold,color: cWhite,)),
                       ),
                     ),
                   )
              ],
            ),
          ),
        ],
      ),
    );
  }
}