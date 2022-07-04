
import 'package:flutter/material.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class QuickPay extends StatelessWidget {
  const QuickPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Quick Pay',
        isActionPresent: false,
      ),
      body:  Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  child: Image.asset('assets/images/stack_image.png',fit: BoxFit.fill,width: 100.w,)),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: SizedBox(
                          width: 100.w,
                          child: AppWidgets.buildText(color: const Color(0xff000000),
                              context: context, text: 'Please enter your service order number\nthen click on the Search Button',fontFamily: 'montserrat_regular',fontWeight: FontWeight.w400,fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: CustomTextField(
                          hint: 'Order Number',
                          issufixIcon: true,
                          isprefixIcon: false,
                          hintFontWeight: FontWeight.w400,
                          hintFontSize: 14,
                          sufixIcon: Icons.search,
                          topLeft: 6,
                          topRight: 6,
                          bottomRight: 6,
                          bottomLeft: 6,
                          sufixColor:  const Color(0xff000000),
                          paddingLeft: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: CommonTextButton(
                          onPressed: () {

                          },
                          height: 35,
                          width: 100.w,
                          color: Keys.COLOR,
                          radius: 6,
                          child: Center(
                            child: AppWidgets.buildText(color: Colors.white,
                                context: context, text: 'Search',fontFamily: 'montserrat_regular',fontWeight: FontWeight.w600,fontSize: 14,),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: SizedBox(
                          width: 100.w,
                          child: AppWidgets.buildText(color: const Color(0xff000000),
                              context: context, text: "For your safety, KAM no longer accepts cash\ntransactions. This is part of the\nprecautionary measures against COVID .\nPlease use Quick Pay, the safe and secure\nalternative payment channel we've\nprovided.\n\nWe Care about your Health.",fontFamily: 'montserrat_regular',fontWeight: FontWeight.w400,fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
