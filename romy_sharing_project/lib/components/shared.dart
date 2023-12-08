
//function for get default width
import 'package:flutter/material.dart';
import 'package:romy_sharing_project/components/constants.dart';

double widthDefault(BuildContext context) {
  double mediaSize;
  Size size = MediaQuery.of(context).size;
  mediaSize = size.width >= 500 ? 500 : size.width;
  return mediaSize;
}

OutlineInputBorder defaultInputBorder(){
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      color: Colors.black12,
      width: 1,
    )
  );
}

OutlineInputBorder defaultFocusBorder(){
  return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(
        color: Colors.white,
        width: 1,
      )
  );
}

OutlineInputBorder defaultErrorBorder(){
  return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(
        color: Colors.redAccent,
        width: 1,
      )
  );
}

Widget defaultPaddingIcon(Widget icon){
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
    child: icon,
  );
}

Uri getUrl({required String pathUrl, Map<String, dynamic>? params}){
  String newPath = kPath + pathUrl;
  Uri uri = Uri.https(kUrl, newPath, params);
  return uri;
}