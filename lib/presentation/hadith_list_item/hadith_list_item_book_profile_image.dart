import 'package:flutter/material.dart';

class HadithListItemBookProfileImage extends StatelessWidget {
  const HadithListItemBookProfileImage({
    Key? key,
    required this.imageColor,
    required this.imageText,
  }) : super(key: key);

  final Color imageColor;
  final String imageText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: imageColor,
      ),
      child: Center(
        child: Text(
          imageText,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).cardColor),
        ),
      ),
    );
  }
}
