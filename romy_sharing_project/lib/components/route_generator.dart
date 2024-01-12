import 'package:flutter/material.dart';
import 'package:romy_sharing_project/screens/commons/dashboard/dashboard_screen.dart';
import 'package:romy_sharing_project/screens/commons/landing/landing_screen.dart';
import 'package:romy_sharing_project/screens/commons/login/login_screen.dart';
import 'package:romy_sharing_project/screens/sales_order/sales_order_detail/sales_order_detail_screen.dart';
import 'package:romy_sharing_project/screens/sales_order/sales_order_list/sales_order_list_screen.dart';

import '../screens/sales_order/customer/customer_screen.dart';
import 'constants.dart';

class RouteGenerator{
  static Route<dynamic> routeGenerator(RouteSettings settings){
    switch (settings.name){
      case kPathLanding:
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      case kPathLogin:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case kPathDashBoard:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case kPathSalesOrderList:
        return MaterialPageRoute(builder: (_) => const SalesOrderListScreen());
      case kPathSalesOrderDetail:
        return MaterialPageRoute(builder: (_) => const SalesOrderDetailScreen());
      case kPathCustomer:
        return MaterialPageRoute(builder: (_) => const CustomerScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: const Text("Error"),),
        body: const Center(child: Text("Error Page")),
      );
    });
  }
}