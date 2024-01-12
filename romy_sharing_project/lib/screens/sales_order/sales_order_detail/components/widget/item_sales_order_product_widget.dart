import 'package:flutter/material.dart';
import 'package:romy_sharing_project/components/constants.dart';

class ItemSalesOrderProduct extends StatelessWidget {
  final String articleName;
  final String qty;
  final String uom;
  final String price;
  final String totalPrice;
  final String image;

  const ItemSalesOrderProduct({
    Key? key,
    required this.articleName,
    required this.qty,
    required this.uom,
    required this.price,
    required this.totalPrice,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          image.isEmpty ? Container() : Container(),
          const SizedBox(
            width: kPaddingXLarge,
          ),
          Flexible(
            child: Column(
              children: [
                SizedBox(
                  width: 240,
                  child: Text(
                    articleName,
                    style: TextStyle(fontSize: kFontSizeH4),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "$qty $uom",
                      style: TextStyle(
                          fontSize: kFontSizeH4, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' x ',
                      style: TextStyle(fontSize: kFontSizeH4),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: kFontSizeH4, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
