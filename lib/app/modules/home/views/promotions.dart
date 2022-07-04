import 'package:flutter/material.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class Promotions extends StatelessWidget {
  const Promotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Promotions',
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
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommonTextButton(
                          onPressed: () {},
                          borderColor: Keys.COLOR,
                          color: Keys.SECONDARY_COLOR,
                          height: 35,
                          width: 145,
                          radius: 6,
                          child: Center(
                              child: AppWidgets.buildText(
                                  text: 'Residential',
                                  context: context,
                                  color: Colors.white,
                                  fontFamily: 'montserrat_regular',
                                  fontSize: 13)),
                        ),
                        CommonTextButton(
                          onPressed: () {},
                          borderColor: Keys.COLOR,
                          color: Colors.white,
                          height: 35,
                          width: 145,
                          radius: 6,
                          child: Center(
                              child: AppWidgets.buildText(
                                  text: 'Commercial',
                                  context: context,
                                  color: Keys.SECONDARY_COLOR,
                                  fontFamily: 'montserrat_regular',
                                  fontSize: 13)),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    AppWidgets.buildText(
                        text: 'No promotions available now',
                        context: context,
                        color: Colors.black54,
                        fontFamily: 'montserrat_regular',
                        fontSize: 12)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
