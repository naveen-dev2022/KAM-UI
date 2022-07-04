import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/view/booking/add_units.dart';
import 'package:kam_sudo/app/modules/services/view/booking/choose_service.dart';
import 'package:kam_sudo/app/modules/services/view/booking/time_line_reusable.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class AddSelectUnit extends StatelessWidget {
  AddSelectUnit({Key? key}) : super(key: key);

  RxList colors = [false, false, false, false, false].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Add/Select Unit',
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
                  child: Obx(
                    () => Column(
                      children: [
                        SizedBox(
                          height: 4.h,
                        ),
                        TimeLineReusable(
                          borderColor1: Keys.COLOR,
                          borderColor2: Keys.GREY,
                          borderColor3: Keys.GREY,
                          borderColor4: Keys.GREY,
                          borderColor5: Keys.GREY,
                          borderColor6: Keys.GREY,
                          borderColor7: Keys.GREY,
                          color1: Keys.SECONDARY_COLOR1,
                          color2: Keys.SECONDARY_COLOR1,
                          color3: Keys.SECONDARY_COLOR1,
                          color4: Keys.SECONDARY_COLOR1,
                          color5: Keys.SECONDARY_COLOR1,
                          color6: Keys.SECONDARY_COLOR1,
                          icon1: const SizedBox(),
                          icon2: const SizedBox(),
                          icon3: const SizedBox(),
                          icon4: const SizedBox(),
                          icon5: const SizedBox(),
                          icon6: const SizedBox(),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                colors[0] = true;
                                colors[1] = false;
                                colors[2] = false;
                                colors[3] = false;
                                colors[4] = false;
                              },
                              child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: colors[0] ? Keys.COLOR : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffececec),
                                      blurRadius: 30.0,
                                    ),
                                  ],
                                ),
                                child: Card(
                                  color: colors[0] ? Keys.COLOR : Colors.white,
                                  elevation: 0,
                                  child: Center(
                                      child: AppWidgets.buildText(
                                          text: 'Unit 1',
                                          fontSize: 14,
                                          fontFamily: 'montserrat_regular',
                                          context: context,
                                          color: colors[0]
                                              ? Colors.white
                                              : Keys.SECONDARY_COLOR)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                colors[0] = false;
                                colors[1] = true;
                                colors[2] = false;
                                colors[3] = false;
                                colors[4] = false;
                              },
                              child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: colors[1] ? Keys.COLOR : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffececec),
                                      blurRadius: 30.0,
                                    ),
                                  ],
                                ),
                                child: Card(
                                  color: colors[1] ? Keys.COLOR : Colors.white,
                                  elevation: 0,
                                  child: Center(
                                      child: AppWidgets.buildText(
                                          text: 'Unit 2',
                                          fontSize: 14,
                                          fontFamily: 'montserrat_regular',
                                          context: context,
                                          color: colors[1]
                                              ? Colors.white
                                              : Keys.SECONDARY_COLOR)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                colors[0] = false;
                                colors[1] = false;
                                colors[2] = true;
                                colors[3] = false;
                                colors[4] = false;
                              },
                              child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: colors[2] ? Keys.COLOR : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffececec),
                                      blurRadius: 30.0,
                                    ),
                                  ],
                                ),
                                child: Card(
                                  color: colors[2] ? Keys.COLOR : Colors.white,
                                  elevation: 0,
                                  child: Center(
                                      child: AppWidgets.buildText(
                                          text: 'Unit 3',
                                          fontSize: 14,
                                          fontFamily: 'montserrat_regular',
                                          context: context,
                                          color: colors[2]
                                              ? Colors.white
                                              : Keys.SECONDARY_COLOR)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                colors[0] = false;
                                colors[1] = false;
                                colors[2] = false;
                                colors[3] = true;
                                colors[4] = false;
                              },
                              child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: colors[3] ? Keys.COLOR : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffececec),
                                      blurRadius: 30.0,
                                    ),
                                  ],
                                ),
                                child: Card(
                                  color: colors[3] ? Keys.COLOR : Colors.white,
                                  elevation: 0,
                                  child: Center(
                                      child: AppWidgets.buildText(
                                          text: 'Unit 4',
                                          fontSize: 14,
                                          fontFamily: 'montserrat_regular',
                                          context: context,
                                          color: colors[3]
                                              ? Colors.white
                                              : Keys.SECONDARY_COLOR)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                colors[0] = false;
                                colors[1] = false;
                                colors[2] = false;
                                colors[3] = false;
                                colors[4] = true;
                              },
                              child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: colors[4] ? Keys.COLOR : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffececec),
                                      blurRadius: 30.0,
                                    ),
                                  ],
                                ),
                                child: Card(
                                  color: colors[4] ? Keys.COLOR : Colors.white,
                                  elevation: 0,
                                  child: Center(
                                      child: AppWidgets.buildText(
                                          text: 'Unit 5',
                                          fontSize: 14,
                                          fontFamily: 'montserrat_regular',
                                          context: context,
                                          color: colors[4]
                                              ? Colors.white
                                              : Keys.SECONDARY_COLOR)),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  () => AddUnits(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 350),
                                );
                              },
                              child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: Keys.COLOR, width: 2.0),
                                ),
                                child: Card(
                                  elevation: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Keys.COLOR,
                                      ),
                                      AppWidgets.buildText(
                                          text: 'Add unit',
                                          fontSize: 14,
                                          fontFamily: 'montserrat_regular',
                                          context: context,
                                          color: Keys.SECONDARY_COLOR),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 80),
                          child: Opacity(
                            opacity: 0.8,
                            child: CommonTextButton(
                              onPressed: () {
                                Get.to(
                                  () => ChooseService(),
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
                                      context: context,
                                      text: 'Next',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'montserrat_regular',
                                      color: Colors.white)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          )),
    );
  }
}
