import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/view/booking/notes.dart';
import 'package:kam_sudo/app/modules/services/view/booking/time_line_reusable.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class paymentMethode extends StatelessWidget {
  paymentMethode({Key? key}) : super(key: key);

  String? selectedValue;
  List<String> items = [
    'Credit Card',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Payment Methode',
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
                        borderColor6: Keys.GREY,
                        borderColor7: Keys.GREY,
                        color1: Keys.COLOR,
                        color2: Keys.COLOR,
                        color3: Keys.COLOR,
                        color4: Keys.COLOR,
                        color5: Keys.SECONDARY_COLOR1,
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
                        icon5: const SizedBox(),
                        icon6: const SizedBox(),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      StatefulBuilder(
                        builder: (BuildContext context, setter) {
                          return DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              dropdownElevation: 1,
                              dropdownDecoration: BoxDecoration(color: Colors.white),
                              isExpanded: true,
                              hint: Opacity(
                                opacity: 0.4,
                                child: AppWidgets.buildText(
                                    text: 'Payment Methode',
                                    context: context,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Keys.SECONDARY_COLOR),
                              ),
                              items: items
                                  .map(
                                    (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: AppWidgets.buildText(
                                      text: item,
                                      context: context,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      fontFamily: 'montserrat_regular'),
                                ),
                              )
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                setter(() {
                                  selectedValue = value as String;
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 28,
                                color: Colors.black,
                              ),
                              iconSize: 14,
                              buttonHeight: 50,
                              buttonWidth: 400,
                              buttonPadding: const EdgeInsets.only(
                                  left: 14, right: 14),
                              buttonDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              itemHeight: 40,
                              itemPadding: const EdgeInsets.only(
                                  left: 14, right: 14),
                              dropdownMaxHeight: 200,
                              dropdownPadding: null,
                              scrollbarRadius: const Radius.circular(40),
                              scrollbarThickness: 6,
                              scrollbarAlwaysShow: true,
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 2.h,),
                      AppWidgets.buildText(
                          text:
                          'For your safety, Shabaka no longer accepts cash transactions. This is part of the precautionary\nmeasures against COVID .\nPlease use Quick Pay, the safe and secure\nalternative payment channel weve provided.\n\nWe Care about your Health.',
                          context: context,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'montserrat_regular'
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 120),
                        child: Opacity(
                          opacity: 0.8,
                          child: CommonTextButton(
                            onPressed: () {
                              Get.to(
                                    () =>  Notes(),
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
