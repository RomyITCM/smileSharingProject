import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:romy_sharing_project/components/shared_preferences.dart';
import 'package:romy_sharing_project/components/widget/card_widget.dart';
import 'package:romy_sharing_project/models/login/login.dart';

import '../../../../components/shared.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {

  bool _isObscure = true;
  bool _wrongPassword = false;
  String message = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController controllerUser = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
            height: widthDefault(context),
              width: widthDefault(context),
              child:  CardWidget(
                  colorCard: Colors.blue,
                  childCard: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                              child: Image.asset('assets/images/smile.png')),
                          Form(
                            key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("User"),
                                  SizedBox(height: 4,),
                                  TextFormField(
                                    controller: controllerUser,
                                    validator: (value){
                                      if(value == null || value.isEmpty){
                                        return 'Please input your user or nik.';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                                    ],
                                    decoration: InputDecoration(
                                      enabledBorder: defaultInputBorder(),
                                      focusedBorder: defaultFocusBorder(),
                                      errorBorder: defaultErrorBorder(),
                                      border: defaultErrorBorder(),
                                    ),
                                  )
                                ],
                              ), //ini column user
                              const SizedBox(height: 8,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Password"),
                                  const SizedBox(height: 4,),
                                  TextFormField(
                                    controller: controllerPassword,
                                    validator: (value){
                                      if(value == null || value.isEmpty){
                                        return 'Please input your password.';
                                      }else if(_wrongPassword){
                                        return message;
                                      }
                                      return null;
                                    },
                                    obscureText: _isObscure,
                                    decoration: InputDecoration(
                                      enabledBorder: defaultInputBorder(),
                                      focusedBorder: defaultFocusBorder(),
                                      errorBorder: defaultErrorBorder(),
                                      border: defaultErrorBorder(),
                                      suffixIcon: IconButton(
                                        icon: Icon(_isObscure
                                            ? Icons.visibility_rounded
                                            : Icons.visibility_off_outlined
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _isObscure = !_isObscure;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ), //ini column password
                              const SizedBox(height: 18,),
                              SizedBox(
                                width: double.infinity,
                                  child: ElevatedButton(onPressed: (){
                                    _wrongPassword = false;
                                    if(_formKey.currentState!.validate()){
                                      signIn(password: controllerPassword.value.text,
                                          nik: controllerUser.value.text);
                                    }
                                  }, child: const Text('Login'))) //ini button login
                            ],
                          )),
                        ],
              ),
                  ),)
            ),
          ),
        ));
  }

  void signIn({required String nik, required String password}) {
    var map = <String, dynamic> {};
    map['user_name'] = nik;
    map['password'] = password;

    Login.getLogin(map).then((value){
      if(value.userId.isNotEmpty){
        Sessions.setLoginPreference(
            userId: value.userId,
            userName: value.userName,
            roleCode: value.roleCode,
            division: value.division,
            dept: value.dept,
            email: value.email,
            phone: value.phone,
            imageUrl: value.imageUrl);

          Sessions.getUserId().then((value){
            Sessions.getUserName().then((value2){
              print(value);
              print(value2);
            });
          });


      }else{
        _wrongPassword = true;
        _formKey.currentState!.validate();
        message = value.message;
      }
    });


  }
}

