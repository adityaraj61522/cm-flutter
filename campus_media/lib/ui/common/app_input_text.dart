import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputTextFeild extends StatefulWidget {
  final String? label;
  final String? hint;
  final bool? disabled;
  final int? maxlines;
  final TextEditingController? controller;
  final Color? color;
  final bool? optional;
  final int? maxLength;
  final bool border;
  final bool? showInputCounter;

  const InputTextFeild({
    Key? key,
    this.border = false,
    this.color,
    this.controller,
    this.disabled = false,
    this.hint,
    this.label,
    this.maxLength,
    this.maxlines,
    this.optional = true,
    this.showInputCounter = false,
  }) : super(key: key);

  @override
  InputTextFeildState createState() => InputTextFeildState();
}

class InputTextFeildState extends State<InputTextFeild> {
  late final TextEditingController effectiveController;
  @override
  void initState() {
    super.initState();
    effectiveController = widget.controller ?? TextEditingController();
  }

  @override
  build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [labelWidget, textFeild],
    );
  }

  Widget get labelWidget {
    return widget.label != null
        ? Text(
            widget.label!.toUpperCase(),
            style: const TextStyle(
                color: Colors.grey, fontSize: 9, fontWeight: FontWeight.w700),
          )
        : const SizedBox.shrink();
  }

  Widget get textFeild {
    return TextFormField(
      enabled: widget.disabled,
      cursorHeight: 18,
      cursorWidth: 0.7,
      controller: widget.controller,
      // decoration: (widget.border
      //     ? InputDecoration(
      //         enabledBorder: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(50),
      //         ),
      //       )
      //     : InputDecoration(
      //         hintText: widget.hint,border: Border.fromBorderSide()
      //       )),
    );
  }
}
