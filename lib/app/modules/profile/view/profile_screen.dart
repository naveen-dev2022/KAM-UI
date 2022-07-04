import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/profile/controller/profile_controller.dart';
import 'package:kam_sudo/values/utils/helpers.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';
import 'change_password.dart';
import 'edit_profile.dart';
import 'manage_units.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppWidgets.appbar(
        context,
        title: 'My Account',
        isActionPresent: true,
        child: IconButton(
          onPressed: () {
            Get.to(
              () => const EditProfile(),
              transition: Transition.rightToLeft,
              duration: const Duration(milliseconds: 350),
            );
          },
          icon: const ImageIcon(AssetImage('assets/images/edit_profile.png')),
          color: Colors.black,
        ),
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            Container(
              height: 30.h,
              width: 100.w,
              color: Colors.white,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 70.h,
                width: 100.w,
                color: Keys.SECONDARY_COLOR,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    AppWidgets.buildText(
                        context: context,
                        text: 'David John',
                        color: Colors.white,
                        fontFamily: 'montserrat_bold',
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                    SizedBox(
                      height: 2.h,
                    ),
                    AppWidgets.buildText(
                        context: context,
                        text: '+975 00 000 0000',
                        color: Colors.white,
                        fontFamily: 'montserrat_regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    SizedBox(
                      height: 2.h,
                    ),
                    AppWidgets.buildText(
                        context: context,
                        text: 'address@gmail.com',
                        color: Colors.white,
                        fontFamily: 'montserrat_regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    SizedBox(
                      height: 4.h,
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: CommonTextButton(
                        onPressed: () {
                          Get.to(
                            () => const ChangePassword(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                        width: 80.w,
                        height: 35,
                        radius: 6,
                        color: Keys.COLOR,
                        child: Center(
                            child: AppWidgets.buildText(
                                context: context,
                                text: 'Change Password',
                                color: Colors.white,
                                fontFamily: 'montserrat_regular',
                                fontSize: 12)),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: CommonTextButton(
                        onPressed: () {
                          Get.to(
                            () => const MyUnits(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                        width: 80.w,
                        height: 35,
                        radius: 6,
                        color: Keys.COLOR,
                        child: Center(
                            child: AppWidgets.buildText(
                                context: context,
                                text: 'Manage Units',
                                color: Colors.white,
                                fontFamily: 'montserrat_regular',
                                fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container()
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: CommonTextButton(
                        onPressed: () {
                          AppMethods.GetxBottomSheet(SizedBox(
                            height: 40.h,
                            width: 100.w,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 4.h,
                                ),
                                Container(
                                  height: 80,width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: Keys.COLOR,width: 3)),
                                  child: Center(child: Image.asset('assets/images/question.png'),),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                AppWidgets.buildText(
                                    context: context, text: 'Logout',fontSize: 22,fontFamily: 'montserrat_bold'),
                                SizedBox(
                                  height: 1.h,
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'Are you sure you want to logout?',
                                    fontFamily: 'montserrat_regular',
                                    fontSize: 12
                                ),
                                Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CommonTextButton(
                                        onPressed: (){Get.back();},
                                        height: 35,
                                        width: 40.w,
                                        borderColor: Keys.COLOR,
                                        radius: 4,
                                        child: Center(
                                            child: AppWidgets.buildText(
                                                context: context,
                                                text: 'No',
                                                color: Keys.COLOR,
                                                fontFamily: 'montserrat_regular',
                                                fontSize: 12
                                            )),
                                      ),
                                      CommonTextButton(
                                        onPressed: (){Get.back();},
                                        height: 35,
                                        width: 40.w,
                                        color: Keys.COLOR,
                                        radius: 4,
                                        child: Center(
                                            child: AppWidgets.buildText(
                                                context: context,
                                                text: 'Yes',
                                                color: Colors.white,
                                                fontFamily: 'montserrat_regular',
                                                fontSize: 12
                                            )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ));
                        },
                        width: 80.w,
                        height: 35,
                        color: Keys.COLOR,
                        child: Center(
                          child: AppWidgets.buildText(
                              context: context,
                              text: 'Logout',
                              color: Colors.white,
                              fontFamily: 'montserrat_regular',
                              fontSize: 12),
                        ),
                        radius: 6,
                      ),
                    ),
                    SizedBox(height: 6.h,)
                  ],
                ),
              ),
            ),
            Positioned(
              top: 8.h,
              left: 33.w,
              child: Container(
                  height: 16.h,
                  width: 35.w,
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
            ),
          ],
        ),
      ),
    );
  }
}
