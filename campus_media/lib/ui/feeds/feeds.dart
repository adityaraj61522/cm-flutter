import 'package:campus_media/ui/common/create_feed.dart';
import 'package:campus_media/ui/common/display_feed_content.dart';
import 'package:campus_media/ui/common/page_builder.dart';
import 'package:campus_media/ui/feeds/feeds_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class FeedsSection extends StatelessWidget {
  FeedsSection({
    Key? key,
  }) : super(key: key);

  final controller = Get.put(FeedSectionController());

  @override
  Widget build(BuildContext context) {
    return PageBuilder(widget: buildContent());
  }

  Widget buildContent() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            color: Get.theme.backgroundColor,
            child: buildDesktopContent(),
          );
        } else {
          return Container(
            color: Get.theme.backgroundColor,
            child: buildMobileContent(),
          );
        }
      },
    );
  }

  Widget buildDesktopContent() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  child: const SizedBox.shrink(),
                )),
            Expanded(
              flex: 3,
              child: CustomScrollView(
                slivers: [
                  const CreateFeedCard(),
                  const SizedBox(
                    height: 10,
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return index % 2 == 0
                          ? const DisplayFeedCard()
                          : const SizedBox(
                              height: 10,
                            );
                    }, childCount: 5),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                  child: const SizedBox.shrink(),
                ))
          ],
        )
      ],
    );
  }

  Widget buildMobileContent() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  DisplayFeedCard(),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
