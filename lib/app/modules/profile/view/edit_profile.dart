import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppWidgets.appbar(
        context,
        title: 'Edit Profile',
        isActionPresent: false,
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Stack(children: [
          Positioned(
              bottom: 0,
              child: Image.asset('assets/images/stack_image.png',fit: BoxFit.fill,width: 100.w,)),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Container(
                    height: 15.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Keys.COLOR)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        'assets/images/profile_image.png',
                        fit: BoxFit.fill,
                      ),
                    )),
                SizedBox(
                  height: 2.h,
                ),
                AppWidgets.buildText(
                    context: context,
                    text: '0.0 Loyality Points',
                    fontFamily: 'montserrat_medium',
                    fontSize: 14),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Full Name',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'David John',
                  issufixIcon: true,
                  isprefixIcon: false,
                  sufixIcon: Icons.person_outline,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  sufixColor: Colors.grey,
                  paddingLeft: 15,
                  color: Colors.white,
                  hintColor: Colors.black,
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Phone Number',
                    color: Keys.SECONDARY_COLOR,
                    fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: '+971 55 430 3488',
                  issufixIcon: true,
                  isprefixIcon: false,
                  sufixIcon: Icons.phone_outlined,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  sufixColor: Colors.grey,
                  paddingLeft: 15,
                  color: Colors.white,
                  hintColor: Colors.black,
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Email Address',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'johndoe@gmail.com',
                  issufixIcon: true,
                  isprefixIcon: false,
                  sufixIcon: Icons.email_outlined,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  sufixColor: Colors.grey,
                  paddingLeft: 15,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Expanded(
                  child: Container()
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
                            context: context, text: 'Save', color: Colors.white)),
                  ),
                ),
                SizedBox(height: 6.h,)
              ],
            ),
          ),
        ],)
      ),
    );
  }
}
