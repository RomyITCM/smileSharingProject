import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../constants.dart';

class ConfirmBox extends StatelessWidget {
  final bool type;
  final IconData iconData;
  final String title;
  final String body;
  final Function function;
  const ConfirmBox({
    Key? key,
    required this.type,
    required this.iconData,
    required this.title,
    required this.body,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          AlertDialog(
            contentPadding: const EdgeInsets.all(8.0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: type ? kColorAccentPrimary : kRedAccentColor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(iconData,
                          color: type ? kColorPrimary : kColorRed),
                      // child: type
                      //     ? const Icon(Icons.receipt_long_outlined,
                      //         color: kPrimaryColor)
                      //     : const Icon(Icons.warning_amber, color: kRedColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    body,
                    style: const TextStyle(color: kColorTextThird),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SizedBox(
                          height: kDefaultHeightButtonDialog,
                          width: kDefaultWidthButtonDialog,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: Colors.white,
                              side: BorderSide(
                                  color: type ? kColorPrimary : kColorRed),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: type ? kColorPrimary : kColorRed),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SizedBox(
                          height: kDefaultHeightButtonDialog,
                          width: kDefaultWidthButtonDialog,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: type ? kColorPrimary : kColorRed,
                            ),
                            onPressed: () {
                              SmartDialog.showLoading();
                              function(context);
                            },
                            child: const Text('Confirm'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
