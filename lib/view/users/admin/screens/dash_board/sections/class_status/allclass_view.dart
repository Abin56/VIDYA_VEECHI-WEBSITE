import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class TotalClassViewContainer extends StatelessWidget {
  const TotalClassViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context) ? 320 : 420,
      width: ResponsiveWebSite.isMobile(context) ? double.infinity : 450,
      decoration: BoxDecoration(
          color: cWhite, border: Border.all(color: cBlack.withOpacity(0.1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: Row(
              children: [
                TextFontWidget(
                  text: "All Classes",
                  fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 17,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, right: 10),
                  child: TextFontWidget(
                    text: "View All",
                    fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: AllClassListViewContainer(),
            ),
          )
        ],
      ),
    );
  }
}

class AllClassListViewContainer extends StatelessWidget {
  const AllClassListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 176, 238, 178).withOpacity(0.1),
                border: Border.all(color: Colors.grey.withOpacity(0.1))),
            child: ListTile(
              // leading: const CircleAvatar(
              //   radius: 15,
              //   child: CircleAvatar(
              //     backgroundColor: cWhite,
              //     radius: 10,
              //   ),
              // ),
              title: TextFontWidget(
                text: ' Class X',
                fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
                fontWeight: FontWeight.w600,
              ),
              trailing: SizedBox(
                width: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green.withOpacity(0.2),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextFontWidget(
                              text: "Pr",
                              fontsize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            TextFontWidget(
                              text: "50",
                              fontsize: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red.withOpacity(0.2),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextFontWidget(
                              text: "Ab",
                              fontsize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            TextFontWidget(
                              text: "50",
                              fontsize: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blue.withOpacity(0.4),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextFontWidget(
                              text: "Total",
                              fontsize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            TextFontWidget(
                              text: "100",
                              fontsize: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: Row(
                children: [
                  SizedBox(
                    height: ResponsiveWebSite.isMobile(context) ? 20 : 25,
                    width: ResponsiveWebSite.isMobile(context) ? 20 : 35,
                    child: Image.asset(
                        'assets/stickers/icons8-school-director-100.png'),
                  ),
                  Expanded(
                    child: TextFontWidget(
                      text: 'Cheekan Para',
                      fontsize: ResponsiveWebSite.isMobile(context) ? 11 : 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 05,
          );
        },
        itemCount: 10);
  }
}
