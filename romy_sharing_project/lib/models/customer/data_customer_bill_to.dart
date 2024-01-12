import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../components/shared.dart';

class DataCustomerBillTo {
  final int id;
  final String billToName;
  final String billToAddress;

  DataCustomerBillTo({
    required this.id,
    required this.billToName,
    required this.billToAddress,
  });

  factory DataCustomerBillTo.item(Map<String, dynamic> object) {
    return DataCustomerBillTo(
      id: object['bill_to_id'],
      billToName: object['bill_to_name'],
      billToAddress: object['bill_to_address'],
    );
  }

  static Future<List<DataCustomerBillTo>> getBillTo(
      String customer, String search) async {
    final params = {
      'customer': customer,
      'search': search,
    };
    Uri uri = getUrl(pathUrl: 'customer/bill_to', params: params);
    var apiResult = await http.get(uri);
    var jsonObject = json.decode(apiResult.body);
    var listBillTo = (jsonObject as Map<String, dynamic>)['result'];

    List<DataCustomerBillTo> dataCustomersBillTo = await listBillTo
        .map<DataCustomerBillTo>((json) => DataCustomerBillTo.item(json))
        .toList();
    return dataCustomersBillTo;
  }
}
