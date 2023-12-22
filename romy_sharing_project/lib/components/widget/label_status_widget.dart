import 'package:flutter/material.dart';

import '../constants.dart';

class LabelStatusWidget extends StatelessWidget {
  final String label;
  final Color colorLabel;

  const LabelStatusWidget({
    Key? key,
    required this.label,
    required this.colorLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorLabel,
          borderRadius:
          const BorderRadius.all(Radius.circular(kDefaultLabelBorderRadius))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        child: Text(label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.white,
                fontSize: kFontSizeH5,
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}
