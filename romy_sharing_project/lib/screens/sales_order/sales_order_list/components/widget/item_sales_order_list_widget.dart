import 'package:flutter/material.dart';
import 'package:romy_sharing_project/components/widget/card_list_widget.dart';
import 'package:romy_sharing_project/components/widget/label_status_widget.dart';

import '../../../../../components/constants.dart';
import '../../../../../components/shared.dart';

class ItemSalesOrderListWidget extends StatelessWidget {
  final String transNo;
  final String transDate;
  final String status;
  final String shipTo;
  final String urlImage;
  final String articleDesc;
  final String qty;
  final String totalPrice;
  final String poDate;
  final String note;

  const ItemSalesOrderListWidget({
    Key? key,
    required this.transNo,
    required this.transDate,
    required this.status,
    required this.shipTo,
    required this.urlImage,
    required this.articleDesc,
    required this.qty,
    required this.totalPrice,
    required this.poDate,
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = getColorLabel(status);
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, kPathSalesOrderDetail);
      },
      child: CardListWidget(
        childCard: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(transNo,
                        style: const TextStyle(
                            fontSize: kFontSizeH4, fontWeight: FontWeight.bold)),
                    Text(
                      transDate,
                      style: const TextStyle(
                        fontSize: kFontSizeH5,
                        color: kColorTextThird,
                      ),
                    ),
                  ],
                ),
                LabelStatusWidget(
                    label: status, colorLabel: color),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kPaddingLarge),
              child: Text(
                shipTo,
                style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: kFontSizeH2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: urlImage.isNotEmpty
                      ? Container(
                    constraints:
                    const BoxConstraints.expand(width: kSizeDefaultCardPage, height: kSizeDefaultCardPage),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kSizeDefaultBorderRadius),
                      image: DecorationImage(
                          image: NetworkImage(urlImage),
                          fit: BoxFit.fill),
                    ),
                  ) : Container(
                    constraints:
                    const BoxConstraints.expand(width: kSizeDefaultCardPage, height: kSizeDefaultCardPage),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kSizeDefaultBorderRadius),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/benfarm_logo.jpg'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kPaddingContentTextField),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            articleDesc,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: kFontSizeH4),
                          ),
                          Text(qty,
                              style: const TextStyle(
                                fontSize: kFontSizeH5,
                                color: kColorTextThird,
                              )),
                          const SizedBox(
                            height: kPaddingBetweenTextField,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    kSubCartTotal,
                                    style: TextStyle(
                                      fontSize: kFontSizeH5,
                                      color: kColorTextThird,
                                    ),
                                  ),
                                  Text(totalPrice,
                                      style: const TextStyle(
                                          fontSize: kFontSizeH4,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    kSubCartDeliveryDate,
                                    style: TextStyle(
                                      fontSize: kFontSizeH5,
                                      color: kColorTextThird,
                                    ),
                                  ),
                                  Text(poDate,
                                      style: const TextStyle(
                                          fontSize: kFontSizeH4,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: kPaddingBetweenTextField,
                          ),
                          Visibility(
                            visible: note.isEmpty? false : true,
                            child: Text(
                              note,
                              style: const TextStyle(
                                fontSize: kFontSizeH5,
                                color: kColorTextThird,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
