import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:romy_sharing_project/components/constants.dart';

toastSuccess(BuildContext context, String message) {
  FToast fToast;
  fToast = FToast();
  fToast.init(context);

  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: kColorGreen,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.check, color: Colors.white),
        ),
        Flexible(
          child: Text(
            message,
            style: const TextStyle(color: kColorTextWhite),
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 2),
  );
}

toastAlert(BuildContext context, String message) {
  FToast fToast;
  fToast = FToast();
  fToast.init(context);

  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: kColorRed,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.warning_amber_outlined, color: Colors.white),
        ),
        Flexible(
          child: Text(
            message,
            style: const TextStyle(color: kColorTextWhite),
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 2),
  );
}

toastInfo(BuildContext context, String message) {
  FToast fToast;
  fToast = FToast();
  fToast.init(context);

  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: kColorPrimary,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.info_outline, color: Colors.white),
        ),
        Flexible(
          child: Text(
            message,
            style: const TextStyle(color: kColorTextWhite),
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 2),
  );
}

// toastAlertCustom(String message, ToastGravity toastGravity) {
//
//   // SmartDialog.showToast(message, alignment: Alignment.center,
//   //     maskColor: kRedColor, builder: );
//
//   Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: toastGravity,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//       fontSize: 16.0);
// }

// void showToast(BuildContext context, String type, String message) {
//   //SUCCESS = GREEN
//   //INFO = BLUE
//   //WARNING = RED
//   context.showToast(
//     Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(right: 8.0),
//           child: Icon(Icons.check, color: Colors.white),
//         ),
//         Text(message),
//       ],
//     ),
//     shape: StadiumBorder(),
//     queue: false,
//     backgroundColor: type == "Success"
//         ? Colors.green
//         : type == "Success"
//             ? Colors.blue
//             : kColorRed,
//     textStyle: TextStyle(color: Colors.white),
//     alignment: Alignment(0.0, 0.0),
//   );
// }

// toastAlert(String message) {
//   Fluttertoast.showToast(
//       msg: message,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//       fontSize: 16.0);
// }

// toastSuccess(String message) {
//   Fluttertoast.showToast(
//       msg: message,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0);
// }

// toastCenterSuccess(BuildContext context, String message) {
//   context.showToast(
//     Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(right: 8.0),
//           child: Icon(Icons.check, color: Colors.white),
//         ),
//         Text(message),
//       ],
//     ),
//     shape: StadiumBorder(),
//     queue: false,
//     backgroundColor: Colors.green,
//     textStyle: TextStyle(color: Colors.white),
//     alignment: Alignment(0.0, 0.0),
//   );
// }
