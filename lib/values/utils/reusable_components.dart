import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/home/views/contact_us.dart';
import 'package:kam_sudo/app/modules/home/views/my_orders.dart';
import 'package:kam_sudo/app/modules/home/views/promotions.dart';
import 'package:kam_sudo/app/modules/profile/view/manage_units.dart';
import 'package:kam_sudo/app/modules/services/binding/service_binding.dart';
import 'package:kam_sudo/app/modules/services/view/service_view.dart';
import 'package:kam_sudo/values/utils/helpers.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:sizer/sizer.dart';

class AppWidgets {
  static PreferredSizeWidget appbar(BuildContext context,
      {String? title, bool? isActionPresent, Widget? child}) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 18,
        ),
      ),
      title: AppWidgets.buildText(
          text: title,
          context: context,
          color: Color(0xff1F3F4E),
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'montserrat_regular'),
      actions: [
        isActionPresent! ? child! : SizedBox(),
      ],
    );
  }

  static Widget buildText(
      {required String? text,
      required BuildContext? context,
      TextAlign? textAlign,
      double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      String? fontFamily,
      int? maxline,
      TextDecoration? textDecoration}) {
    return Text(
      text ?? '',
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxline ?? 20,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 16,
        fontFamily: fontFamily ?? 'montserrat_medium',
        fontWeight: fontWeight ?? FontWeight.w700,
        decoration: textDecoration,
      ),
    );
  }

  static Widget myDrawer(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: const Color(0xff1F3F4E),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        child: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.only(top: 30, left: 15),
                child: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 18,
                          ),
                        )),
                    ListTile(
                        title: AppWidgets.buildText(
                            text: 'Home',
                            context: context,
                            color: Colors.white,
                            fontFamily: 'montserrat_regular',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        onTap: () {
                          Get.back();
                        }),
                    ListTile(
                        title: AppWidgets.buildText(
                            text: 'Services',
                            context: context,
                            color: Colors.white,
                            fontFamily: 'montserrat_regular',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        onTap: () {
                          Get.to(
                                () =>  ServiceView(),
                            binding: ServiceBinding(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        }),
                    ListTile(
                        title: AppWidgets.buildText(
                            text: 'My Orders',
                            context: context,
                            color: Colors.white,
                            fontFamily: 'montserrat_regular',
                            fontSize: 15),
                        onTap: () {
                          Get.to(
                                () => const MyOrders(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        }),
                    ListTile(
                        title: AppWidgets.buildText(
                            text: 'My Units',
                            context: context,
                            color: Colors.white,
                            fontFamily: 'montserrat_regular',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        onTap: () {
                          Get.to(
                                () => const MyUnits(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        }),
                    ListTile(
                        title: AppWidgets.buildText(
                            text: 'Promotions',
                            context: context,
                            color: Colors.white,
                            fontFamily: 'montserrat_regular',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        onTap: () {
                          Get.to(
                                () => const Promotions(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        }),
                    ListTile(
                        title: AppWidgets.buildText(
                            text: 'Contact Us',
                            context: context,
                            color: Colors.white,
                            fontFamily: 'montserrat_regular',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        onTap: () {
                          Get.to(
                                () => const ContactUs(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 350),
                          );
                        }),
                    ListTile(
                        title: AppWidgets.buildText(
                            text: 'Privacy Policy',
                            context: context,
                            color: Colors.white,
                            fontFamily: 'montserrat_regular',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        onTap: () {}),
                    ListTile(
                        title: AppWidgets.buildText(
                            text: 'Logout',
                            context: context,
                            color: Colors.white,
                            fontFamily: 'montserrat_regular',
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                        onTap: () {
                          AppMethods.GetxBottomSheet(
                              Container(
                            height: 40.h,
                            width: 100.w,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 4.h,
                                ),
                                Container(
                                  height: 90,width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: Keys.COLOR,width: 3)),
                                  child: Center(child: Image.asset('assets/images/question.png'),),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                AppWidgets.buildText(
                                    context: context, text: 'Logout',fontSize: 22,fontFamily: 'montserrat_bold'),
                                SizedBox(
                                  height: 1.h,
                                ),
                                AppWidgets.buildText(
                                    context: context,
                                    text: 'Are you sure you want to logout?',
                                    fontFamily: 'montserrat_regular',
                                    fontSize: 12
                                ),
                                Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CommonTextButton(
                                        onPressed: (){Get.back();},
                                        height: 40,
                                        width: 40.w,
                                        borderColor: Keys.COLOR,
                                        radius: 4,
                                        child: Center(
                                            child: AppWidgets.buildText(
                                                context: context,
                                                text: 'No',
                                                color: Keys.COLOR,
                                                fontFamily: 'montserrat_regular',
                                                fontSize: 12
                                            )),
                                      ),
                                      CommonTextButton(
                                        onPressed: (){Get.back();},
                                        height: 40,
                                        width: 40.w,
                                        color: Keys.COLOR,
                                        radius: 4,
                                        child: Center(
                                            child: AppWidgets.buildText(
                                                context: context,
                                                text: 'Yes',
                                                color: Colors.white,
                                                fontFamily: 'montserrat_regular',
                                                fontSize: 12
                                            )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                            isDismiss: false
                          );
                        }),
                    SizedBox(
                      height: 25.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                          width: 100.w,
                          child: AppWidgets.buildText(
                              text: 'Follow us on',
                              context: context,
                              fontFamily: 'montserrat_regular',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children:  [
                          Image.asset('assets/images/insta.png',height: 30,width: 30,),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/images/facebook.png',height: 30,width: 30),
                        ],
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;
  final Color? colors;

  Button(
      {@required this.onPressed, @required this.child, @required this.colors});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(alignment: Alignment.center, child: child),
      ),
      splashColor: Colors.black12,
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}

class CommonTextButton extends StatelessWidget {
  CommonTextButton(
      {Key? key,
      this.onPressed,
      this.child,
      this.height,
      this.width,
      this.color,
      this.borderColor,
      this.radius,this.elevation})
      : super(key: key);
  Function()? onPressed;
  double? height;
  double? width;
  Color? color;
  Widget? child;
  Color? borderColor;
  double? radius;
  double? elevation;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        elevation:
        MaterialStateProperty.all<double>(elevation??5.0),
        backgroundColor:  MaterialStateProperty.all(color ?? Colors.white),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            side:
            BorderSide(width: 1.0, color: borderColor ?? Colors.transparent,),
          borderRadius:  BorderRadius.circular(radius ?? 0.0)),
         ),
      ),
        onPressed: onPressed,
        child: SizedBox(
          height: height,
          width: width,
          child: child,
        ));
  }
}

class InternetConnectionError extends StatelessWidget {
  const InternetConnectionError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 3.h,
          ),
          const CircleAvatar(
            radius: 120.0,
            backgroundImage: AssetImage(
              'assets/images/nointernet.gif',
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            width: 100.w,
            child: AppWidgets.buildText(
              context: context,
              text: "Oops!",
              fontSize: 14,
              textAlign: TextAlign.center,
              fontFamily: 'gotham_medium',
            ),
          ),
          SizedBox(
            width: 100.w,
            child: AppWidgets.buildText(
              context: context,
              text:
                  "Slow or no internet connection. Please check your internet connection.",
              fontSize: 14,
              textAlign: TextAlign.center,
              fontFamily: 'gotham_medium',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class NoBookmarkFound extends StatelessWidget {
  NoBookmarkFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 120.0,
            backgroundImage: AssetImage(
              'assets/images/no_bookmark.jpeg',
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          SizedBox(
            width: 100.w,
            child: AppWidgets.buildText(
              context: context,
              text: "Looks like no bookmark added here.",
              fontSize: 14,
              textAlign: TextAlign.center,
              fontFamily: 'gotham_medium',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class ErrorMessage extends StatelessWidget {
  ErrorMessage({Key? key, this.errorMessage, this.onPressed}) : super(key: key);

  String? errorMessage;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: const Radius.circular(8.0),
                topRight: const Radius.circular(8.0)),
            child: SizedBox(
              height: 160,
              width: double.infinity,
              child: Image.asset(
                'assets/images/error_img.png.webp',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0xff2c0453),
                border: Border.all(color: const Color(0xff2c0453)),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0))),
          )
        ],
      ),
      Positioned(
        bottom: 20,
        child: SizedBox(
          width: 100.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppWidgets.buildText(
                  context: context,
                  text: '${errorMessage} !!',
                  color: Colors.white,
                  fontFamily: 'gotham_medium'),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                  onPressed: onPressed,
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Center(
                      child:
                          AppWidgets.buildText(context: context, text: 'Retry'),
                    ),
                  ))
            ],
          ),
        ),
      )
    ]);
  }
}
/*
class ListViewSkeletonLoader extends StatelessWidget {
  ListViewSkeletonLoader({Key? key, this.itemCount}) : super(key: key);

  int? itemCount;

  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
      builder: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: <Widget>[
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 10,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 12,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      items: itemCount ?? 6,
      period: const Duration(seconds: 2),
      highlightColor: Theme.of(context).iconTheme.color!,
      direction: SkeletonDirection.ltr,
    );
  }
}

class GridViewSkeletonLoader extends StatelessWidget {
  GridViewSkeletonLoader(
      {Key? key, this.itemCount, this.itemsPerRow, this.childAspectRatio})
      : super(key: key);

  int? itemCount;
  int? itemsPerRow;
  double? childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return SkeletonGridLoader(
      builder: Card(
        color: Colors.transparent,
        child: GridTile(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 10,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              Container(
                width: 70,
                height: 10,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      items: itemCount ?? 12,
      itemsPerRow: itemsPerRow ?? 2,
      period: const Duration(seconds: 2),
      highlightColor: Theme.of(context).iconTheme.color!,
      direction: SkeletonDirection.ltr,
      childAspectRatio: childAspectRatio ?? 1.0,
    );
  }
}

class TopChannelSkeletonLoader extends StatelessWidget {
  TopChannelSkeletonLoader({Key? key, this.itemCount}) : super(key: key);

  int? itemCount;

  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
      builder: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 10,
                  color: Colors.white,
                ),
                const SizedBox(height: 10),
                Container(
                  width: 70,
                  height: 12,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 10,
                  color: Colors.white,
                ),
                const SizedBox(height: 10),
                Container(
                  width: 70,
                  height: 12,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 10,
                  color: Colors.white,
                ),
                const SizedBox(height: 10),
                Container(
                  width: 70,
                  height: 12,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      items: itemCount ?? 6,
      period: const Duration(seconds: 2),
      highlightColor: Colors.lightBlue[300]!,
      direction: SkeletonDirection.ltr,
    );
  }
}*/

class Debouncer {
  final int? milliseconds;
  VoidCallback? action;
  Timer? _timer;

  Debouncer({this.milliseconds});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds!), action);
  }
}



