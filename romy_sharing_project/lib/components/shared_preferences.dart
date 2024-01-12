import 'package:shared_preferences/shared_preferences.dart';

class Sessions{
  static const keyUserId = "userId";
  static const keyUserName = "userName";
  static const keyRoleCode = "roleCode";
  static const keyDivision = "division";
  static const keyDept = "dept";
  static const keyEmail = "email";
  static const keyPhone = "phone";
  static const keyImageUrl = "imageUrl";
  static const keyCustomerId = "customerId";
  static const keyCustomerName = "customerName";
  static const keyCustomerAddress = "customerAddress";
  static const keyCustomerType = "customerType";
  static const keyCustomerTypeDesc = "customerTypeDesc";
  static const keyCustomerStatus = "customerStatus";
  static const keyShipToId = "shipToId";
  static const keyShipToName = "shipToName";
  static const keyShipToAddress = "shipToAddress";
  static const keyShipToPriceZone = "shipToPriceZone";
  static const keyShipToTripZone = "shipToTripZone";
  static const keyShipToStatus = "shipToStatus";
  static const keySiteId = "siteId";
  static const keySiteName = "siteName";
  static const keySiteAddress = "siteAddress";
  static const keyBillToId = "billToId";
  static const keyBillToName = "billToName";
  static const keyBillToAddress = "billToAddress";

  static Future<void> setLoginPreference({
    required String userId,
    required String userName,
    required String roleCode,
    required String division,
    required String dept,
    required String email,
    required String phone,
    required String imageUrl,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString(keyUserId, userId);
    prefs.setString(keyUserName, userName);
    prefs.setString(keyRoleCode, roleCode);
    prefs.setString(keyDivision, division);
    prefs.setString(keyDept, dept);
    prefs.setString(keyEmail, email);
    prefs.setString(keyPhone, phone);
    prefs.setString(keyImageUrl, imageUrl);
  }

  static Future<String> getUserId() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyUserId) ?? "";
  }

  static Future<String> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyUserName) ?? "";
  }

  static Future<String> getRoleCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyRoleCode) ?? "";
  }

  static Future<String> getDivision() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyDivision) ?? "";
  }

  static Future<String> getDept() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyDept) ?? "";
  }

  static Future<String> getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyEmail) ?? "";
  }

  static Future<String> getPhone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyPhone) ?? "";
  }

  static Future<String> getImageUrl() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyImageUrl) ?? "";
  }

  static void setCustomerPreference({
    required String customerId,
    required String customerName,
    required String customerAddress,
    required String customerType,
    required String customerTypeDesc,
    required bool customerStatus,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString(keyCustomerId, customerId);
    prefs.setString(keyCustomerName, customerName);
    prefs.setString(keyCustomerAddress, customerAddress);
    prefs.setString(keyCustomerType, customerType);
    prefs.setString(keyCustomerTypeDesc, customerTypeDesc);
    prefs.setBool(keyCustomerStatus, customerStatus);
  }

  static Future<String> getCustomerId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyCustomerId) ?? "";
  }

  static Future<String> getCustomerName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyCustomerName) ?? "";
  }

  static Future<String> getCustomerAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyCustomerAddress) ?? "";
  }

  static Future<String> getCustomerType() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyCustomerType) ?? "";
  }

  static Future<String> getCustomerTypeDesc() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyCustomerTypeDesc) ?? "";
  }

  static Future<bool> getCustomerStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyCustomerStatus) ?? false;
  }

  static void setShipToPreference({
    required String shipToId,
    required String shipToName,
    required String shipToAddress,
    required String priceZone,
    required String siteId,
    required String siteName,
    required String siteAddress,
    required String tripZone,
    required bool status,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString(keyShipToId, shipToId);
    prefs.setString(keyShipToName, shipToName);
    prefs.setString(keyShipToAddress, shipToAddress);
    prefs.setString(keyShipToPriceZone, priceZone);
    prefs.setString(keySiteId, siteId);
    prefs.setString(keySiteName, siteName);
    prefs.setString(keySiteAddress, siteAddress);
    prefs.setString(keyShipToTripZone, tripZone);
    prefs.setBool(keyShipToStatus, status);
  }

  static Future<String> getShipToId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyShipToId) ?? "";
  }

  static Future<String> getShipToName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyShipToName) ?? "";
  }

  static Future<String> getShipToAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyShipToAddress) ?? "";
  }

  static Future<String> getShipToPriceZone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyShipToPriceZone) ?? "";
  }

  static Future<String> getSiteId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keySiteId) ?? "";
  }

  static Future<String> getSiteName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keySiteName) ?? "";
  }

  static Future<String> getSiteAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keySiteAddress) ?? "";
  }

  static Future<String> getShipToTripZone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyShipToTripZone) ?? "";
  }

  static Future<bool> getShipToStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyShipToStatus) ?? false;
  }

  static void setBillToPreference({
    required String billToId,
    required String billToName,
    required String billToAddress,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString(keyBillToId, billToId);
    prefs.setString(keyBillToName, billToName);
    prefs.setString(keyBillToAddress, billToAddress);
  }

  static Future<String> getBillToId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyBillToId) ?? "";
  }

  static Future<String> getBillToName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyBillToName) ?? "";
  }

  static Future<String> getBillToAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyBillToAddress) ?? "";
  }

  static void remove() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(keyUserId);
    await prefs.remove(keyUserName);
    await prefs.remove(keyRoleCode);
    await prefs.remove(keyCustomerId);
    await prefs.remove(keyCustomerName);
    await prefs.remove(keyCustomerAddress);
    await prefs.remove(keyCustomerType);
    await prefs.remove(keyShipToId);
    await prefs.remove(keyShipToName);
    await prefs.remove(keyShipToAddress);
    await prefs.remove(keyShipToPriceZone);
  }

  static void removeCustomer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(keyCustomerId);
    await prefs.remove(keyCustomerName);
    await prefs.remove(keyCustomerAddress);
    await prefs.remove(keyCustomerType);
  }

  static void removeShipTo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(keyShipToId);
    await prefs.remove(keyShipToName);
    await prefs.remove(keyShipToAddress);
    await prefs.remove(keyShipToPriceZone);
  }

  static void removeBillTo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(keyBillToId);
    await prefs.remove(keyBillToName);
    await prefs.remove(keyBillToAddress);
  }

  static void clearCustomer() {
    removeCustomer();
    removeShipTo();
  }

  static void clearTransaction() {
    removeCustomer();
    removeShipTo();
    removeBillTo();
  }
}