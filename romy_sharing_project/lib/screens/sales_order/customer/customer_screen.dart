import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../components/shared.dart';
import '../../../components/shared_preferences.dart';
import 'components/customer_body_mobile.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {

  String _userId = '';

  @override
  void initState() {
    super.initState();

    Sessions.getUserId().then((userId){
      _userId = userId;
    });

  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Sessions.removeCustomer();
        Navigator.pushNamedAndRemoveUntil(context, kPathSalesOrderList,
            ModalRoute.withName(kPathSalesOrderList));
        return Future.value(false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Sold To'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Sessions.removeCustomer();
              Navigator.pushNamedAndRemoveUntil(context, kPathSalesOrderList,
                  ModalRoute.withName(kPathSalesOrderList));
            },
          ),
        ),
        body: SafeArea(
            child: Center(
              child: SizedBox(
                  width: widthDefault(context), child: const CustomerBodyMobile()),
            )),
      ),
    );
  }
}
