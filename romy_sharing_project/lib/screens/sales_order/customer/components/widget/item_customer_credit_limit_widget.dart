import 'package:flutter/material.dart';

class ItemCustomerCreditLimitWidget extends StatelessWidget {
  final String creditLimit;
  final String limitUsed;
  final String remainingLimit;
  final String currencyId;
  final String billTo;

  const ItemCustomerCreditLimitWidget({
    Key? key,
    required this.creditLimit,
    required this.limitUsed,
    required this.remainingLimit,
    required this.currencyId,
    required this.billTo
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            billTo.isNotEmpty ?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Credit Limit"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 4, child: Text(billTo)),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(currencyId),
                            Text(creditLimit),
                          ],
                        )),
                  ],
                ),
              ],
            ) : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 4, child: Text("Credit Limit")),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(currencyId),
                        Text(creditLimit),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex: 4, child: Text("Limit Used")),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(currencyId),
                        Text(limitUsed),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 4, child: Text("Remaining Limit")),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(currencyId),
                        Text(remainingLimit),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
