import 'package:flutter/material.dart';

import '../../../../../components/constants.dart';

class ItemCustomerPromoActiveWidget extends StatelessWidget {
  final String promoName;
  final String promoDesc;
  final String startPromo;
  final String endPromo;
  const ItemCustomerPromoActiveWidget({
    Key? key,
    required this.promoName,
    required this.promoDesc,
    required this.startPromo,
    required this.endPromo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(
            context: context,
            builder: (context) => promoDialog(context));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text(promoName, overflow: TextOverflow.ellipsis)),
            const Icon(Icons.navigate_next),
          ],
        ),
      ),
    );
  }

  Widget promoDialog(BuildContext context) {
    return AlertDialog(
      elevation: 2,
      contentPadding: EdgeInsets.all(12),
      titlePadding: EdgeInsets.all(12),
      title: Text(promoName, textAlign: TextAlign.center,),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      actions: [ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: const Text(kSubClose))],
      content: Wrap(
        children: [
          Text(promoDesc),
          Divider(),
          const Text('Periode Promo : ', style: TextStyle(fontSize: 14),),
          Text('$startPromo s/d $endPromo', style: TextStyle(fontSize: 14),),
          Divider(),
        ],
      ),
    );
  }
}
