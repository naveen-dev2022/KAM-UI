import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/controller/service_controller.dart';
import 'package:kam_sudo/app/modules/services/view/booking/payment_methode.dart';
import 'package:kam_sudo/app/modules/services/view/booking/time_line_reusable.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class AppointmentDate extends StatelessWidget {
  AppointmentDate({Key? key}) : super(key: key);

  ScrollController controller = ScrollController();
  final serviceController = Get.find<ServiceController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Appointment Date',
        isActionPresent: false,
      ),
      body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: ListView(
            controller: controller,
            children: [
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 4.h,
                          ),
                          TimeLineReusable(
                            borderColor1: Keys.COLOR,
                            borderColor2: Keys.COLOR,
                            borderColor3: Keys.COLOR,
                            borderColor4: Keys.COLOR,
                            borderColor5: Keys.GREY,
                            borderColor6: Keys.GREY,
                            borderColor7: Keys.GREY,
                            color1: Keys.COLOR,
                            color2: Keys.COLOR,
                            color3: Keys.COLOR,
                            color4: Keys.SECONDARY_COLOR1,
                            color5: Keys.SECONDARY_COLOR1,
                            color6: Keys.SECONDARY_COLOR1,
                            icon1: const Icon(
                              Icons.done,
                              size: 16,
                              color: Colors.white,
                            ),
                            icon2: const Icon(
                              Icons.done,
                              size: 16,
                              color: Colors.white,
                            ),
                            icon3: const Icon(
                              Icons.done,
                              size: 16,
                              color: Colors.white,
                            ),
                            icon4: const SizedBox(),
                            icon5: const SizedBox(),
                            icon6: const SizedBox(),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          SizedBox(
                              width: 100.w,
                              child: AppWidgets.buildText(
                                  text: 'Choose your date & time',
                                  context: context,
                                  color: Keys.SECONDARY_COLOR,
                                  fontFamily: 'montserrat_regular',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 2.h,),
                          SizedBox(
                            height: 10.h,
                            width: 100.w,
                            child: ListView.builder(
                                itemCount: serviceController.date!.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Obx(()=>CommonTextButton(
                                      onPressed: (){
                                        for(int i=0;i< serviceController.date!.length;i++){
                                          serviceController.dateColors[i]=false;
                                        }
                                        serviceController.dateColors[index]=true;
                                      },
                                      elevation: 0,
                                      radius: 8,
                                      height: 60,
                                      width: 80,
                                      color:serviceController.dateColors[index]? Color(0xffFFF5DD):Colors.white,
                                      borderColor: Colors.grey.shade400,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Opacity(
                                            child: AppWidgets.buildText(
                                                text:
                                                '${serviceController.date![index]['day-name']}',
                                                context: context,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'montserrat_regular',
                                                color: Keys.SECONDARY_COLOR),
                                            opacity: 0.4,
                                          ),

                                          AppWidgets.buildText(
                                              text: '${serviceController.date![index]['day']}',
                                              context: context,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'montserrat_medium',
                                              color: Keys.SECONDARY_COLOR),

                                          Opacity(
                                            child: AppWidgets.buildText(
                                                text: '${serviceController.date![index]['month']}',
                                                context: context,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'montserrat_regular',
                                                color: Keys.SECONDARY_COLOR),
                                            opacity: 0.4,
                                          ),
                                        ],
                                      ),
                                    ),)
                                  );
                                }),
                          ),
                          SizedBox(height: 3.h,),
                         Obx(()=> GridView.count(
                             crossAxisCount: 2,
                             crossAxisSpacing: 12.0,
                             mainAxisSpacing: 12.0,
                             childAspectRatio: 4.0,
                             scrollDirection: Axis.vertical,
                             shrinkWrap: true,
                             controller: controller,
                             children: List.generate(serviceController.time!.length, (index) {
                               return CommonTextButton(
                                 onPressed: (){
                                   for(int i=0;i< serviceController.time!.length;i++){
                                     serviceController.timeColors[i]=false;
                                   }
                                   serviceController.timeColors[index]=true;
                                 },
                                 elevation: 0,
                                 radius: 4,
                                 height: 30,
                                 width: 40.w,
                                 color:serviceController.timeColors[index]? Color(0xffFFF5DD):Colors.white,
                                 borderColor: Colors.grey.shade400,
                                 child: Center(
                                     child: AppWidgets.buildText(
                                         text: '${serviceController.time![index]}',
                                         context: context,
                                         fontSize: 14,
                                         fontWeight: FontWeight.w500,
                                         fontFamily: 'montserrat_medium',
                                         color: Keys.SECONDARY_COLOR)),
                               );
                             })),),
                          SizedBox(
                            height: 7.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 120),
                            child: Opacity(
                              opacity: 0.8,
                              child: CommonTextButton(
                                onPressed: () {
                                  Get.to(
                                        () =>  paymentMethode(),
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
                      )),
                ],
              )
            ],
          )),
    );
  }
}
