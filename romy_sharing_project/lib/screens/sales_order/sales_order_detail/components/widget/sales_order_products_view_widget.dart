import 'package:flutter/material.dart';
import 'package:romy_sharing_project/screens/sales_order/sales_order_detail/components/widget/item_sales_order_product_widget.dart';

class SalesOrderProductViewWidget extends StatelessWidget {
  final List<dynamic> listProduct;

  const SalesOrderProductViewWidget({
    Key? key,
    required this.listProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Detail Products',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ListView.builder(
          shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) {
              return ItemSalesOrderProduct(
                  articleName: "Nugget",
                  qty: "5",
                  uom: "CTN6",
                  price: "20.000",
                  totalPrice: "30.000",
                  image: "");
            })
      ],
    );
  }
}
