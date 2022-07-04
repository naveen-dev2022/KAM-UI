import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/select_unit.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_card_reusable.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class OtherWidget extends StatelessWidget {
  const OtherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    buildLandscapingExpanded() {
      return Container();
    }

    buildPestControlExpanded() {
      return Container();
    }

    buildMoveInOutExpanded() {
      return Column(
        children: [
          AppWidgets.buildText(
              context: context,
              text: 'This service will be quoted on or after the\ncompletion of the inspection.',
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: 'montserrat_regular',
            fontSize: 14,
           ),
          SizedBox(height: 1.h,)
        ],
      );
    }

    buildFitOutExpanded() {
      return Container();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppWidgets.appbar(
        context,
        title: 'Other',
        isActionPresent: false,
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: ListView(
          children: [
            SizedBox(height: 2.h,),
            Stack(
              children: [
                Positioned(
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/stack_image.png',
                      fit: BoxFit.fill,
                      width: 100.w,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 14,right: 14,bottom: 200),
                  child: Column(
                    children: [
                      ReusableServiceCard(
                        isFromResedential: Get.find<ServiceController>().isResidencial.value,
                        ratePrice: 'Rate - AED 200.00',
                        contractPrice: 'Contract Rate 200.00',
                        readMore: buildLandscapingExpanded(),
                        content:'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry standard\ndummy text ever since the 1500s.',
                        heading: 'Landscaping',
                        imageUrl: 'assets/images/landscape.png',
                        onPressed: (){
                          Get.to(
                                () =>  AddSelectUnit(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                      ),
                      SizedBox(height: 2.h,),
                      ReusableServiceCard(
                        isFromResedential: Get.find<ServiceController>().isResidencial.value,
                        ratePrice: 'Rate - AED 200.00',
                        contractPrice: 'Contract Rate 200.00',
                        readMore: buildPestControlExpanded(),
                        content:  'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry standard\ndummy text ever since the 1500s.',
                        heading: 'Pest Control',
                        imageUrl: 'assets/images/pest_control.png',
                        onPressed: (){
                          Get.to(
                                () =>  AddSelectUnit(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                      ),
                      SizedBox(height: 2.h,),
                      ReusableServiceCard(
                        isFromResedential: Get.find<ServiceController>().isResidencial.value,
                        ratePrice: 'Rate - AED 200.00',
                        contractPrice: 'Contract Rate 200.00',
                        readMore: buildMoveInOutExpanded(),
                        content:'Rectifying the damages in the unit which\nincludes painting, plumbing, electrical, civil\nwork, carpentry and cleaning & pest control\nservices.',
                        imageUrl: 'assets/images/moveInOut.png',
                        onPressed: (){
                          Get.to(
                                () =>  AddSelectUnit(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                        heading: 'Move in and out',
                      ),
                      SizedBox(height: 2.h,),
                      ReusableServiceCard(
                        isFromResedential: Get.find<ServiceController>().isResidencial.value,
                        ratePrice: 'Rate - AED 200.00',
                        contractPrice: 'Contract Rate 200.00',
                        readMore: buildFitOutExpanded(),
                        content:'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry standard\ndummy text ever since the 1500s.',
                        imageUrl: 'assets/images/fitout.png',
                        onPressed: (){
                          Get.to(
                                () =>  AddSelectUnit(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                        heading: 'Fitout',
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


