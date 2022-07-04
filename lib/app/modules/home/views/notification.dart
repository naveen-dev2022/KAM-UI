import 'package:flutter/material.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Notifications',
        isActionPresent: true,
        child: IconButton(
          onPressed: () {

          },
          icon: const ImageIcon(AssetImage(
              'assets/images/notification_icon.png')),
          color: Colors.black
        ),
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
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Service Order 443959 is created\nSuccessfully',
                                      fontFamily: 'montserrat_medium',
                                      color: Keys.SECONDARY_COLOR,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: IconButton(
                                    onPressed: () {

                                    },
                                    icon: const ImageIcon(AssetImage(
                                        'assets/images/notification_icon.png')),
                                    color: Keys.COLOR,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Container(
                      height: 100,
                      width: 90.w,
                      decoration: BoxDecoration(
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
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: AppWidgets.buildText(
                                      context: context,
                                      text: 'Unit Office added',
                                      fontFamily: 'montserrat_medium',
                                      color: Keys.SECONDARY_COLOR,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: IconButton(
                                    onPressed: () {

                                    },
                                    icon: const ImageIcon(AssetImage(
                                        'assets/images/notification_icon.png')),
                                    color: Keys.COLOR,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
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
