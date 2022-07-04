import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/select_unit.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_card_reusable.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class PlumbingWidget extends StatelessWidget {
  const PlumbingWidget({Key? key}) : super(key: key);

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
              "• Fixing leaks.\n• Water heater and thermostat\n  inspections\n• Blocked sinks, pipes and toilet repair\n• Tap and flush repair or replace\n• External pipe leak inspections",
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
              text: '• Spare parts (charged separately)',context: context,     fontSize: 14,
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
        title: 'Plumbing',
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
                    content:'The KAM maintenance team are qualified to\nfix any plumbing issue you experience. The\nteam are fully trained in delivering a range\nof professional plumbing services, including\ninstallation, repair and maintenance.',
                    heading: 'Plumbing',
                    imageUrl: 'assets/images/plumbing_widget.png',
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

