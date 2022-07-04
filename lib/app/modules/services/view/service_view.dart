import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/widgets/air_conditioning/air_conditioning.dart';
import 'package:kam_sudo/app/modules/services/widgets/amc_contract/amc_widget.dart';
import 'package:kam_sudo/app/modules/services/widgets/carpentry/carpentry_widget.dart';
import 'package:kam_sudo/app/modules/services/widgets/cleaning/cleaning_widget.dart';
import 'package:kam_sudo/app/modules/services/widgets/electrical/electrical.dart';
import 'package:kam_sudo/app/modules/services/widgets/masonry/masonry_widget.dart';
import 'package:kam_sudo/app/modules/services/widgets/other/other_widget.dart';
import 'package:kam_sudo/app/modules/services/widgets/painting/painting_widget.dart';
import 'package:kam_sudo/app/modules/services/widgets/plumbing/plumbing_widget.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_type_reusable.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class ServiceView extends GetView<ServiceController> {
  ServiceView({Key? key}) : super(key: key);

  RxList swapColors=[true,false].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppWidgets.appbar(
        context,
        title: 'Service',
        isActionPresent: false,
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: ListView(
          children: [
            Stack(
              children: [
                Positioned(
                    bottom: 0,
                    child: Image.asset('assets/images/stack_image.png',fit: BoxFit.fill,width: 100.w,)),
                Padding(
                  padding: const EdgeInsets.only(left: 14,right: 14,bottom: 160),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                    Obx(()=>  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CommonTextButton(
                          onPressed: () {
                            swapColors[0]=true;
                            swapColors[1]=false;
                            controller.isResidencial.value=true;
                          },
                          borderColor: Keys.COLOR,
                          color: swapColors[0]?Keys.SECONDARY_COLOR:Colors.white,
                          height: 35,
                          width: 37.w,
                          radius: 6,
                          child: Center(
                            child: AppWidgets.buildText(
                                text: 'Residential',
                                context: context,
                                color: swapColors[0]?Colors.white:Keys.SECONDARY_COLOR,
                                fontFamily: 'montserrat_regular',
                                fontSize: 13),
                          ),
                        ),
                        CommonTextButton(
                          onPressed: () {
                            swapColors[0]=false;
                            swapColors[1]=true;
                            controller.isResidencial.value=false;
                          },
                          borderColor: Keys.COLOR,
                          color: swapColors[1]?Keys.SECONDARY_COLOR:Colors.white,
                          height: 35,
                          width: 37.w,
                          radius: 6,
                          child: Center(
                              child: AppWidgets.buildText(
                                  text: 'Commercial',
                                  context: context,
                                  color: swapColors[1]?Colors.white:Keys.SECONDARY_COLOR,
                                  fontFamily: 'montserrat_regular',
                                  fontSize: 13)),
                        ),
                      ],
                    ),),
                      SizedBox(height: 3.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const AMCWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );

                            },
                            height: 100,
                            width: 40.w,
                            imageUrl: 'assets/images/amc.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'AMC Contract Package',
                                    context: context,
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    textAlign: TextAlign.center)),
                          ),
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const AirConditioningWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 100,
                            width: 40.w,
                            imageUrl: 'assets/images/air_conditioning.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Air\nConditioning',
                                    context: context,
                                    fontSize: 14,
                                    fontFamily: 'montserrat_regular',
                                    color: Colors.white,
                                    textAlign: TextAlign.center)),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const ElectricalWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 100,

                            width: 40.w,
                            imageUrl: 'assets/images/electrical.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Electrical',
                                    context: context,
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    textAlign: TextAlign.center)),
                          ),
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const CarpentryWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 100,
                            width: 40.w,
                            imageUrl: 'assets/images/carpentary.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Carpentry',
                                    context: context,
                                    fontSize: 14,
                                    fontFamily: 'montserrat_regular',
                                    color: Colors.white,
                                    textAlign: TextAlign.center)),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const MasonryWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 100,
                            width: 40.w,
                            imageUrl: 'assets/images/masonry.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Masonry',
                                    context: context,
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    textAlign: TextAlign.center)),
                          ),
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const PlumbingWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 100,
                            width: 40.w,
                            imageUrl: 'assets/images/plumbing.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Plumbing',
                                    context: context,
                                    fontSize: 14,
                                    fontFamily: 'montserrat_regular',
                                    color: Colors.white,
                                    textAlign: TextAlign.center)),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const PaintingWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 100,
                            width: 40.w,
                            imageUrl: 'assets/images/painting.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Painting',
                                    context: context,
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    textAlign: TextAlign.center)),
                          ),
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const CleaningWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 100,
                            width: 40.w,
                            imageUrl: 'assets/images/cleaning.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Cleaning',
                                    context: context,
                                    fontSize: 14,
                                    fontFamily: 'montserrat_regular',
                                    color: Colors.white,
                                    textAlign: TextAlign.center)),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ServiceTypeView(
                            onPressed: (){
                              Get.to(
                                    () => const OtherWidget(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            height: 100,
                            width: 40.w,
                            imageUrl: 'assets/images/other.png',
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Other',
                                    context: context,
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'montserrat_regular',
                                    textAlign: TextAlign.center)),
                          ),
                          SizedBox(
                            height: 100,
                            width: 42.w,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
