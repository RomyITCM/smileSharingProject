import 'package:flutter/material.dart';
import 'package:romy_sharing_project/screens/sales_order/sales_order_list/components/sales_order_list_body.dart';

import '../../../components/constants.dart';
import '../../../components/shared.dart';

class SalesOrderListScreen extends StatefulWidget {
  const SalesOrderListScreen({super.key});

  @override
  State<SalesOrderListScreen> createState() => _SalesOrderListScreenState();
}

class _SalesOrderListScreenState extends State<SalesOrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sales Order List"),
      ),
      body: SafeArea(child: SalesOrderListBody()),
    );
  }
}
