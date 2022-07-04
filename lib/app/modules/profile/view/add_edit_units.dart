import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class AddEditUnits extends StatelessWidget {
   AddEditUnits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Add / Edit Units',
        isActionPresent: false,
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.white,
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Unit Friendly Name',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'Unit Friendly Name',
                  hintFontSize: 14,
                  hintFontWeight: FontWeight.w400,
                  issufixIcon: false,
                  isprefixIcon: false,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  paddingLeft: 15,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Short Address',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'building/street Name - Unit No.',
                  issufixIcon: false,
                  isprefixIcon: false,
                  hintFontSize: 18,
                  hintFontWeight: FontWeight.w400,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  paddingLeft: 15,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Emirate',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'Select City',
                  issufixIcon: true,
                  isprefixIcon: false,
                  hintFontSize: 18,
                  hintFontWeight: FontWeight.w400,
                  sufixIcon: Icons.arrow_drop_down_outlined,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  sufixColor: Colors.grey,
                  paddingLeft: 15,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Area',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'Select Area',
                  issufixIcon: true,
                  isprefixIcon: false,
                  hintFontSize: 18,
                  hintFontWeight: FontWeight.w400,
                  sufixIcon: Icons.arrow_drop_down_outlined,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  sufixColor: Colors.grey,
                  paddingLeft: 15,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Type',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'Select Unit Type',
                  issufixIcon: true,
                  isprefixIcon: false,
                  hintFontSize: 18,
                  hintFontWeight: FontWeight.w400,
                  sufixIcon: Icons.arrow_drop_down_outlined,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  sufixColor: Colors.grey,
                  paddingLeft: 15,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Category',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'Select Unit Category',
                  issufixIcon: true,
                  isprefixIcon: false,
                  sufixIcon: Icons.arrow_drop_down_outlined,
                  hintFontSize: 18,
                  hintFontWeight: FontWeight.w400,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  sufixColor: Colors.grey,
                  paddingLeft: 15,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: AppWidgets.buildText(
                      context: context,
                      text: 'Location On Map',
                      color: Keys.SECONDARY_COLOR,
                      fontFamily: 'montserrat_medium',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'Using Gps',
                  issufixIcon: true,
                  isprefixIcon: false,
                  hintFontSize: 18,
                  hintFontWeight: FontWeight.w400,
                  sufixIcon: Icons.location_on,
                  sufixColor:Keys.COLOR,
                  topLeft: 6,
                  topRight: 6,
                  bottomRight: 6,
                  bottomLeft: 6,
                  paddingLeft: 15,
                  color: Colors.white,
                ),
                SizedBox(height: 4.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonTextButton(
                      onPressed: () {
                        Get.back();
                      },
                      height: 35,
                      width: 38.w,
                      color: Colors.white,
                      radius: 6,
                      borderColor:  Keys.COLOR,
                      child: Center(
                          child: AppWidgets.buildText(
                              context: context, text: 'Cancel', color:  Keys.COLOR)),
                    ),
                    CommonTextButton(
                      onPressed: () {
                        Get.back();
                      },
                      height: 35,
                      width: 38.w,
                      color: Keys.COLOR,
                      radius: 6,
                      child: Center(
                          child: AppWidgets.buildText(
                              context: context, text: 'Save', color:  Colors.white)),
                    )
                  ],),
                SizedBox(height: 2.h,),
                CommonTextButton(
                  onPressed: () {
                    Get.back();
                  },
                  height: 35,
                  width: 85.w,
                  color: Colors.white,
                  radius: 6,
                  borderColor:  Keys.COLOR,
                  child: Center(
                      child: AppWidgets.buildText(
                          context: context, text: 'Delete', color:  Keys.COLOR)),
                ),
                Image.asset('assets/images/stack_image.png',fit: BoxFit.fill,width: 100.w),
              ],
            ),
          ),
        ],)
      ),
    );
  }
}
