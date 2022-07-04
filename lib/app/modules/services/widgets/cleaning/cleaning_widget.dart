import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/select_unit.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_card_reusable.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class CleaningWidget extends StatelessWidget {
  const CleaningWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    buildHouseKeepingExpanded() {
      return Container();
    }

    buildDisinfectionExpanded() {
      return Container();
    }

    buildDeepCleaningExpanded() {
      return Container();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppWidgets.appbar(
        context,
        title: 'Cleaning',
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
                        readMore: buildHouseKeepingExpanded(),
                        content:'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry standard\ndummy text ever since the 1500s.',
                        heading: 'House Keeping',
                        imageUrl: 'assets/images/house_keeping.png',
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
                        readMore: buildDisinfectionExpanded(),
                        content:  'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry standard\ndummy text ever since the 1500s.',
                        heading: 'Disinfection',
                        imageUrl: 'assets/images/disinfection.png',
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
                        readMore: buildDeepCleaningExpanded(),
                        content:'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry standard\ndummy text ever since the 1500s.',
                        imageUrl: 'assets/images/deep_cleaning.png',
                        onPressed: (){
                          Get.to(
                                () =>  AddSelectUnit(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                        heading: 'Deep Cleaning',
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


