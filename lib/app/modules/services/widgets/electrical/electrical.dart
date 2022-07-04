import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/select_unit.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_card_reusable.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class ElectricalWidget extends StatelessWidget {
  const ElectricalWidget({Key? key}) : super(key: key);

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
                  "• Onsite inspection and diagnosis to the\n  problem.\n• Testing for short circuits and electrical\n  writing that can lead to fires.\n• Installation of new Sockets, Switches and\n  lights.\n• Rectifying faults and dangerous writing\n  installations.\n• Upgrading of fuse/circuit boards.",
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
              text:
                  '• Spare parts (charged separately).\n• Any Civil work to access the electrical\n  components.',
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
        title: 'Electrical',
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
                    isFromResedential:
                        Get.find<ServiceController>().isResidencial.value,
                    ratePrice: 'Rate - AED 250.00',
                    contractPrice: 'Contract Rate 250.00',
                    readMore: buildExpanded(),
                    content:
                        'The KAM team consists of qualified\ntechnicians specialized to to ensure the Air\nconditioning systems are maintained\nproperly specifically customized the region\nduring high outdoor temperatures.',
                    heading: 'Electrical',
                    imageUrl: 'assets/images/electrical_widget.png',
                    onPressed: () {
                      Get.to(
                        () => AddSelectUnit(),
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
