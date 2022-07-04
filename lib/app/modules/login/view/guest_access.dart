import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/login/view/quick_pay.dart';
import 'package:kam_sudo/app/modules/services/binding/service_binding.dart';
import 'package:kam_sudo/app/modules/services/view/service_view.dart';
import 'package:kam_sudo/app/routes/app_pages.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class GuestAccess extends StatelessWidget {
  const GuestAccess({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Guest Access',
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CommonTextButton(
                            onPressed: () {
                              Get.to(
                                    () =>  ServiceView(),
                                binding: ServiceBinding(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 123,
                            width: 135,
                            color: Keys.SECONDARY_COLOR,
                            radius: 6,
                            borderColor: Keys.COLOR,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/cil_list-rich.png'),
                                SizedBox(
                                  height: 10,
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'Services',
                                    fontFamily: 'montserrat_regular',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          CommonTextButton(
                            onPressed: () {
                              Get.to(
                                    () => const QuickPay(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 123,
                            width: 135,
                            color: Keys.SECONDARY_COLOR,
                            radius: 6,
                            borderColor: Keys.COLOR,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/quickpay.png'),
                                SizedBox(
                                  height: 10,
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'Quick Pay',
                                    fontFamily: 'montserrat_regular',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

