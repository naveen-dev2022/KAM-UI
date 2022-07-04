import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppWidgets.appbar(
        context,
        title: 'Change Password',
        isActionPresent: false,
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
                child: Image.asset('assets/images/stack_image.png',fit: BoxFit.fill,width: 100.w,)),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppWidgets.buildText(
                        context: context,
                        text: 'Old Password',
                        fontFamily: 'montserrat_medium',
                        color: Keys.SECONDARY_COLOR,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                    hint: 'Old Password',
                    issufixIcon: true,
                    isprefixIcon: false,
                    sufixIcon: Icons.lock_outline,
                    topLeft: 6,
                    topRight: 6,
                    bottomRight: 6,
                    bottomLeft: 6,
                    sufixColor: Colors.grey.shade400,
                    paddingLeft: 15,
                    color: Colors.white,
                    hintFontSize: 18,
                    hintFontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppWidgets.buildText(
                        context: context,
                        text: 'New Password',
                        fontFamily: 'montserrat_medium',
                        color: Keys.SECONDARY_COLOR,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                    hint: 'New Password',
                    issufixIcon: true,
                    isprefixIcon: false,
                    sufixIcon: Icons.lock_outline,
                    topLeft: 6,
                    topRight: 6,
                    bottomRight: 6,
                    bottomLeft: 6,
                    sufixColor: Colors.grey.shade400,
                    paddingLeft: 15,
                    color: Colors.white,
                    hintFontSize: 18,
                    hintFontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppWidgets.buildText(
                        text: 'Minimum 8 alphanumeric characters',
                        context: context,
                        color: Colors.grey.shade600,
                        fontFamily: 'montserrat_regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppWidgets.buildText(
                        context: context,
                        text: 'Confirm Password',
                        fontFamily: 'montserrat_medium',
                        color: Keys.SECONDARY_COLOR,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                    hint: 'Confirm Password',
                    issufixIcon: true,
                    isprefixIcon: false,
                    sufixIcon: Icons.lock_outline,
                    topLeft: 6,
                    topRight: 6,
                    bottomRight: 6,
                    bottomLeft: 6,
                    sufixColor: Colors.grey.shade400,
                    paddingLeft: 15,
                    color: Colors.white,
                    hintFontSize: 18,
                    hintFontWeight: FontWeight.w400,
                  ),
                  Expanded(child: Container(),),
                  Opacity(
                    opacity: 0.8,
                    child: CommonTextButton(
                      onPressed: () {
                        Get.back();
                      },
                      height: 35,
                      width: 90.w,
                      color: Keys.COLOR,
                      radius: 6,
                      child: Center(
                          child: AppWidgets.buildText(
                              context: context, text: 'Save', color: Colors.white)),
                    ),
                  ),
                  SizedBox(height: 8.h,)
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
