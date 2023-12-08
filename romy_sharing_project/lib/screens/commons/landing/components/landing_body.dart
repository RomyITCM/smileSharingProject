import 'package:flutter/material.dart';
import 'package:romy_sharing_project/components/constants.dart';
import 'package:romy_sharing_project/components/shared_preferences.dart';

class LandingBody extends StatefulWidget {
  const LandingBody({super.key});

  @override
  State<LandingBody> createState() => _LandingBodyState();
}

class _LandingBodyState extends State<LandingBody> {  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadInfo();
  }
  
  _loadInfo(){
    Sessions.getUserId().then((value){
      if(value.isEmpty){
        Navigator.pushNamedAndRemoveUntil(context, kPathLogin, ModalRoute.withName(kPathLogin));
      }else{
        Navigator.pushNamedAndRemoveUntil(context, kPathDashBoard, ModalRoute.withName(kPathDashBoard));
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/smile.png'),
    );
  }
}
