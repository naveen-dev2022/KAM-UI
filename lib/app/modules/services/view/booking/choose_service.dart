import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/view/booking/add_units.dart';
import 'package:kam_sudo/app/modules/services/view/booking/service_type.dart';
import 'package:kam_sudo/app/modules/services/view/booking/time_line_reusable.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class ChooseService extends StatelessWidget {
  ChooseService({Key? key}) : super(key: key);

  RxList colors=[false,false,false,false,false,false,false,false].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Choose Service',
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
                  child: Obx(()=>Column(
                    children: [
                      SizedBox(
                        height: 4.h,
                      ),
                      TimeLineReusable(
                        borderColor1: Keys.COLOR,
                        borderColor2: Keys.COLOR,
                        borderColor3: Keys.GREY,
                        borderColor4: Keys.GREY,
                        borderColor5: Keys.GREY,
                        borderColor6: Keys.GREY,
                        borderColor7: Keys.GREY,
                        color1: Keys.COLOR,
                        color2:  Keys.SECONDARY_COLOR1,
                        color3:  Keys.SECONDARY_COLOR1,
                        color4:  Keys.SECONDARY_COLOR1,
                        color5:  Keys.SECONDARY_COLOR1,
                        color6:  Keys.SECONDARY_COLOR1,
                        icon1: const Icon(Icons.done,size: 16,color: Colors.white,),
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
                            onTap:(){
                              colors[0]=true;
                              colors[1]=false;
                              colors[2]=false;
                              colors[3]=false;
                              colors[4]=false;
                              colors[5]=false;
                              colors[6]=false;
                              colors[7]=false;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration:   BoxDecoration(
                                color: colors[0]?Keys.COLOR:Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Color(0xffececec).withOpacity(0.8),
                                    blurRadius: 15,
                                    offset: const Offset(0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Card(
                                color: colors[0]?Keys.COLOR:Colors.white,
                                elevation: 0,
                                child: Center(child: AppWidgets.buildText(textAlign:TextAlign.center,text: 'A/C Repair',fontSize: 14,fontFamily: 'montserrat_regular', context: context,color:colors[0]?Colors.white:Keys.SECONDARY_COLOR)),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                              colors[0]=false;
                              colors[1]=true;
                              colors[2]=false;
                              colors[3]=false;
                              colors[4]=false;
                              colors[5]=false;
                              colors[6]=false;
                              colors[7]=false;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration:   BoxDecoration(
                                color: colors[1]?Keys.COLOR:Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Color(0xffececec).withOpacity(0.8),
                                    blurRadius: 15,
                                    offset: const Offset(0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Card(
                                color: colors[1]?Keys.COLOR:Colors.white,
                                elevation: 0,
                                child: Center(child: AppWidgets.buildText(textAlign:TextAlign.center,text: 'A/C Plumbing\nand Electrical',fontSize: 14,fontFamily: 'montserrat_regular', context: context,color:colors[1]?Colors.white:Keys.SECONDARY_COLOR)),
                              ),
                            ),
                          ),
                        ],),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap:(){
                              colors[0]=false;
                              colors[1]=false;
                              colors[2]=true;
                              colors[3]=false;
                              colors[4]=false;
                              colors[5]=false;
                              colors[6]=false;
                              colors[7]=false;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration:   BoxDecoration(
                                color: colors[2]?Keys.COLOR:Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Color(0xffececec).withOpacity(0.8),
                                    blurRadius: 15,
                                    offset: const Offset(0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Card(
                                color: colors[2]?Keys.COLOR:Colors.white,
                                elevation: 0,
                                child: Center(child: AppWidgets.buildText(textAlign:TextAlign.center,text: 'Access Control',fontSize: 14,fontFamily: 'montserrat_regular', context: context,color:colors[2]?Colors.white:Keys.SECONDARY_COLOR)),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                              colors[0]=false;
                              colors[1]=false;
                              colors[2]=false;
                              colors[3]=true;
                              colors[4]=false;
                              colors[5]=false;
                              colors[6]=false;
                              colors[7]=false;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration:   BoxDecoration(
                                color: colors[3]?Keys.COLOR:Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Color(0xffececec).withOpacity(0.8),
                                    blurRadius: 15,
                                    offset: const Offset(0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Card(
                                color: colors[3]?Keys.COLOR:Colors.white,
                                elevation: 0,
                                child: Center(child: AppWidgets.buildText(textAlign:TextAlign.center,text: 'Carpentry',fontSize: 14,fontFamily: 'montserrat_regular', context: context,color:colors[3]?Colors.white:Keys.SECONDARY_COLOR)),
                              ),
                            ),
                          ),
                        ],),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap:(){
                              colors[0]=false;
                              colors[1]=false;
                              colors[2]=false;
                              colors[3]=false;
                              colors[4]=true;
                              colors[5]=false;
                              colors[6]=false;
                              colors[7]=false;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration:   BoxDecoration(
                                color: colors[4]?Keys.COLOR:Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Color(0xffececec).withOpacity(0.8),
                                    blurRadius: 15,
                                    offset: const Offset(0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Card(
                                color: colors[4]?Keys.COLOR:Colors.white,
                                elevation: 0,
                                child: Center(child: AppWidgets.buildText(textAlign:TextAlign.center,text: 'Carpet Cleaning',fontSize: 14,fontFamily: 'montserrat_regular', context: context,color:colors[4]?Colors.white:Keys.SECONDARY_COLOR)),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                              colors[0]=false;
                              colors[1]=false;
                              colors[2]=false;
                              colors[3]=false;
                              colors[4]=false;
                              colors[5]=true;
                              colors[6]=false;
                              colors[7]=false;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration:   BoxDecoration(
                                color: colors[5]?Keys.COLOR:Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Color(0xffececec).withOpacity(0.8),
                                    blurRadius: 15,
                                    offset: const Offset(0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Card(
                                color: colors[5]?Keys.COLOR:Colors.white,
                                elevation: 0,
                                child: Center(child: AppWidgets.buildText(textAlign:TextAlign.center,text: 'CCTV\nMaintenance',fontSize: 14,fontFamily: 'montserrat_regular', context: context,color:colors[5]?Colors.white:Keys.SECONDARY_COLOR)),
                              ),
                            ),
                          ),
                        ],),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap:(){
                              colors[0]=false;
                              colors[1]=false;
                              colors[2]=false;
                              colors[3]=false;
                              colors[4]=false;
                              colors[5]=false;
                              colors[6]=true;
                              colors[7]=false;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration:   BoxDecoration(
                                color: colors[6]?Keys.COLOR:Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Color(0xffececec).withOpacity(0.8),
                                    blurRadius: 15,
                                    offset: const Offset(0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Card(
                                color: colors[6]?Keys.COLOR:Colors.white,
                                elevation: 0,
                                child: Center(child: AppWidgets.buildText(textAlign:TextAlign.center,text: 'Cleaning',fontSize: 14,fontFamily: 'montserrat_regular', context: context,color:colors[6]?Colors.white:Keys.SECONDARY_COLOR)),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                              colors[0]=false;
                              colors[1]=false;
                              colors[2]=false;
                              colors[3]=false;
                              colors[4]=false;
                              colors[5]=false;
                              colors[6]=false;
                              colors[7]=true;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration:   BoxDecoration(
                                color: colors[7]?Keys.COLOR:Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow:  [
                                  BoxShadow(
                                    color: Color(0xffececec).withOpacity(0.8),
                                    blurRadius: 15,
                                    offset: const Offset(0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Card(
                                color: colors[7]?Keys.COLOR:Colors.white,
                                elevation: 0,
                                child: Center(child: AppWidgets.buildText(textAlign:TextAlign.center,text: 'Disinfection',fontSize: 14,fontFamily: 'montserrat_regular', context: context,color:colors[7]?Colors.white:Keys.SECONDARY_COLOR)),
                              ),
                            ),
                          ),
                        ],),
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
                                    () =>  ServiceType(),
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
                  ),)
              ),
            ],
          )),
    );
  }
}
