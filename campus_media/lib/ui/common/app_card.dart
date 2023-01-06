import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppCard extends StatelessWidget {
  final double? headerHeight;
  final Color headerColor;
  final EdgeInsets headerPading;
  final String? cardTitle;
  final EdgeInsets cardMargin;
  final EdgeInsets cardPadding;
  final Size? cardSize;
  final Color cardBgColor;
  final VoidCallback? onTap;
  final Widget cardBody;

  const AppCard({
    Key? key,
    this.onTap,
    this.cardBgColor = Colors.white,
    this.cardSize,
    this.cardMargin = EdgeInsets.zero,
    this.cardPadding = const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    this.cardTitle,
    this.headerColor = Colors.blueAccent,
    this.headerHeight,
    this.headerPading = const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    this.cardBody = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (cardSize != null) ...[
          SizedBox(
            width: cardSize!.width,
            height: cardSize!.height,
            child: buildCard,
          )
        ] else ...[
          Flexible(
            child: buildCard,
          )
        ]
      ],
    );
  }

  Widget get buildCard {
    return Container(
      margin: cardMargin,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: cardBgColor,
      ),
      child: InkWell(
        onTap: () => onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [buildContent],
        ),
      ),
    );
  }

  Widget get buildContent {
    return Padding(
      padding: cardPadding,
      child: cardBody,
    );
  }
}
