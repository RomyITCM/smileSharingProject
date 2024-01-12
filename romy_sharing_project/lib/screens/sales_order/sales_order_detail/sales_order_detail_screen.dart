import 'package:flutter/material.dart';

import '../../../components/shared.dart';
import 'components/sales_order_detail_body.dart';

class SalesOrderDetailScreen extends StatefulWidget {
  const SalesOrderDetailScreen({super.key});

  @override
  State<SalesOrderDetailScreen> createState() => _SalesOrderDetailScreenState();
}

class _SalesOrderDetailScreenState extends State<SalesOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pop();
        return Future.value(false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Detail Transaction'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
            child: Center(
              child: SizedBox(
                  width: widthDefault(context),
                  child: const SalesOrderDetailBody()),
            )),
      ),
    );
  }
}
