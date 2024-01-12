import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../components/shared.dart';

class DataCustomerPromo {
  final String promoCode;
  final String promoName;
  final String promoDesc;
  final String startPromoDate;
  final String endPromoDate;

  DataCustomerPromo({
    required this.promoCode,
    required this.promoName,
    required this.promoDesc,
    required this.startPromoDate,
    required this.endPromoDate,
  });

  factory DataCustomerPromo.item(Map<String, dynamic> object) {
    return DataCustomerPromo(
      promoCode: object['promo_code'],
      promoName: object['promo_name'],
      promoDesc: object['promo_desc'],
      startPromoDate: object['start_promo_date'],
      endPromoDate: object['end_promo_date'],
    );
  }

  static Future<List<DataCustomerPromo>> getCustomer(String customerNo, String customerType) async {
    final params = {
      'customer_no': customerNo,
      'customer_type': customerType,
    };
    Uri uri = getUrl(pathUrl: 'customer/promo',params: params);
    var apiResult = await http.get(uri);
    var jsonObject = json.decode(apiResult.body);
    var result = (jsonObject as Map<String, dynamic>)['result'];

    List<DataCustomerPromo> dataCustomerPromo = await result
        .map<DataCustomerPromo>((json) => DataCustomerPromo.item(json))
        .toList();
    return dataCustomerPromo;
  }
}