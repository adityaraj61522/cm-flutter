import 'package:campus_media/ui/common/app_card.dart';
import 'package:campus_media/ui/common/app_input_text.dart';
import 'package:flutter/material.dart';

class CreateFeedCard extends StatelessWidget {
  const CreateFeedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      cardSize: const Size.fromHeight(200),
      cardBody: buildContent,
    );
  }

  Widget get buildContent {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(),
        SizedBox(
          width: 10,
        ),
        // InputTextFeild(
        //   border: true,
        //   maxLength: 500,
        //   maxlines: 1,
        // )
      ],
    );
  }
}
