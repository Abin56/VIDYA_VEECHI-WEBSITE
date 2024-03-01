import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/data_container.dart';

class AllStudentDataList extends StatelessWidget {
  final int index;
  const AllStudentDataList({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                // width: 150,
                index: index,
                headerTitle: '${index + 1}'), //....................No
          ),
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 2,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                index: index,
                headerTitle: "99578"),
          ), //................................................. Student ID
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  child: Center(
                    child: Image.asset(
                      'assets/stickers/icons8-student-100 (1).png',
                    ),
                  ),
                ),
                const Expanded(
                  child: TextFontWidget(
                    text: "  Reshma Suresh",
                    fontsize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ), //........................................... Student Name
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                  child: Center(
                    child: Image.asset(
                      'assets/png/gmail.png',
                    ),
                  ),
                ),
                const Expanded(
                  child: TextFontWidget(
                    text: "  reshmaSuresh1006@gmail.com",
                    fontsize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ), // ................................... Student Email
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                  child: Center(
                    child: Image.asset(
                      'assets/png/telephone.png',
                    ),
                  ),
                ),
                const Expanded(
                  child: TextFontWidget(
                    text: "  +9180892625634",
                    fontsize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ), //....................................... Student Phone Number
          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 2,
            child: DataContainerWidget(
                rowMainAccess: MainAxisAlignment.center,
                color: cWhite,
                // width: 150,
                index: index,
                headerTitle: 'Class '),
          ), //............................. Student Class

          const SizedBox(
            width: 01,
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                  child: Image.asset(
                    'assets/png/active.png',
                  ),
                ),
                const TextFontWidget(
                  text: "  Active",
                  fontsize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ), //............................. Status [Active or DeActivate]
        ],
      ),
    );
  }
}
