import 'package:campus_media/ui/common/app_card.dart';
import 'package:flutter/material.dart';

class DisplayFeedCard extends StatelessWidget {
  const DisplayFeedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      cardSize: const Size.fromHeight(500),
      cardBody: buildContent,
    );
  }

  Widget get buildContent {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildIntro(name: "Aditya Raj", photo: "photo", time: "time"),
        const SizedBox(height: 10),
        Text("text of piost"),
        const SizedBox(height: 10),
        Container(
          height: 300,
          color: Colors.red,
        ),
        Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: SizedBox.shrink()),
            Text("Like"),
            Expanded(child: SizedBox.shrink()),
            Text("Comment"),
            Expanded(child: SizedBox.shrink()),
            Text("Share"),
            Expanded(child: SizedBox.shrink()),
          ],
        )
      ],
    );
  }

  Widget buildIntro(
      {required String name, required String photo, required String time}) {
    return Row(
      children: [
        CircleAvatar(),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
            Text(
              time,
              style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
