import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  final Color colorCard;
  final Widget? childCard;

  const CardWidget({
    Key? key,
    required this.colorCard, this.childCard
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorCard,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: childCard,
    );
  }
}
