import 'dart:convert';

import '../../components/shared.dart';
import 'package:http/http.dart' as http;

class DataCustomerAddress{
  final String id;
  final String aliasName;
  final String aliasNameFull;
  final String streetAddress;
  final String provinceId;
  final String provinceName;
  final String cityId;
  final String cityName;
  final String districtId;
  final String districtName;
  final String latitude;
  final String longitude;
  final String storeFreezer;
  final String benFreezer;

  DataCustomerAddress({
    required this.id,
    required this.aliasName,
    required this.aliasNameFull,
    required this.streetAddress,
    required this.provinceId,
    required this.provinceName,
    required this.cityId,
    required this.cityName,
    required this.districtId,
    required this.districtName,
    required this.latitude,
    required this.longitude,
    required this.storeFreezer,
    required this.benFreezer,
  });

  factory DataCustomerAddress.item(Map<String, dynamic> object){
    return DataCustomerAddress(
      id: object['id'],
      aliasName: object['alias_name'],
      aliasNameFull: object['alias_name_full'],
      streetAddress: object['street_address'],
      provinceId: object['province_id'],
      provinceName: object['province_name'],
      cityId: object['city_id'],
      cityName: object['city_name'],
      districtId: object['district_id'],
      districtName: object['district_name'],
      latitude: object['latitude'],
      longitude: object['longitude'],
      storeFreezer: object['store_freezer'],
      benFreezer: object['ben_freezer'],
    );
  }

  static Future<List<DataCustomerAddress>> getRowsCustomerAddress(String customerNo, String search) async{
    final params = {
      'customer_no' : customerNo,
      'search' : search
    };
    Uri uri = getUrl(pathUrl: 'customer/customer_address_getrows', params: params);
    var apiResult = await http.get(uri);
    var jsonObject = json.decode(apiResult.body);
    var listOut = (jsonObject as Map<String, dynamic>)['result'];
    List<DataCustomerAddress> outlet = await listOut
        .map<DataCustomerAddress>((json) => DataCustomerAddress.item(json))
        .toList();

    return outlet;
  }
}