import 'package:flutter/material.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';

class Support extends StatelessWidget {
   Support({Key? key}) : super(key: key);

  bool _keyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppWidgets.appbar(
        context,
        title: 'Support',
        isActionPresent: false,
      ),
      body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Stack(
            children: [
            Positioned(
                bottom: 0,
                child: Image.asset('assets/images/stack_image.png',fit: BoxFit.fill,width: 100.w,)),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20,bottom: _keyboardVisible ? 40.h : bottom),
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height: _keyboardVisible ? 8.h : 100,
                    width: 90.w,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: SizedBox(
                              width: 100.w,
                              child: AppWidgets.buildText(
                                  context: context,
                                  text: 'Hi, Lorem Ipsum',
                                  fontFamily: 'montserrat_regular',
                                  color: Keys.SECONDARY_COLOR,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: SizedBox(
                              width: 100.w,
                              child: AppWidgets.buildText(
                                  context: context,
                                  text: 'Lorem Ipsum',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade500,
                                  fontFamily: 'montserrat_regular'),
                            ),
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height:_keyboardVisible ? 25.h : 280,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: SizedBox(
                              width: 100.w,
                              child: AppWidgets.buildText(
                                  context: context,
                                  text: 'Lorem Ipsum Lorem Ipsum Lorem Ipsum\nLorem Ipsum?',
                                  fontFamily: 'montserrat_regular',
                                  color: Keys.SECONDARY_COLOR,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: SizedBox(
                              width: 100.w,
                              child: AppWidgets.buildText(
                                  context: context,
                                  text: 'Lorem Ipsum',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade500,
                                  fontFamily: 'montserrat_regular'),
                            ),
                          ),
                          SizedBox(height: 2.h,),
                          AppWidgets.buildText(
                              context: context,
                              text: 'Place Order',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Keys.SECONDARY_COLOR,
                              fontFamily: 'montserrat_regular',
                            textDecoration: TextDecoration.underline
                          ),
                          SizedBox(height: 2.h,),
                          AppWidgets.buildText(
                              context: context,
                              text: 'Service Catalog',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Keys.SECONDARY_COLOR,
                              fontFamily: 'montserrat_regular',
                              textDecoration: TextDecoration.underline
                          ),
                          SizedBox(height: 2.h,),
                          AppWidgets.buildText(
                              context: context,
                              text: 'Track Order Status',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Keys.SECONDARY_COLOR,
                              fontFamily: 'montserrat_regular',
                              textDecoration: TextDecoration.underline
                          ),
                          SizedBox(height: 2.h,),
                          AppWidgets.buildText(
                              context: context,
                              text: 'Chat with Us',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Keys.SECONDARY_COLOR,
                              fontFamily: 'montserrat_regular',
                              textDecoration: TextDecoration.underline
                          ),
                          SizedBox(height: 5,),

                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container(),),
                  Padding(
                    padding:  EdgeInsets.only(bottom: _keyboardVisible ? 0.0 : 70.0),
                    child: CustomTextField(
                      hint: 'Type here...',
                      hintFontSize: 12,
                      hintFontWeight: FontWeight.w400,
                      issufixIcon: true,
                      isBorderEnable: false,
                      sufixIcon: Icons.send,
                      sufixColor: Keys.COLOR,
                      isprefixIcon: false,
                      topLeft: 6,
                      topRight: 6,
                      bottomRight: 6,
                      bottomLeft: 6,
                      paddingLeft: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],)
      ),
    );
  }
}
