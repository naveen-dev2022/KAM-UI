import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/services/view/booking/time_line_reusable.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

import 'appointment_date.dart';

class ServiceType extends StatefulWidget {
  ServiceType({Key? key}) : super(key: key);

  @override
  State<ServiceType> createState() => _ServiceTypeState();
}

class _ServiceTypeState extends State<ServiceType>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  RxList swapColorTabBar = [true, false].obs;
  RxBool isContractActive = true.obs;
  RxInt getIndex = 0.obs;
  RxBool checkBox=false.obs;
  String? selectedValue;
  List<String> items = [
    'Sessions 1',
    'Sessions 2',
  ];

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this)
      ..addListener(() {
        getIndex.value = tabController!.index;
      });
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    tabController?.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appbar(
        context,
        title: 'Service Type',
        isActionPresent: false,
      ),
      body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: ListView(
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
                      child: Obx(() => Column(
                            children: [
                              SizedBox(
                                height: 4.h,
                              ),
                              TimeLineReusable(
                                borderColor1: Keys.COLOR,
                                borderColor2: Keys.COLOR,
                                borderColor3: Keys.COLOR,
                                borderColor4: Keys.GREY,
                                borderColor5: Keys.GREY,
                                borderColor6: Keys.GREY,
                                borderColor7: Keys.GREY,
                                color1: Keys.COLOR,
                                color2: Keys.COLOR,
                                color3: Keys.SECONDARY_COLOR1,
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
                                icon3: const SizedBox(),
                                icon4: const SizedBox(),
                                icon5: const SizedBox(),
                                icon6: const SizedBox(),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CommonTextButton(
                                    onPressed: () {
                                      swapColorTabBar[0] = true;
                                      swapColorTabBar[1] = false;
                                      isContractActive.value = true;
                                    },
                                    borderColor: Keys.COLOR,
                                    color: swapColorTabBar[0]
                                        ? Keys.SECONDARY_COLOR
                                        : Colors.white,
                                    height: 35,
                                    width: 38.w,
                                    radius: 6,
                                    child: Center(
                                        child: AppWidgets.buildText(
                                            text: 'Contract',
                                            context: context,
                                            color: swapColorTabBar[0]
                                                ? Colors.white
                                                : Keys.SECONDARY_COLOR,
                                            fontFamily: 'montserrat_regular',
                                            fontSize: 13)),
                                  ),
                                  CommonTextButton(
                                    onPressed: () {
                                      swapColorTabBar[0] = false;
                                      swapColorTabBar[1] = true;
                                      isContractActive.value = false;
                                    },
                                    borderColor: Keys.COLOR,
                                    color: swapColorTabBar[1]
                                        ? Keys.SECONDARY_COLOR
                                        : Colors.white,
                                    height: 35,
                                    width: 38.w,
                                    radius: 6,
                                    child: Center(
                                        child: AppWidgets.buildText(
                                            text: 'One Time',
                                            context: context,
                                            color: swapColorTabBar[1]
                                                ? Colors.white
                                                : Keys.SECONDARY_COLOR,
                                            fontFamily: 'montserrat_regular',
                                            fontSize: 13)),
                                  ),
                                ],
                              ),
                              isContractActive.value
                                  ? Contract(
                                      tabController: tabController,
                                      index: getIndex)
                                  : SizedBox(),
                              SizedBox(
                                height: 4.h,
                              ),
                              DropdownButtonHideUnderline(
                                child: Opacity(
                                  opacity: 0.8,
                                  child: DropdownButton2(
                                    dropdownElevation: 1,
                                    dropdownDecoration: BoxDecoration(color: Colors.white),
                                    isExpanded: true,
                                    hint: AppWidgets.buildText(text: 'Sessions',fontFamily: 'montserrat_regular', context: context,fontSize: 18,fontWeight: FontWeight.w400,color: Colors.grey.shade500),
                                    items: items
                                        .map((item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: AppWidgets.buildText(text: item, context: context,fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'montserrat_regular'),
                                        ),)
                                        .toList(),
                                    value: selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value as String;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.arrow_drop_down_outlined,
                                      size: 28,
                                      color: Colors.black,
                                    ),
                                    iconSize: 14,
                                    buttonHeight: 50,
                                    buttonWidth: 400,
                                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                                    buttonDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    itemHeight: 40,
                                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                                    dropdownMaxHeight: 200,
                                    dropdownPadding: null,
                                    scrollbarRadius: const Radius.circular(40),
                                    scrollbarThickness: 6,
                                    scrollbarAlwaysShow: true,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                               Divider(thickness: 1.0,color: Colors.grey.shade300,),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppWidgets.buildText(
                                      text: 'Amount to pay including VAT',
                                      context: context,
                                      color: Keys.SECONDARY_COLOR,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'montserrat_regular',
                                      fontSize: 14),
                                  AppWidgets.buildText(
                                      text: '250 AED',
                                      context: context,
                                      color: Keys.COLOR,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'montserrat_regular',
                                      fontSize: 16)
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Container(
                                height: 70,
                                width: 100.w,
                                decoration:  BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffececec).withOpacity(0.8),
                                      blurRadius: 15,
                                      offset: const Offset(0, 7), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Card(
                                  elevation: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16, right: 16),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/loyalty.png'),
                                        SizedBox(width: 5,),
                                        AppWidgets.buildText(
                                          text:
                                          'Use Loyalty Points',
                                          context: context,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'montserrat_regular',
                                          color: Keys.SECONDARY_COLOR,
                                        ),
                                        Expanded(child: Container()),
                                        Obx(()=>Checkbox(
                                          side: BorderSide(color: Colors.grey.shade400,width: 1.5),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                          value: checkBox.value,
                                          activeColor: Keys.COLOR,
                                          onChanged: (bool? value) {
                                          checkBox.value=!checkBox.value;
                                          },
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 35.h,),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 80),
                                child: Opacity(
                                  opacity: 0.8,
                                  child: CommonTextButton(
                                    onPressed: () {
                                      Get.to(
                                            () =>  AppointmentDate(),
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
                          ))),
                ],
              )
            ],
          )),
    );
  }
}

class Contract extends StatelessWidget {
  Contract({Key? key, this.tabController, this.index}) : super(key: key);

  TabController? tabController;
  RxInt? index;

  LinearGradient activeColor() {
    if (index!.value == 0) {
      return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: const [
            Color(0xffD4D4D4),
            Color(0xffC4C4C4),
            Color(0xffA0A0A0),
            Color(0xff888888),
            Color(0xffD4D4D4),
          ]);
    } else if (index!.value == 1) {
      return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: const [
            Color(0xffF1D47D),
            Color(0xffF3DA8F),
            Color(0xffE1A64F),
            Color(0xffF3DA8F),
            Color(0xffF1D47D),
          ]);
    } else {
      return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: const [
            Color(0xffC8D0E5),
            Color(0xffC4C4C4),
            Color(0xffFAFAFA),
            Color(0xff566B7C),
            Color(0xffA9B8CF),
          ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 3.h,
        ),
        SizedBox(
          width: 100.w,
          child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: AppWidgets.buildText(
              text: 'Select your package',
              context: context,
              color: Keys.SECONDARY_COLOR,
              fontFamily: 'montserrat_regular',
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        SizedBox(
            height: 40,
            child: Obx(
              () => TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Keys.SECONDARY_COLOR,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: TextStyle(
                    fontFamily: 'montserrat_regular',
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                  gradient: activeColor(),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),
                tabs: const [
                  Tab(
                    text: 'Silver',
                  ),
                  Tab(
                    text: 'Gold',
                  ),
                  Tab(
                    text: 'Platinum',
                  ),
                ],
                controller: tabController,
              ),
            )),
        SizedBox(
          height: 15.h,
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              Container(
                decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffececec).withOpacity(0.8),
                      blurRadius: 15,
                      offset: const Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: AppWidgets.buildText(
                      text:
                          'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem\nIpsum has been the industry standard\ndummy text ever since the 1500s.',
                      context: context,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'montserrat_regular',
                      color: Keys.SECONDARY_COLOR,
                    ),
                  ),
                ),
              ),
              Container(
                decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffececec).withOpacity(0.8),
                      blurRadius: 15,
                      offset: const Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: AppWidgets.buildText(
                      text:
                          'It was popularised in the 1960s with the\nrelease of Letraset sheets containing Lorem\nIpsum passages, and more recently with\ndesktop publishing software like Aldus.',
                      context: context,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'montserrat_regular',
                      color: Keys.SECONDARY_COLOR,
                    ),
                  ),
                ),
              ),
              Container(
                decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffececec).withOpacity(0.8),
                      blurRadius: 15,
                      offset: const Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: AppWidgets.buildText(
                      text:
                          'Contrary to popular belief, Lorem Ipsum is\nnot simply random text. It has roots in a piece\nof classical Latin literature from 45 BC,\nmaking it over 2000 years old.',
                      context: context,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'montserrat_regular',
                      color: Keys.SECONDARY_COLOR,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
