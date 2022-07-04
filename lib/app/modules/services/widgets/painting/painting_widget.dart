import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/select_unit.dart';
import 'package:kam_sudo/app/modules/services/widgets/service_card_reusable.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class PaintingWidget extends StatelessWidget {
  const PaintingWidget({Key? key}) : super(key: key);

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
              "• Painting of villas and apartments\n  (Internal and external).\n• Pre and post preparation of the rooms\n  for painting (covering and protecting\n  furniture, masking taps, cleaning of the\n  area).",
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
              text: '• Special Pain - additional charges for\n  special paint type will be applied.\n• This service will be quoted on or after the\n  completion of the inspection.',context: context,     fontSize: 14,
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
        title: 'Painting',
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
                    isContractAvail: false,
                    contractPrice: '',
                    readMore: buildExpanded(),
                    content:'A good paint job can make your home look\nbrand new. Shabaka’s paint experts make\nsure that your walls get the perfect finish\nevery time – fast and efficiently. Get clear\nsmooth painted walls with our team of\nexperts.',
                    heading: 'Painting',
                    imageUrl: 'assets/images/painting_widget.png',
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

