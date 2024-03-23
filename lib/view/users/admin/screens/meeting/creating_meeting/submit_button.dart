import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';

class SubmitButtonMeetinWidget extends StatelessWidget {
  const SubmitButtonMeetinWidget({
    super.key,
    required this.size,
  //  required this.adminMeetingController,
   // required this.schoolId,
  });

  final Size size;
  //final AdminMeetingController adminMeetingController;
 // final String schoolId;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 1 / 30,
      width: size.width * 1 / 5,
      decoration: BoxDecoration(
          color:adminePrimayColor, borderRadius: BorderRadius.circular(14)),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          padding: const EdgeInsets.all(9.0),
          textStyle: const TextStyle(fontSize: 17),
        ),
        onPressed: () {
          // adminMeetingController.addAdminMeeting(
          //     schoolId,
          //     AdminMeetingModel(
          //       date: adminMeetingController.dateController.text,
          //       heading: adminMeetingController.headingController.text,
          //       categoryOfMeeting:
          //           adminMeetingController.categoryOfMeetingController.text,
          //       membersToBeExpected:
          //           adminMeetingController.membersTobeExpectedController.text,
          //       specialGuest:
          //           adminMeetingController.specialGuestController.text,
          //       time: adminMeetingController.timeController.text,
          //       venue: adminMeetingController.venueController.text,
          //       meetingId: '',
          //       visibleGuardian: adminMeetingController.guardianCheckBox.value,
          //       visibleStudent: adminMeetingController.studentCheckBox.value,
          //       visibleTeacher: adminMeetingController.teacherCheckBox.value,
          //     ));
        },
        child: const Text('Create'),
      ),
    );
  }
}