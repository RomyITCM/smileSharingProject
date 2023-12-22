import 'package:flutter/material.dart';

class CardListWidget extends StatelessWidget {
  const CardListWidget({Key? key, required this.childCard}) : super(key: key);

  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: childCard,
      ),
    );
  }
}
