
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/app_bar/admin_profile/new_admin_profile.dart';
import 'package:vidyaveechi_website/view/users/admin/app_bar/message_notication/message_showing.dart';
import 'package:vidyaveechi_website/view/users/admin/app_bar/message_notication/notification_show.dart';

class AppBarAdminPanel extends StatefulWidget {
  const AppBarAdminPanel({
    super.key,
  });

  @override
  State<AppBarAdminPanel> createState() => _AppBarAdminPanelState();
}

class _AppBarAdminPanelState extends State<AppBarAdminPanel> {
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;
  OverlayEntry? overlayEntry2;
  OverlayEntry? overlayEntry3;
  bool showOverlay = false;
  int index = 0;
  final layerLink = LayerLink();
  final textButtonFocusNode = FocusNode();
  final textButtonFocusNode1 = FocusNode();
  final textButtonFocusNode2 = FocusNode();

  @override
  void initState() {
    textButtonFocusNode.addListener(() {
      if (textButtonFocusNode.hasFocus) {
        _showOverlay(context, 0);
      } else {
        removeOverlay();
      }
    });
    textButtonFocusNode1.addListener(() {
      if (textButtonFocusNode1.hasFocus) {
        _showOverlay(context, 1);
      } else {
        removeOverlay();
      }
    });
    textButtonFocusNode2.addListener(() {
      if (textButtonFocusNode2.hasFocus) {
        _showOverlay(context, 2);
      } else {
        removeOverlay();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: Container(
        color: Colors.white24,
        height: 70,
        width: double.infinity,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Color.fromARGB(255, 61, 94, 225)),
                  child: const DrawerIcon(),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 109,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Stevne Zone',
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: Text(
                              'Admin',
                              style: TextStyle(
                                  color: cBlack.withOpacity(0.5),
                                  fontSize: 10.7),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          focusNode: textButtonFocusNode2,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 18,
                            color: cBlack,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                adminProfileshowlist(context);
              },
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
                child: Image.asset(
                  'assets/png/avathar.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 15, right: 10),
                        child: IconButton(
                            focusNode: textButtonFocusNode,
                            onPressed: () {
                              messagesShowingFunction(context);
                            },
                            icon: Icon(
                              Icons.mail_outline_outlined,
                              color: cBlack.withOpacity(0.4),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 07, left: 22),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 42, 215, 197),
                            radius: 10,
                            child: GooglePoppinsWidgets(
                              text: '5',
                              fontsize: 11,
                              fontWeight: FontWeight.w600,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 10),
                        child: IconButton(
                            focusNode: textButtonFocusNode1,
                            onPressed: () {
                            notificationShowingFunctionOnAppBar(context);
                            },
                            icon: Icon(
                              Icons.notifications_none_outlined,
                              color: cBlack.withOpacity(0.4),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 07, left: 22),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 49, 49),
                            radius: 10,
                            child: GooglePoppinsWidgets(
                              text: '8',
                              fontsize: 11,
                              fontWeight: FontWeight.w600,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> widgets = [
    Container(height: 40, width: 60, color: Colors.transparent),
    Container(height: 40, width: 60, color: Colors.transparent),
    Container(height: 40, width: 60, color: Colors.transparent),
  ];
  void _showOverlay(BuildContext context, int index) async {
    overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(
        maintainState: true,
        builder: (context) {
          return Positioned(
            right: index == 0
                ? 160
                : index == 2
                    ? 100
                    : 120,
            top: 60,
            child: TextButton(
              onPressed: () {},
              onHover: (val) {
                if (val && showOverlay) {
                  if (index == 0) {
                    textButtonFocusNode.requestFocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.requestFocus();
                  } else if (index == 2) {
                    textButtonFocusNode2.requestFocus();
                  }
                } else {
                  if (index == 0) {
                    textButtonFocusNode.unfocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.unfocus();
                  } else if (index == 2) {
                    textButtonFocusNode2.unfocus();
                  }
                }
              },
              child: widgets[index],
            ),
          );
        });

    overlayEntry2 = OverlayEntry(
        maintainState: true,
        builder: (context) {
          return Positioned(
            right: index == 0
                ? 160
                : index == 2
                    ? 230
                    : 120,
            top: 60,
            child: TextButton(
              onPressed: () {},
              onHover: (val) {
                if (val && showOverlay) {
                  if (index == 0) {
                    textButtonFocusNode.requestFocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.requestFocus();
                  } else if (index == 2) {
                    textButtonFocusNode2.requestFocus();
                  }
                } else {
                  if (index == 0) {
                    textButtonFocusNode.unfocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.unfocus();
                  } else if (index == 2) {
                    textButtonFocusNode2.unfocus();
                  }
                }
              },
              child: widgets[index + 3],
            ),
          );
        });

    overlayState!.insertAll([
      overlayEntry!,
      overlayEntry2!,
    ]);
  }

  void removeOverlay() {
    overlayEntry!.remove();
    overlayEntry2!.remove();
  }
}
