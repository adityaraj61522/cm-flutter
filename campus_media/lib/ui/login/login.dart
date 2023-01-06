import 'package:campus_media/ui/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Text("hiii");
  }
}
