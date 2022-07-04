import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/select_unit.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_card_reusable.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class CarpentryWidget extends StatelessWidget {
  const CarpentryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    buildExpanded() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppWidgets.buildText(
              text: 'Includes', context: context, fontSize: 16, color: Colors.white),
          SizedBox(
            height: 1.h,
          ),
          AppWidgets.buildText(
              text:
              "• Picture and mirror hanging.\n• Putting up shelves\n• Door, gates, cupboard locks and hinges\n  repair/place.\n• Repair drawers, kitchen cabinets,\n  wardrobe door hings ets.\n• Safety gates\n• Silicon sealing.\n• Curtains and Blinds installation.",
              context: context,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'montserrat_regular',
              color: Colors.white
          ),
          SizedBox(
            height: 2.h,
          ),
          AppWidgets.buildText(
              text: 'Excludes', context: context, fontSize: 16,color: Colors.white),
          SizedBox(
            height: 1.h,
          ),
          AppWidgets.buildText(
              text: '• Spare parts (charged separately).\n• This service will be quoted on or after the\n  completion of the inspection.',    context: context,     fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'montserrat_regular',color: Colors.white),
          SizedBox(
            height: 2.h,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppWidgets.appbar(
        context,
        title: 'Carpentry',
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
                  padding: const EdgeInsets.only(left: 14,right: 14,bottom: 500),
                  child:  ReusableServiceCard(
                    isFromResedential: Get.find<ServiceController>().isResidencial.value,
                    ratePrice: 'Rate - AED 250.00',
                    contractPrice: 'Contract Rate 250.00',
                    readMore: buildExpanded(),
                    content:'KAM Handyman can help with most\nCarpentry around the house. From hanging\nyour favorite picture frames, kitchen\ncabinets or fixing your child safety gate,\nKAM can do it all.',
                    heading: 'Carpentry',
                    imageUrl: 'assets/images/carpentry_widget.png',
                    onPressed: (){
                      Get.to(
                            () =>  AddSelectUnit(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 350),
                      );
                    },
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

