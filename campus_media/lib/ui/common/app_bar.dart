import 'package:campus_media/ui/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controller = Get.put(LoginPageController());
AppBar appBar(BuildContext context) {
  return AppBar(
    actions: [
      Center(child: Text('Insticonnect')),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.feed,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.question_mark_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.work,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.person_off_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
            ),
          ],
        ),
      ),
      Center(child: Text('Logout')),
    ],
    // centerTitle: true,
  );
}
