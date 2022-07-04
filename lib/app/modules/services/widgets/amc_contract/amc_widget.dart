import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/select_unit.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_card_reusable.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class AMCWidget extends StatelessWidget {
  const AMCWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    buildExpanded() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppWidgets.buildText(
              text: 'Includes',
              context: context,
              fontSize: 16,
              color: Colors.white),
          SizedBox(
            height: 1.h,
          ),
          AppWidgets.buildText(
              text:
                  "• Provide condition report with suggested\n  corrective actions.\n• Cleaning of the A/C filters and grills.\n• Inspection & installation - water\n  leakages,drain blockage,installing water\n  heater.\n• Inspection of distribution board.\n• Inspection and Cleaning of the \n  condensate drain tray.\n• Flushing of the condition and Operational\n  status of the thermostat.",
              context: context,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'montserrat_regular',
              color: Colors.white),
          SizedBox(
            height: 2.h,
          ),
          AppWidgets.buildText(
              text: 'Excludes',
              context: context,
              fontSize: 16,
              color: Colors.white),
          SizedBox(
            height: 1.h,
          ),
          AppWidgets.buildText(
              text: '• Spare parts (charged separately)',
              context: context,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'montserrat_regular',
              color: Colors.white),
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
        title: 'AMC Contract Package',
        isActionPresent: false,
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: ListView(
          children: [
            SizedBox(
              height: 2.h,
            ),
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
                  padding:
                      const EdgeInsets.only(left: 14, right: 14, bottom: 500),
                  child: ReusableServiceCard(
                    isFromResedential: Get.find<ServiceController>().isResidencial.value,
                    ratePrice: 'Rate - AED 350.00',
                    contractPrice: 'Contract Rate 350.00',
                    readMore: buildExpanded(),
                    content:'The KAM team consists of qualified\ntechnicians specialized to to ensure the Air\nconditioning systems are maintained\nproperly specifically customized the region\nduring high outdoor temperatures.',
                    heading: 'A/C, Plumbing and\nElectrical Services',
                    imageUrl: 'assets/images/amc_widget_icon.png',
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

