import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../components/shared.dart';

class DataCustomerShipTo {
  final int id;
  final String shipToName;
  final String shipToAddress;
  final String priceZone;
  final String siteId;
  final String siteName;
  final String siteAddress;
  final bool shipToStatus;
  final String tripZone;

  DataCustomerShipTo({
    required this.id,
    required this.shipToName,
    required this.shipToAddress,
    required this.priceZone,
    required this.siteId,
    required this.siteName,
    required this.siteAddress,
    required this.shipToStatus,
    required this.tripZone,
  });

  factory DataCustomerShipTo.item(Map<String, dynamic> object) {
    return DataCustomerShipTo(
      id: object['ship_to_id'],
      shipToName: object['ship_to_name'],
      shipToAddress: object['ship_to_address'],
      priceZone: object['price_zone'],
      siteId: object['site_id'],
      siteName: object['site_name'],
      siteAddress: object['site_address'],
      shipToStatus: object['ship_to_status'],
      tripZone: object['trip_zone'],
    );
  }

  static Future<List<DataCustomerShipTo>> getShipTo(
      String customer, String search) async {
    final params = {
      'customer': customer,
      'search': search,
    };
    Uri uri = getUrl(pathUrl: 'customer/ship_to', params: params);
    print(uri);
    var apiResult = await http.get(uri);
    var jsonObject = json.decode(apiResult.body);
    var listShipTo = (jsonObject as Map<String, dynamic>)['result'];
    List<DataCustomerShipTo> dataCustomersShipTo = await listShipTo
        .map<DataCustomerShipTo>((json) => DataCustomerShipTo.item(json))
        .toList();
    return dataCustomersShipTo;
  }
}
