import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/home/bindings/home_binding.dart';
import 'package:kam_sudo/app/modules/home/views/home_view.dart';
import 'package:kam_sudo/app/modules/services/view/booking/time_line_reusable.dart';
import 'package:kam_sudo/app/routes/app_pages.dart';
import 'package:kam_sudo/values/utils/helpers.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class Summary extends StatelessWidget {
  Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Summary',
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
                      SizedBox(
                        height: 4.h,
                      ),
                      TimeLineReusable(
                        borderColor1: Keys.COLOR,
                        borderColor2: Keys.COLOR,
                        borderColor3: Keys.COLOR,
                        borderColor4: Keys.COLOR,
                        borderColor5: Keys.COLOR,
                        borderColor6: Keys.COLOR,
                        borderColor7: Keys.COLOR,
                        color1: Keys.COLOR,
                        color2: Keys.COLOR,
                        color3: Keys.COLOR,
                        color4: Keys.COLOR,
                        color5: Keys.COLOR,
                        color6: Keys.COLOR,
                        icon1: const Icon(
                          Icons.done,
                          size: 16,
                          color: Colors.white,
                        ),
                        icon2: const Icon(
                          Icons.done,
                          size: 16,
                          color: Colors.white,
                        ),
                        icon3: const Icon(
                          Icons.done,
                          size: 16,
                          color: Colors.white,
                        ),
                        icon4: const Icon(
                          Icons.done,
                          size: 16,
                          color: Colors.white,
                        ),
                        icon5: const Icon(
                          Icons.done,
                          size: 16,
                          color: Colors.white,
                        ),
                        icon6: const Icon(
                          Icons.done,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Selected Unit',
                                      fontFamily: 'montserrat_medium',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Keys.SECONDARY_COLOR),
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'Home',
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Keys.SECONDARY_COLOR),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Selected Service',
                                      fontFamily: 'montserrat_medium',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Keys.SECONDARY_COLOR),
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'Disinfection',
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Keys.SECONDARY_COLOR),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Amount To Pay',
                                      fontFamily: 'montserrat_medium',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Keys.SECONDARY_COLOR),
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: '1260 AED',
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Keys.SECONDARY_COLOR),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Contract Type',
                                      fontFamily: 'montserrat_medium',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Keys.SECONDARY_COLOR),
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'One Time',
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Keys.SECONDARY_COLOR),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Number of Sessions',
                                      fontFamily: 'montserrat_medium',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Keys.SECONDARY_COLOR),
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: '3',
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Keys.SECONDARY_COLOR),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Payment Methode',
                                      fontFamily: 'montserrat_medium',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Keys.SECONDARY_COLOR),
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'Credit Card',
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Keys.SECONDARY_COLOR),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Appointment',
                                      fontFamily: 'montserrat_medium',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Keys.SECONDARY_COLOR),
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: '2021-12-23 09:30',
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Keys.SECONDARY_COLOR),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Selected Unit',
                                      fontFamily: 'montserrat_medium',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Keys.SECONDARY_COLOR),
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'Home',
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Keys.SECONDARY_COLOR),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 110),
                        child: Opacity(
                          opacity: 0.8,
                          child: CommonTextButton(
                            onPressed: () {
                              AppMethods.GetxBottomSheet(SizedBox(
                                height: 35.h,
                                width: 100.w,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Center(child: Image.asset('assets/images/conform_icon.png'),),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    AppWidgets.buildText(
                                        context: context, text: 'Confirmation',fontSize: 22,fontFamily: 'montserrat_bold'),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    AppWidgets.buildText(
                                        context: context,
                                        text: 'Are you sure you want to Proceed',
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
                                                    text: 'Cancel',
                                                    color: Keys.COLOR,
                                                    fontFamily: 'montserrat_regular',
                                                    fontSize: 12
                                                )),
                                          ),
                                          Opacity(
                                            opacity: 0.8,
                                            child: CommonTextButton(
                                              onPressed: (){
                                                AppMethods.GetxBottomSheet(
                                                    Container(
                                                  height: 40.h,
                                                  width: 100.w,
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 4.h,
                                                      ),
                                                      Center(child: Image.asset('assets/images/success.png'),),
                                                      SizedBox(
                                                        height: 4.h,
                                                      ),
                                                      AppWidgets.buildText(
                                                          context: context, text: 'Success',fontSize: 22,fontFamily: 'montserrat_bold'),
                                                      SizedBox(
                                                        height: 1.h,
                                                      ),
                                                      AppWidgets.buildText(
                                                          context: context,
                                                          text: 'Service Order #undefiner Has\nbeen created Successfully',
                                                          fontFamily: 'montserrat_regular',
                                                          fontSize: 12,
                                                        textAlign: TextAlign.center
                                                      ),
                                                      SizedBox(
                                                        height: 3.h,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 10,left: 18,right: 18),
                                                        child:   Opacity(
                                                          opacity: 0.8,
                                                          child: CommonTextButton(
                                                            onPressed: (){
                                                             /* int count = 0;
                                                              Navigator.of(context).popUntil((_) => count++ == 11);*/
                                                              Get.offAll(()=>HomeView(),
                                                                binding: HomeBinding(),
                                                                transition: Transition.rightToLeft,
                                                                duration: const Duration(milliseconds: 350),
                                                              );
                                                             /* Get.offNamedUntil(Routes.HOME, (route) {
                                                                return count++ == 12;
                                                              });*/
                                                            },
                                                            height: 35,
                                                            width: 100.w,
                                                            color: Keys.COLOR,
                                                            radius: 4,
                                                            child: Center(
                                                                child: AppWidgets.buildText(
                                                                    context: context,
                                                                    text: 'Continue',
                                                                    color: Colors.white,
                                                                    fontFamily: 'montserrat_regular',
                                                                    fontSize: 14
                                                                )),
                                                          ),
                                                        )
                                                      )
                                                    ],
                                                  ),
                                                ));
                                              },
                                              height: 35,
                                              width: 40.w,
                                              color: Keys.COLOR,
                                              radius: 4,
                                              child: Center(
                                                  child: AppWidgets.buildText(
                                                      context: context,
                                                      text: 'Confirm',
                                                      color: Colors.white,
                                                      fontFamily: 'montserrat_regular',
                                                      fontSize: 14
                                                  )),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ));
                            },
                            height: 35,
                            width: 90.w,
                            color: Keys.COLOR,
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    context: context,
                                    text: 'Place Order',
                                    fontFamily: 'montserrat_regular',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          )),
    );
  }
}
