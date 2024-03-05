import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidyaveechi_website/controller/general%20instruction/general_instruction.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/custom_showdialouge/custom_showdialouge.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

class GeneralInsructions extends StatelessWidget {
  final GeneralInsructionController generalInsructionController =
      Get.put(GeneralInsructionController());
  GeneralInsructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: screenContainerbackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: Row(
                  children: [
                    const TextFontWidget(
                      text: 'General Instructions',
                      fontsize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          aweSideSheet(
                              context: context,
                              sheetPosition: SheetPosition.right,
                              title: "General Instructions",
                              body: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 600,
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: Obx(() {
                                          return Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                      flex: 3,
                                                      child: TextFormFiledContainerWidget(
                                                          hintText:
                                                              'General Instruction',
                                                          title:
                                                              'Enter general instruction',
                                                          width: 500,
                                                          controller:
                                                              generalInsructionController
                                                                  .instructionController)),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 28,
                                                              left: 20),
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            if (generalInsructionController
                                                                .instructionController
                                                                .text
                                                                .isNotEmpty) {
                                                              generalInsructionController
                                                                  .instructionList
                                                                  .add(generalInsructionController
                                                                      .instructionController
                                                                      .text);
                                                              generalInsructionController
                                                                  .instructionController
                                                                  .clear();
                                                              print(generalInsructionController
                                                                  .instructionList);
                                                            }
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 10),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  color: Colors
                                                                      .purple
                                                                      .withOpacity(
                                                                          0.1)),
                                                              height: 38,
                                                              width: 100,
                                                              child: Center(
                                                                  child:
                                                                      GooglePoppinsWidgets(
                                                                text: 'Add',
                                                                fontsize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              )),
                                                            ),
                                                          )),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              // sizedBoxH20,

                                              Expanded(
                                                child: SizedBox(
                                                  height: 400,
                                                  width: 400,
                                                  child: ListView.builder(
                                                    itemCount:
                                                        generalInsructionController
                                                            .instructionList
                                                            .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Row(
                                                        children: [
                                                          Text(
                                                            '•${generalInsructionController.instructionList[index]}',
                                                          ),
                                                          const Spacer(),
                                                          GestureDetector(
                                                              onTap: () {
                                                                customShowDilogBox(
                                                                    context:
                                                                        context,
                                                                    title:
                                                                        'Edit',
                                                                    children: [
                                                                      TextFormFiledBlueContainerWidget1(
                                                                          hintText:
                                                                              'Enter your instruction',
                                                                          title:
                                                                              'General Instruction')
                                                                    ],
                                                                    doyouwantActionButton:
                                                                        true,
                                                                    actiontext:
                                                                        'Update');
                                                              },
                                                              child: Icon(
                                                                Icons.edit,
                                                                color: cgreen
                                                                    .withOpacity(
                                                                        1),
                                                              )),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          GestureDetector(
                                                            child: Icon(
                                                              Icons.delete,
                                                              color: cred
                                                                  .withOpacity(
                                                                      1),
                                                            ),
                                                            onTap: () {
                                                              customShowDilogBox(
                                                                  context:
                                                                      context,
                                                                  title:
                                                                      'Delete',
                                                                  children: [
                                                                    GooglePoppinsWidgets(
                                                                        text:
                                                                            'Are you sure to want delete',
                                                                        fontsize: ResponsiveWebSite.isMobile(context)
                                                                            ? 12
                                                                            : 15)
                                                                  ],
                                                                  doyouwantActionButton:
                                                                      true);
                                                            },
                                                          )
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              showCloseButton: false,
                              footer: Container());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.purple.withOpacity(0.1)),
                          height: 38,
                          width: 100,
                          child: Center(
                              child: GooglePoppinsWidgets(
                            text: 'Add',
                            fontsize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 25,
                    left: ResponsiveWebSite.isMobile(context) ? 05 : 10),
              ),
              Obx(() {
                return generalInsructionController.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SingleChildScrollView(
                        child: SizedBox(
                          // height: 800,
                          width: 1000,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 100,
                              vertical: 30,
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 1000,
                                    decoration: BoxDecoration(
                                        color: cWhite,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      children: [
                                        Center(
                                            child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: GooglePoppinsWidgets(
                                            text: 'General Instructions',
                                            fontsize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 40, top: 20),
                                          child: ListView.separated(
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                // if (index ==
                                                //     (generalInstructionsController
                                                //         .listOfGeneralIModel.length))
                                                {
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 20),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Flexible(
                                                                child: Text(
                                                                  "General Instruction",
                                                                  style: GoogleFonts.roboto(
                                                                      fontSize: ResponsiveWebSite.isMobile(
                                                                              context)
                                                                          ? 12
                                                                          : 15),
                                                                  softWrap:
                                                                      true,
                                                                ),
                                                              ),
                                                            ]),
                                                      ],
                                                    ),
                                                  );
                                                }
                                                // return InstructionTextWidget(
                                                //   count: (index + 1).toString(),
                                                //   text: generalInstructionsController
                                                //       .listOfGeneralIModel[index].instruction,
                                                // );
                                              },
                                              separatorBuilder:
                                                  (context, index) {
                                                return const SizedBox(
                                                  height: 20,
                                                );
                                              },
                                              itemCount: 10
                                              // generalInstructionsController.listOfGeneralIModel.length +1
                                              ),
                                        ),
                                      ],
                                    ),
                                  )

                                  // sizedBoxH20,

                                  // Expanded(
                                  //   child: ListView.builder(
                                  //       itemCount: generalInsructionController
                                  //           .instructionList.length,
                                  //       itemBuilder: (context, index) {
                                  //         return Text(
                                  //             '•  ${generalInsructionController.instructionList[index]}');
                                  //       }),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
              })
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextFormFiledBlueContainerWidget1 extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final Widget? widget;
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  String? Function(String?)? validator;
  Function()? onTap;
  TextInputType? keyboardType;
  TextFormFiledBlueContainerWidget1({
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
      height: 150,
      
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
            height: 100,width: 500,
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
