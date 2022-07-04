
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/home/bindings/home_binding.dart';
import 'package:kam_sudo/app/modules/home/views/home_view.dart';
import 'package:kam_sudo/app/routes/app_pages.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'New User',
        isActionPresent: false,
      ),
      body:  Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Stack(
            children: [
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
                    CustomTextField(
                      hint: 'Full Name',
                      hintFontSize: 14,
                      hintFontWeight: FontWeight.w400,
                      issufixIcon: false,
                      isprefixIcon: true,
                      icon: Icons.person_outline,
                      topLeft: 6,
                      topRight: 6,
                      bottomRight: 6,
                      bottomLeft: 6,
                      prefixColor:  const Color(0xff000000),
                      paddingLeft: 15,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      hint: 'Mobile',
                      hintFontSize: 14,
                      hintFontWeight: FontWeight.w400,
                      issufixIcon: false,
                      isprefixIcon: true,
                      icon: Icons.phone_in_talk_outlined,
                      topLeft: 6,
                      topRight: 6,
                      bottomRight: 6,
                      bottomLeft: 6,
                      prefixColor: const Color(0xff000000),
                      paddingLeft: 15,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      hint: 'Email Address',
                      hintFontSize: 14,
                      hintFontWeight: FontWeight.w400,
                      issufixIcon: false,
                      isprefixIcon: true,
                      icon: Icons.email_outlined,
                      topLeft: 6,
                      topRight: 6,
                      bottomRight: 6,
                      bottomLeft: 6,
                      prefixColor:  const Color(0xff000000),
                      paddingLeft: 15,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      hint: 'Password',
                      hintFontSize: 14,
                      hintFontWeight: FontWeight.w400,
                      issufixIcon: false,
                      isprefixIcon: true,
                      icon: Icons.lock_outline_sharp,
                      topLeft: 6,
                      topRight: 6,
                      bottomRight: 6,
                      bottomLeft: 6,
                      prefixColor:  const Color(0xff000000),
                      paddingLeft: 15,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextField(
                      hint: 'Confirm Password',
                      hintFontSize: 14,
                      hintFontWeight: FontWeight.w400,
                      issufixIcon: false,
                      isprefixIcon: true,
                      icon: Icons.lock_outline_sharp,
                      topLeft: 6,
                      topRight: 6,
                      bottomRight: 6,
                      bottomLeft: 6,
                      prefixColor: const Color(0xff000000),
                      paddingLeft: 15,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextButton(
                      onPressed: () {

                      },
                      elevation: 0.0,
                      height: 45,
                      width: 90.w,
                      color: Colors.white,
                      radius: 6,
                      borderColor: Colors.grey.shade400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.camera_enhance,color: Colors.black,size: 29,),const SizedBox(width: 5,),
                          AppWidgets.buildText(
                              context: context, text: 'Upload your photo',fontFamily: 'montserrat_regular',fontWeight: FontWeight.w600,fontSize: 14),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: CommonTextButton(
                        onPressed: () {
                          Get.to(
                                () =>  HomeView(),
                            binding: HomeBinding(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                        height: 35,
                        width: 90.w,
                        color: Keys.COLOR,
                        radius: 6,
                        child: Center(
                            child: AppWidgets.buildText(
                                context: context, text: 'Create Account', color: Colors.white,fontFamily: 'montserrat_regular',fontWeight: FontWeight.w700,fontSize: 14)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
