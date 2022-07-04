import 'package:flutter/material.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class TimeLineReusable extends StatelessWidget {
  TimeLineReusable(
      {Key? key,
      this.color1,
      this.color2,
      this.color3,
      this.color4,
      this.color5,
      this.color6,
      this.borderColor1,
      this.borderColor2,
      this.borderColor3,
      this.borderColor4,
      this.borderColor5,
      this.borderColor6,
      this.borderColor7,
      this.icon1,
      this.icon2,
      this.icon3,
      this.icon4,
      this.icon5,
      this.icon6
      })
      : super(key: key);

  Color? color1;
  Color? color2;
  Color? color3;
  Color? color4;
  Color? color5;
  Color? color6;
  Color? borderColor1;
  Color? borderColor2;
  Color? borderColor3;
  Color? borderColor4;
  Color? borderColor5;
  Color? borderColor6;
  Color? borderColor7;
  Widget? icon1;
  Widget? icon2;
  Widget? icon3;
  Widget? icon4;
  Widget? icon5;
  Widget? icon6;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7,right: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppWidgets.buildText(
                  text: '1', color: Keys.SECONDARY_COLOR, context: context,),
              AppWidgets.buildText(
                  text: '2', color: Keys.SECONDARY_COLOR, context: context),
              AppWidgets.buildText(
                  text: '3', color: Keys.SECONDARY_COLOR, context: context),
              AppWidgets.buildText(
                  text: '4', color: Keys.SECONDARY_COLOR, context: context),
              AppWidgets.buildText(
                  text: '5', color: Keys.SECONDARY_COLOR, context: context),
              AppWidgets.buildText(
                  text: '6', color: Keys.SECONDARY_COLOR, context: context),
              AppWidgets.buildText(
                  text: '7', color: Keys.SECONDARY_COLOR, context: context),
            ],
          ),
        ),
        SizedBox(height: 1.h,),
        Container(
          height: 5.h,
          width: 100.w,
          child: Stack(
            children: [
              Positioned(
              top:10,
                  child: Container(width: 100.w,color: Colors.grey.shade400,height: 4,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: borderColor1!,
                        width: 2.0,
                      ),
                      color: color1,
                    ),
                    child: icon1,
                  ),

                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: borderColor2!,
                        width: 2.0,
                      ),
                      color: color2,
                    ),
                    child:  icon2,
                  ),

                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: borderColor3!,
                        width: 2.0,
                      ),
                      color: color3,
                    ),
                    child: icon3,
                  ),

                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: borderColor4!,
                        width: 2.0,
                      ),
                      color: color4,
                    ),
                    child: icon4,
                  ),

                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: borderColor5!,
                        width: 2.0,
                      ),
                      color: color5,
                    ),
                    child: icon5,
                  ),

                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: borderColor6!,
                        width: 2.0,
                      ),
                      color: color6,
                    ),
                    child: icon6,
                  ),

                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: borderColor7!,
                        width: 2.0,
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
