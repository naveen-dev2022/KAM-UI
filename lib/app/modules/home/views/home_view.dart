import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/home/views/my_orders.dart';
import 'package:kam_sudo/app/modules/home/views/promotions.dart';
import 'package:kam_sudo/app/modules/home/views/support.dart';
import 'package:kam_sudo/app/modules/profile/binding/profile_binding.dart';
import 'package:kam_sudo/app/modules/profile/view/manage_units.dart';
import 'package:kam_sudo/app/modules/profile/view/profile_screen.dart';
import 'package:kam_sudo/app/modules/services/binding/service_binding.dart';
import 'package:kam_sudo/app/modules/services/view/service_view.dart';
import 'package:kam_sudo/app/routes/app_pages.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';
import '../../profile/view/add_edit_units.dart';
import '../controllers/home_controller.dart';
import 'contact_us.dart';
import 'notification.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: AppWidgets.myDrawer(context),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/mainscreen_image.png',
              fit: BoxFit.fill,
              height: 100.h,
              width: 100.w,
            ),
            Container(
              height: 100.h,
              width: 100.w,
              decoration:
                  BoxDecoration(color: Keys.SECONDARY_COLOR.withOpacity(0.5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              scaffoldKey.currentState!.openDrawer();
                            },
                            icon:  Image.asset('assets/images/drawer_icon.png'),
                          ),
                          Image.asset(
                            'assets/images/KAM_logo.png',
                            height: 60,
                            width: 120,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                    () =>  ProfileView(),
                                binding: ProfileBinding(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            child: Image.asset(
                              'assets/images/profile_image.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 18,),
                          Container(
                            height: 36,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Keys.COLOR),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                AppWidgets.buildText(
                                    text: 'All',
                                    context: context,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16)
                              ],
                            ),
                          ),
                          const SizedBox(width: 18,),
                          Container(
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                AppWidgets.buildText(
                                    text: 'Home',
                                    context: context,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16)
                              ],
                            ),
                          ),
                          const SizedBox(width: 18,),
                          Container(
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                AppWidgets.buildText(
                                    text: 'Office',
                                    context: context,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_medium',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16)
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      AppWidgets.buildText(
                          text: 'No Appointments Available',
                          context: context,
                          color: Colors.white,
                          fontFamily: 'montserrat_regular',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                      Expanded(child:Container()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            borderColor: Keys.COLOR,
                            color: Keys.SECONDARY_COLOR,
                            height: 35,
                            width: 150,
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Services',
                                    context: context,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                          ),
                          CommonTextButton(
                            onPressed: () {
                              Get.to(
                                    () => const MyUnits(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            borderColor: Keys.COLOR,
                            color: Keys.SECONDARY_COLOR,
                            height: 35,
                            width: 150,
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'My Units',
                                    context: context,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CommonTextButton(
                            onPressed: () {
                              Get.to(
                                    () => const MyOrders(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            borderColor: Keys.COLOR,
                            color: Keys.SECONDARY_COLOR,
                            height: 35,
                            width: 150,
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'My Orders',
                                    context: context,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                          ),
                          CommonTextButton(
                            onPressed: () {
                              Get.to(
                                    () => const Promotions(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            borderColor: Keys.COLOR,
                            color: Keys.SECONDARY_COLOR,
                            height: 35,
                            width: 150,
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Promotions',
                                    context: context,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.to(
                                      () =>  const NotificationScreen(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 350),
                                );
                              },
                              icon: Image.asset('assets/images/mainscreen_icon1.png')),
                          IconButton(
                              onPressed: () {
                                Get.to(
                                      () => const ContactUs(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 350),
                                );
                              },
                              icon: Image.asset('assets/images/mainscreen_icon2.png')),
                          IconButton(
                              onPressed: () {},
                              icon:  Image.asset('assets/images/mainscreen_icon3.png')),
                          IconButton(
                              onPressed: () {
                                Get.to(
                                      () =>  Support(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 350),
                                );
                              },
                              icon: Image.asset('assets/images/mainscreen_icon4.png')),
                          IconButton(
                              onPressed: () {
                                Get.to(
                                      () => const Promotions(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 350),
                                );
                              },
                              icon: Image.asset('assets/images/mainscreen_icon5.png'))
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
