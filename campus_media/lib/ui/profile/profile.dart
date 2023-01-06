import 'package:campus_media/ui/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({
    Key? key,
  }) : super(key: key);

  final controller = Get.put(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    return Text("hiii");
  }
}
