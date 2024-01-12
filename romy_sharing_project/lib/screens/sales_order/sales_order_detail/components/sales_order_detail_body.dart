import 'package:flutter/material.dart';
import 'package:romy_sharing_project/components/constants.dart';
import 'package:romy_sharing_project/components/widget/label_status_widget.dart';
import 'package:romy_sharing_project/screens/sales_order/sales_order_detail/components/widget/sales_order_products_view_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../components/shared.dart';

class SalesOrderDetailBody extends StatefulWidget {
  const SalesOrderDetailBody({super.key});

  @override
  State<SalesOrderDetailBody> createState() => _SalesOrderDetailBodyState();
}

class _SalesOrderDetailBodyState extends State<SalesOrderDetailBody> {
  List<Widget> listSalesOrderDetailView = [];
  List<dynamic> listProduct = [];

  @override
  Widget build(BuildContext context) {
    Color color = getColorLabel("Approved");
    listSalesOrderDetailView = [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ini nomor transno",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              LabelStatusWidget(label: "posted", colorLabel: color)
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trans Date",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Text(
                "22 Dec 2023",
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Salesman",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Text(
                "Dhany",
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: kPaddingBetweenTextField,
      ),
      const SizedBox(
        height: kPaddingBetweenTextField,
      ),
      const SizedBox(
        height: kPaddingBetweenTextField,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            kSubCartDeliveryTitle,
            style: TextStyle(
              fontSize: kFontSizeH3,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kSubCartDeliveryDate,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Text(
                  "Reqest Receive Date",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kReceiveDate,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Text(
                  "22 Dec 2023",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kSubCartShipTo,
                  style: TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Text(
                  "Nama Toko\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: kPaddingBetweenTextField,
      ),
      const SizedBox(
        height: kPaddingBetweenTextField,
      ),
      const SizedBox(
        height: kPaddingBetweenTextField,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            kSubCartOrderInformation,
            style: TextStyle(
              fontSize: kFontSizeH3,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kSubCartPONo,
                  style: TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Text(
                  "nnPO12345",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kSubCartAttachmentPO,
                  style: TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "nnPO234",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: kFontSizeH4,
                      fontWeight: FontWeight.w400,
                      color: kColorPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kSubCartTOP,
                  style: TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Text(
                  "30D",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kSubCartPODate,
                  style: TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Text(
                  "22 Dec 2023",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kSubCartPODateExp,
                  style: TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Text(
                  "22 Dec 2023",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kPaddingBetweenTextField,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 8,
                child: Text(
                  kSubCartBillTo,
                  style: TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorTextSecond,
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Text(
                  "Bill To\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: kFontSizeH4,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      SalesOrderProductViewWidget(listProduct: listProduct),
    ];
    return SafeArea(
      child: ScrollablePositionedList.builder(
        padding: const EdgeInsets.all(kPaddingDefaultPage),
        itemCount: listSalesOrderDetailView.length,
        itemBuilder: (context, index) => listSalesOrderDetailView[index],
      ),
    );
  }
}
