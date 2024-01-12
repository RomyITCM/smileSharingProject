import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../components/shared.dart';

class DataCustomer {
  final String id;
  final String customerName;
  final String customerAddress;
  final String customerType;
  final String customerTypeDesc;
  final bool customerStatus;

  DataCustomer({
    required this.id,
    required this.customerName,
    required this.customerAddress,
    required this.customerType,
    required this.customerTypeDesc,
    required this.customerStatus,
  });

  factory DataCustomer.item(Map<String, dynamic> object) {
    return DataCustomer(
      id: object['customer_no'],
      customerName: object['customer_name'],
      customerAddress: object['customer_address'],
      customerType: object['customer_type'],
      customerTypeDesc: object['customer_type_desc'],
      customerStatus: object['customer_status'],
    );
  }

  static Future<List<DataCustomer>> getCustomer(String search) async {
    final params = {
      'search': search,
    };
    Uri uri = getUrl(pathUrl: 'customer', params: params);
    var apiResult = await http.get(uri);
    var jsonObject = json.decode(apiResult.body);
    var listBillTo = (jsonObject as Map<String, dynamic>)['result'];

    List<DataCustomer> dataCustomer = await listBillTo
        .map<DataCustomer>((json) => DataCustomer.item(json))
        .toList();
    return dataCustomer;
  }
}
