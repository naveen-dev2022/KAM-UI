import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMethods {

  static GetxSnackBar(String errMsg) {
    Get.snackbar(
      "Error",
      errMsg,
      icon: Icon(Icons.error, color: Colors.white),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.deepPurpleAccent,
      borderRadius: 20,
      margin: EdgeInsets.all(15),
      colorText: Colors.white,
      duration: Duration(seconds: 3),
      isDismissible: true,
      forwardAnimationCurve: Curves.easeOutBack,
    );
  }

  static GetxBottomSheet(Widget sheet, {bool isDismiss = true}) {
    Get.bottomSheet(
        sheet,
      isDismissible: isDismiss,
      backgroundColor: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(12)),
      ),
    );
  }

  static GetxDialog(String errMsg) {
    Get.defaultDialog(
        title: "Dialog",
        content: Text(errMsg),
        backgroundColor: Colors.teal,
        confirm: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text('ok'),
        ),
        titleStyle: TextStyle(color: Colors.white),
        middleTextStyle: TextStyle(color: Colors.white),
        radius: 30);
  }

  static showSnackBarWithIcon(BuildContext context, String? content,
      Color? backgroundColor, IconData? value, Color? iconColor) {
    var triggerSnackbar = SnackBar(
      margin: const EdgeInsets.all(20),
      behavior: SnackBarBehavior.floating,
      content: Row(
        children: [
          Icon(
            value,
            color: iconColor,
            size: 24,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            content!,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'gotham_medium',
              fontSize: 14
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(triggerSnackbar);

  }

  static showSnackBar(
      BuildContext context, String? content, Color? backgroundColor) {
    var triggerSnackbar = SnackBar(
      margin: const EdgeInsets.all(20),
      behavior: SnackBarBehavior.floating,
      content: Text(
        '${content!} !!',
        style: const TextStyle(
            fontFamily: 'gotham_medium',
            fontSize: 14,
        ),
      ),
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(triggerSnackbar);
  }

/*  static void toastMsg(String? value) {
    Fluttertoast.showToast(
        msg: "${value!} !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color(0xff253e44),
        textColor: Colors.white,
        fontSize: 14.0,
    );
  }*/


}


