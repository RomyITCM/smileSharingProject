import 'dart:convert';

import 'package:romy_sharing_project/components/shared.dart';
import 'package:http/http.dart' as http;

class SalesOrderListGetrows {
  final String transNo;
  final String transDate;
  final String status;
  final String shipTo;
  final String poDate;
  final String totalPrice;
  final String articleDesc;
  final String qty;
  final String note;
  final String urlImage;

  SalesOrderListGetrows({
    required this.transNo,
    required this.transDate,
    required this.status,
    required this.shipTo,
    required this.poDate,
    required this.totalPrice,
    required this.articleDesc,
    required this.qty,
    required this.note,
    required this.urlImage,
  });

  factory SalesOrderListGetrows.item(Map<String, dynamic> object) {
    return SalesOrderListGetrows(
      transNo: object['trans_no'],
      transDate: object['trans_date'],
      status: object['status'],
      shipTo: object['ship_to'],
      poDate: object['po_date'],
      totalPrice: object['total_price'],
      articleDesc: object['article_desc'],
      qty: object['qty'],
      note: object['note'],
      urlImage: object['url_image'],
    );
  }

  static Future<List<SalesOrderListGetrows>> getSalesOrderList(
      String page, String timeStamp, String search) async {
    final params = {
      'page': page,
      'time_stamp': timeStamp,
      'search': search,
    };
    Uri uri = getUrl(pathUrl: 'history_transaction/list', params: params);
    var apiResult = await http.get(uri);
    var jsonObj = json.decode(apiResult.body);
    var listObj = (jsonObj as Map<String, dynamic>)['result'];
    List<SalesOrderListGetrows> result = await listObj
        .map<SalesOrderListGetrows>((json) => SalesOrderListGetrows.item(json))
        .toList();

    return result;
  }
}
