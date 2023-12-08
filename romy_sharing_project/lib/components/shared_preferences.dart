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
}