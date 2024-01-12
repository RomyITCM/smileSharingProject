import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../components/shared.dart';

class DataCustomerCreditLimit {
  final String customerNo;
  final String billTo;
  final String currencyId;
  final String creditLimit;
  final String limitUsed;
  final String remainingLimit;

  DataCustomerCreditLimit({
    required this.customerNo,
    required this.billTo,
    required this.currencyId,
    required this.creditLimit,
    required this.limitUsed,
    required this.remainingLimit,
  });

  factory DataCustomerCreditLimit.item(Map<String, dynamic> object) {
    return DataCustomerCreditLimit(
      customerNo: object['customer_no'],
      billTo: object['bill_to'],
      currencyId: object['currency_id'],
      creditLimit: object['credit_limit'],
      limitUsed: object['limit_used'],
      remainingLimit: object['remaining_limit'],
    );
  }

  static Future<List<DataCustomerCreditLimit>> getCustomerCreditLimit(String customerNo) async {
    final params = {
      'customer_no': customerNo,
    };
    Uri uri = getUrl(pathUrl: 'customer/credit_limit', params: params);
    var apiResult = await http.get(uri);
    var jsonObject = json.decode(apiResult.body);
    var listCreditLimit = (jsonObject as Map<String, dynamic>)['result'];


    List<DataCustomerCreditLimit> dataCustomerCreditLimit = await listCreditLimit
        .map<DataCustomerCreditLimit>((json) => DataCustomerCreditLimit.item(json))
        .toList();

    return dataCustomerCreditLimit;
  }
}
