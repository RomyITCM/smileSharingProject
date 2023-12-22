import 'package:flutter/material.dart';
import 'package:romy_sharing_project/screens/sales_order/sales_order_list/components/widget/item_sales_order_list_widget.dart';

import '../../../../components/constants.dart';
import '../../../../models/sales_order/sales_order_list/sales_order_list_getrows.dart';
import 'package:intl/intl.dart';

class SalesOrderListBody extends StatefulWidget {
  const SalesOrderListBody({super.key});

  @override
  State<SalesOrderListBody> createState() => _SalesOrderListBodyState();
}

class _SalesOrderListBodyState extends State<SalesOrderListBody> {
  int page = 0;
  final List<SalesOrderListGetrows> _listSalesOrder = [];
  final currentTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  final listControl = ScrollController();

  @override
  void initState() {
    super.initState();
    bindData(page.toString());

    listControl.addListener(() {
      if(listControl.position.maxScrollExtent == listControl.offset){
        page++;
        bindData(page.toString());
      }
    });
  }

  bindData(String page){
    SalesOrderListGetrows.getSalesOrderList(page, currentTime, "").then((value){
      setState(() {
        _listSalesOrder.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingDefaultPage),
      child: ListView.builder(
          controller: listControl,
          itemCount: _listSalesOrder.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemSalesOrderListWidget(
              transNo: _listSalesOrder[index].transNo,
              articleDesc: _listSalesOrder[index].articleDesc,
              note: _listSalesOrder[index].note,
              poDate: _listSalesOrder[index].poDate,
              qty: _listSalesOrder[index].qty,
              shipTo: _listSalesOrder[index].shipTo,
              status: _listSalesOrder[index].status,
              totalPrice: _listSalesOrder[index].totalPrice,
              transDate: _listSalesOrder[index].transDate,
              urlImage: _listSalesOrder[index].urlImage,
            );
          }),
    );
  }
}
