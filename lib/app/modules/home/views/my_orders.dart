import 'package:flutter/material.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'My Orders',
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
                    Container(
                      height: 100,
                      width: 90.w,
                      decoration:BoxDecoration(
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
                            SizedBox(height: 2,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'A/C Repair',
                                      color: Keys.SECONDARY_COLOR,
                                      fontFamily: 'montserrat_regular',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12,right: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                SizedBox(
                                  width: 40.w,
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Order No. 443872',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Keys.SECONDARY_COLOR,
                                      fontFamily: 'montserrat_regular'),
                                ),
                                Container(
                                  width: 30.w,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFF5DD),
                                      border: Border.all(color: Keys.COLOR),borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: AppWidgets.buildText(
                                        context: context,
                                        text: 'SCHEDULE',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'montserrat_regular',
                                        color: Keys.COLOR
                                    ),
                                  ),
                                ),
                              ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: SizedBox(width: 100.w,child: AppWidgets.buildText(
                                  context: context,
                                  text: 'Unit 1',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Keys.SECONDARY_COLOR,
                                  fontFamily: 'montserrat_regular'),),
                            ),
                            SizedBox(height: 2,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Container(
                      height: 100,
                      width: 90.w,
                      decoration:  BoxDecoration(
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
                            SizedBox(height: 2,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Painting',
                                      fontFamily: 'montserrat_regular',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12,right: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 40.w,
                                    child: AppWidgets.buildText(
                                        context: context,
                                        text: 'Order No. 443872',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Keys.SECONDARY_COLOR,
                                        fontFamily: 'montserrat_regular'),
                                  ),
                                  Container(
                                    width: 30.w,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFF5DD),
                                        border: Border.all(color: Keys.COLOR),borderRadius: BorderRadius.circular(50)),
                                    child: Center(
                                      child: AppWidgets.buildText(
                                          context: context,
                                          text: 'SCHEDULE',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Keys.COLOR,
                                          fontFamily: 'montserrat_regular'
                                      ),
                                    ),
                                  ),
                                ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: SizedBox(width: 100.w,child: AppWidgets.buildText(
                                  context: context,
                                  text: 'Unit 2',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Keys.SECONDARY_COLOR,
                                  fontFamily: 'montserrat_regular'),),
                            ),
                            SizedBox(height: 2,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
