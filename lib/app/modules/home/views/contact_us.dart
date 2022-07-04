import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppWidgets.appbar(
        context,
        title: 'Contact Us',
        isActionPresent: false,
      ),
      body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Stack(children: [
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
                  CustomTextField(
                    hint: 'Full Name',
                    issufixIcon: false,
                    isprefixIcon: false,
                    hintFontWeight: FontWeight.w400,
                    hintFontSize: 14,
                    topLeft: 6,
                    topRight: 6,
                    bottomRight: 6,
                    bottomLeft: 6,
                    paddingLeft: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                    hint: 'Mobile',
                    issufixIcon: false,
                    isprefixIcon: false,
                    hintFontWeight: FontWeight.w400,
                    hintFontSize: 14,
                    topLeft: 6,
                    topRight: 6,
                    bottomRight: 6,
                    bottomLeft: 6,
                    paddingLeft: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                    hint: 'Email Address',
                    issufixIcon: false,
                    isprefixIcon: false,
                    hintFontWeight: FontWeight.w400,
                    hintFontSize: 14,
                    topLeft: 6,
                    topRight: 6,
                    bottomRight: 6,
                    bottomLeft: 6,
                    paddingLeft: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                    hint: 'Subject',
                    issufixIcon: false,
                    isprefixIcon: false,
                    hintFontWeight: FontWeight.w400,
                    hintFontSize: 14,
                    topLeft: 6,
                    topRight: 6,
                    bottomRight: 6,
                    bottomLeft: 6,
                    paddingLeft: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                    hint: 'Message',
                    issufixIcon: false,
                    isprefixIcon: false,
                    hintFontWeight: FontWeight.w400,
                    hintFontSize: 14,
                    maxline: 5,
                    minline: 5,
                    topLeft: 6,
                    topRight: 6,
                    bottomRight: 6,
                    bottomLeft: 6,
                    paddingLeft: 15,
                    color: Colors.white,
                    paddingTop: 20,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: CommonTextButton(
                      onPressed: () {
                        Get.back();
                      },
                      height: 35,
                      width: 100.w,
                      color: Keys.COLOR,
                      radius: 6,
                      child: Center(
                          child: AppWidgets.buildText(
                              context: context, text: 'Send', color:  Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppWidgets.buildText(
                        context: context,
                        text: 'AI Musthaqabal Street',
                        fontFamily: 'montserrat_medium',
                        color: Colors.grey.shade500,
                        fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppWidgets.buildText(
                        context: context,
                        text: 'Downtown Dubai',
                        fontFamily: 'montserrat_medium',
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppWidgets.buildText(
                        context: context,
                        text: '+971 00 000 0000',
                        fontFamily: 'montserrat_medium',
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: AppWidgets.buildText(
                        context: context,
                        text: 'address@email.com',
                        fontFamily: 'montserrat_medium',
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],)
      ),
    );
  }
}
