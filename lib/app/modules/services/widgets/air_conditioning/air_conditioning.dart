import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/select_unit.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_card_reusable.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class AirConditioningWidget extends StatelessWidget {
  const AirConditioningWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildDuctExpanded() {
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
                  "• Provide condition report with suggested\n  corrective actions.\n• Cleaning of the A/C filters and grills.\n• Inspection & installation - water\n  leakages,drain blockage,installing water\n  heater.\n• Inspection of distribution board.\n• Inspection and Cleaning of the \n  condensate drain tray.\n• Flushing of the A/C drain lines\n• Checking the condition and Operational\n  status of the thermostat",
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
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'montserrat_regular',
              context: context,
              color: Colors.white),
          SizedBox(
            height: 2.h,
          ),
        ],
      );
    }

    buildAcRepairExpanded() {
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
                  "• Cleaning of filters and grills\n• Cleaning and checking of electrical\n  components\n• Cleaning of drain pans\n• Checking of actuator motors and valves\n• Checking thermostat and chilled water\n  pipe insolation\n• Checking and servicing FCU fan cooling\n  coil, blower, and motor\n• Diffuser cleaning\n• Replacement of AC thermostat, actuator\n  motor, actuator valve, gate valve, DRV\n  valve,Fan motor (indoor & out door).\n• Compressor replacement, Coil & duct\n  cleaning,strainer cleaning,strainer cleaning/replacement,\n• Flushing of CHW system & gas refilling",
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

    buildAcServiceExpanded() {
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
                  "• Provide condition report with suggested\n  corrective actions.\n• Cleaning of the A/C filters and grills.\n• Inspection & installation - water\n  leakages,drain blockage,installing water\n  heater.\n• Inspection of distribution board.\n• Inspection and Cleaning of the \n  condensate drain tray.\n• Flushing of AC drain lines\n• Flushing of the condition and Operational\n  status of the thermostat.",
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
        title: 'Air Conditioning',
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
                      const EdgeInsets.only(left: 14, right: 14, bottom: 200),
                  child: Column(
                    children: [
                      ReusableServiceCard(
                        isFromResedential:
                            Get.find<ServiceController>().isResidencial.value,
                        ratePrice: 'Rate - AED 250.00',
                        contractPrice: 'Contract Rate 250.00',
                        readMore: buildDuctExpanded(),
                        content:
                            'The KAM team consists of qualified\ntechnicians specialized to to ensure the Air\nconditioning systems are maintained\nproperly specifically customized the region\nduring high outdoor temperatures.',
                        heading: 'Duct Cleaning',
                        imageUrl: 'assets/images/duct.png',
                        onPressed: () {
                          Get.to(
                            () => AddSelectUnit(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      ReusableServiceCard(
                        isFromResedential:
                            Get.find<ServiceController>().isResidencial.value,
                        ratePrice: 'Rate - AED 250.00',
                        contractPrice: 'Contract Rate 250.00',
                        readMore: buildAcRepairExpanded(),
                        content:
                            'The KAM team consists of qualified\ntechnicians specialized to to ensure the Air\nconditioning systems are maintained\nproperly specifically customized the region\nduring high outdoor temperatures.',
                        heading: 'A/C Repair',
                        imageUrl: 'assets/images/amc_widget_icon.png',
                        onPressed: () {
                          Get.to(
                            () => AddSelectUnit(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      ReusableServiceCard(
                        isFromResedential:
                            Get.find<ServiceController>().isResidencial.value,
                        ratePrice: 'Rate - AED 250.00',
                        contractPrice: 'Contract Rate 250.00',
                        readMore: buildAcServiceExpanded(),
                        content:
                            'The KAM team consists of qualified\ntechnicians specialized to to ensure the Air\nconditioning systems are maintained\nproperly specifically customized the region\nduring high outdoor temperatures.',
                        imageUrl: 'assets/images/ac_service.png',
                        onPressed: () {
                          Get.to(
                            () => AddSelectUnit(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        },
                        heading: 'A/C Service',
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
