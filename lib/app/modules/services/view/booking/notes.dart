import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/view/booking/summary.dart';
import 'package:kam_sudo/app/modules/services/view/booking/time_line_reusable.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class Notes extends StatelessWidget {
  Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppWidgets.appbar(
        context,
        title: 'Notes',
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
                        borderColor6:Keys.COLOR,
                        borderColor7: Keys.GREY,
                        color1: Keys.COLOR,
                        color2: Keys.COLOR,
                        color3: Keys.COLOR,
                        color4: Keys.COLOR,
                        color5: Keys.COLOR,
                        color6: Keys.SECONDARY_COLOR1,
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
                        icon6: const SizedBox(),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomTextField(
                        hint: 'Notes',
                        issufixIcon: false,
                        isprefixIcon: false,
                        minline: 5,
                        maxline: 5,
                        topLeft: 6,
                        topRight: 6,
                        bottomRight: 6,
                        bottomLeft: 6,
                        paddingLeft: 18,
                        color: Colors.white,
                        paddingTop: 18,
                      ),
                      SizedBox(height: 2.h,),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(6),
                        color: Keys.COLOR,
                        strokeWidth: 1.5,
                        dashPattern: [5,5],
                        child: Container(
                          width: 100.w,
                          height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Image.asset('assets/images/export.png'),
                            SizedBox(width: 8,),
                            AppWidgets.buildText(
                                context: context,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'montserrat_regular',
                                text: 'Upload File',
                                color: Keys.SECONDARY_COLOR)
                          ],),
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 110),
                        child: Opacity(
                          opacity: 0.8,
                          child: CommonTextButton(
                            onPressed: () {
                              Get.to(
                                    () =>  Summary(),
                                transition: Transition.rightToLeft,
                                duration:
                                const Duration(milliseconds: 350),
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
