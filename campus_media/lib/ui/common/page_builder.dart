import 'package:campus_media/ui/common/app_bar.dart';
import 'package:campus_media/ui/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageBuilder extends StatelessWidget {
  PageBuilder({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Widget widget;

  final controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(context), body: widget);
  }
}
