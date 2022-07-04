import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';
import 'add_edit_units.dart';

class MyUnits extends StatelessWidget {
  const MyUnits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'My Units',
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
                  child: Image.asset(
                    'assets/images/stack_image.png',
                    fit: BoxFit.fill,
                    width: 100.w,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    SizedBox(height: 5.h,),
                    Container(
                      height: 100,
                      width: 90.w,
                      decoration:   BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffececec).withOpacity(0.8),
                            blurRadius: 15,
                            offset: const Offset(0, 7), // changes position of shadow
                          ),
                          
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Unit 1',
                                      fontFamily: 'montserrat_medium',
                                      color: Keys.SECONDARY_COLOR,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: IconButton(
                                    onPressed: () {
                                      Get.to(
                                            () =>  AddEditUnits(),
                                        transition: Transition.rightToLeft,
                                        duration:
                                        const Duration(milliseconds: 350),
                                      );
                                    },
                                    icon: const ImageIcon(AssetImage(
                                        'assets/images/edit_profile.png')),
                                    color: Keys.COLOR,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: SizedBox(
                                width: 100.w,
                                child: AppWidgets.buildText(
                                    context: context,
                                    text: 'Dubai - Dubai Silicon Oasis',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000),
                                    fontFamily: 'montserrat_regular'),
                              ),
                            ),
                            const SizedBox(height: 5,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Container(
                      height: 100,
                      width: 90.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffececec).withOpacity(0.8),
                            blurRadius: 15,
                            offset: const Offset(0, 7), // changes position of shadow
                          ),

                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Unit 2',
                                      fontFamily: 'montserrat_medium',
                                      color: Keys.SECONDARY_COLOR,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: IconButton(
                                    onPressed: () {
                                      Get.to(
                                            () =>  AddEditUnits(),
                                        transition: Transition.rightToLeft,
                                        duration:
                                        const Duration(milliseconds: 350),
                                      );
                                    },
                                    icon: const ImageIcon(AssetImage(
                                        'assets/images/edit_profile.png')),
                                    color: Keys.COLOR,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: SizedBox(
                                width: 100.w,
                                child: AppWidgets.buildText(
                                    context: context,
                                    text: 'Dubai - Dubai Silicon Oasis',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000),
                                    fontFamily: 'montserrat_regular'),
                              ),
                            ),
                            const SizedBox(height: 5,),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child:Container()),
                    Opacity(
                      opacity: 0.8,
                      child: CommonTextButton(
                        onPressed: () {
                          Get.to(
                            () =>  AddEditUnits(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                        height: 35,
                        width: 90.w,
                        color: Keys.COLOR,
                        radius: 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppWidgets.buildText(
                                context: context,
                                text: '+',
                                fontWeight: FontWeight.w400,
                                fontFamily: 'montserrat_medium',
                                fontSize: 30,
                                color: Colors.white),
                            const SizedBox(
                              width: 5,
                            ),
                            AppWidgets.buildText(
                                context: context,
                                text: 'Add Unit',
                                fontWeight: FontWeight.w700,
                                fontFamily: 'montserrat_medium',
                                fontSize: 14,
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h,)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
