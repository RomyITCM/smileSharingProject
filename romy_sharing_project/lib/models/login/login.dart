import 'dart:convert';

import 'package:romy_sharing_project/components/shared.dart';
import 'package:http/http.dart' as http;

class Login{
  final String userId;
  final String userName;
  final String roleCode;
  final String division;
  final String dept;
  final String email;
  final String phone;
  final String imageUrl;
  final String message;

  Login({
      required this.userId,
      required this.userName,
      required this.roleCode,
      required this.division,
      required this.dept,
      required this.email,
      required this.phone,
      required this.imageUrl,
      required this.message,
  });

  factory Login.item(Map<String, dynamic> object){
    return Login(
        userId: object['user_id'],
        userName: object['user_name'],
        roleCode: object['role_code'],
        division: object['division'],
        dept: object['dept'],
        email: object['email'],
        phone: object['phone'],
        imageUrl: object['image_url'],
        message: object['message'],
    );
  }

  static Future<Login> getLogin(body) async{
    Uri uri = getUrl(pathUrl: 'login');
    var params = jsonEncode(body);
    final apiResult = await http.post(
        uri,
      headers: {
          "Accept":"application/json"
      },
      body: params,
    );

    print(uri);
    print(params);
    var jsonObj = json.decode(apiResult.body);
    var objLogin = (jsonObj as Map<String, dynamic>)['result'];

    Login dataLogin = Login.item(objLogin);

    return dataLogin;
  }


}