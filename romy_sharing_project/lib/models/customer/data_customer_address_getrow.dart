import 'dart:convert';

import '../../components/shared.dart';
import 'package:http/http.dart' as http;

class DataCustomerAddressDetail{
  final String id;
  final String aliasName;
  final String aliasNameFull;
  final String customerNo;
  final String storeArea;
  final String storeImg;
  final String streetAddress;
  final String provinceId;
  final String province;
  final String cityId;
  final String city;
  final String districtId;
  final String district;
  final String subdistrictId;
  final String subdistrict;
  final String zipCode;
  final String latitude;
  final String longitude;
  final String phoneNo;
  final String mobilePhoneNo;
  final String email;
  final String status;
  final String salesman;
  final String regionId;
  final String areaId;
  final String zoneId;
  final String billTo;
  final String shipSchedule;

  DataCustomerAddressDetail({
    required this.id,
    required this.aliasName,
    required this.aliasNameFull,
    required this.customerNo,
    required this.storeArea,
    required this.storeImg,
    required this.streetAddress,
    required this.provinceId,
    required this.province,
    required this.cityId,
    required this.city,
    required this.districtId,
    required this.district,
    required this.subdistrictId,
    required this.subdistrict,
    required this.zipCode,
    required this.latitude,
    required this.longitude,
    required this.phoneNo,
    required this.mobilePhoneNo,
    required this.email,
    required this.status,
    required this.salesman,
    required this.regionId,
    required this.areaId,
    required this.zoneId,
    required this.billTo,
    required this.shipSchedule
  });

  factory DataCustomerAddressDetail.item(Map<String, dynamic> object){
    return DataCustomerAddressDetail(
        id: object['id'],
        aliasName: object['alias_name'],
        aliasNameFull: object['alias_name_full'],
        customerNo: object['customer_no'],
        storeArea: object['store_area'],
        storeImg: object['store_img'],
        streetAddress: object['street_address'],
        provinceId: object['province_id'],
        province: object['province'],
        cityId: object['city_id'],
        city: object['city'],
        districtId: object['district_id'],
        district: object['district'],
        subdistrictId: object['subdistrict_id'],
        subdistrict: object['subdistrict'],
        zipCode: object['zip_code'],
        latitude: object['latitude'],
        longitude: object['longitude'],
        phoneNo: object['phone_no'],
        mobilePhoneNo: object['mobile_phone_no'],
        email: object['email'],
        status: object['status'],
        salesman: object['salesman'],
        regionId: object['region_id'],
        areaId: object['area_id'],
        zoneId: object['zone_id'],
        billTo: object['bill_to'],
        shipSchedule: object['ship_schedule']
    );
  }

  static Future<List<DataCustomerAddressDetail>> getRowCustomerAddressDetail(String custAddId) async{
    final params = {
      'customer_address_id' : custAddId
    };
    Uri uri = getUrl(pathUrl: 'customer/customer_address_getrow', params: params);
    var apiResult = await http.get(uri);
    var jsonObject = json.decode(apiResult.body);
    var listOut = (jsonObject as Map<String, dynamic>)['result'];
    List<DataCustomerAddressDetail> outlet = await listOut
        .map<DataCustomerAddressDetail>((json) => DataCustomerAddressDetail.item(json))
        .toList();

    return outlet;
  }
}