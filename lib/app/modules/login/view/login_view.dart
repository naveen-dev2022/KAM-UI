import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/home/bindings/home_binding.dart';
import 'package:kam_sudo/app/modules/home/views/home_view.dart';
import 'package:kam_sudo/app/modules/login/controller/login_controller.dart';
import 'package:kam_sudo/app/modules/login/view/guest_access.dart';
import 'package:kam_sudo/app/routes/app_pages.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:kam_sudo/values/utils/textfield.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';
import 'create_account.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  RxBool checkBox = false.obs;
  VideoPlayerController? _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
        'assets/videos/kam_bg_final.mp4')
      ..initialize().then((_) {
        _controller!.play();
        _controller!.setLooping(true);
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    super.initState();
  }


  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            /*Image.asset(
              'assets/images/mainscreen_image.png',
              fit: BoxFit.fill,
              height: 100.h,
              width: 100.w,
            ),*/ _controller!.value.isInitialized
                ? SizedBox(
                height: 100.h,
                width: 100.w,
                child: VideoPlayer(_controller!))
                : Container(),
            Container(
              height: 100.h,
              width: 100.w,
              decoration:
              BoxDecoration(color: Keys.SECONDARY_COLOR.withOpacity(0.5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/KAM_logo.png',
                            height: 43,
                            width: 111,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      AppWidgets.buildText(
                          text: 'Welcome Back!',
                          context: context,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'montserrat_regular',
                          fontSize: 24),
                      SizedBox(
                        height: 7.h,
                      ),
                      CustomTextField(
                        hint: 'Email ID',
                        issufixIcon: false,
                        isprefixIcon: false,
                        topLeft: 6,
                        topRight: 6,
                        bottomRight: 6,
                        bottomLeft: 6,
                        paddingLeft: 15,
                        hintFontSize: 14,
                        hintFontWeight: FontWeight.w400,
                        color: Colors.transparent,
                        alignText: TextAlign.center,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomTextField(
                        hint: 'Password',
                        issufixIcon: false,
                        isprefixIcon: false,
                        topLeft: 6,
                        topRight: 6,
                        bottomRight: 6,
                        bottomLeft: 6,
                        paddingLeft: 15,
                        hintFontSize: 14,
                        hintFontWeight: FontWeight.w400,
                        color: Colors.transparent,
                        alignText: TextAlign.center,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Obx(
                                    () => Transform.scale(
                                  scale: 0.6,
                                  child: SizedBox(
                                    height: 11,
                                    width: 11,
                                    child: Checkbox(
                                      side: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 1.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(0)),
                                      value: checkBox.value,
                                      activeColor: Keys.COLOR,
                                      onChanged: (bool? value) {
                                        checkBox.value = !checkBox.value;
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              AppWidgets.buildText(
                                  text: 'Remember me',
                                  context: context,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'montserrat_regular',
                                  fontSize: 10),
                            ],
                          ),
                          AppWidgets.buildText(
                              text: 'Forgot Password',
                              context: context,
                              color: Colors.white70,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'montserrat_regular',
                              fontSize: 10),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: CommonTextButton(
                          onPressed: () {
                            //  Get.toNamed(Routes.HOME);
                            FocusScope.of(context).unfocus();
                            Get.to(
                                  () =>  HomeView(),
                              binding: HomeBinding(),
                              transition: Transition.rightToLeft,
                              duration: const Duration(milliseconds: 350),
                            );
                          },
                          height: 35,
                          width: 90.w,
                          color: Keys.COLOR,
                          radius: 6,
                          child: Center(
                              child: AppWidgets.buildText(
                                  context: context,
                                  text: 'Sign In',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'montserrat_regular',
                                  fontSize: 14
                              )),
                        ),
                      ),
                      Expanded(child: Container()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonTextButton(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              Get.to(
                                    () => const CreateAccount(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            borderColor: Keys.COLOR,
                            color: Keys.SECONDARY_COLOR,
                            height: 40,
                            width: 150,
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Create Account',
                                    context: context,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'montserrat_regular',
                                    fontSize: 14)),
                          ),
                          CommonTextButton(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              Get.to(
                                    () => const GuestAccess(),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 350),
                              );
                            },
                            borderColor: Keys.COLOR,
                            color: Keys.SECONDARY_COLOR,
                            height: 40,
                            width: 150,
                            radius: 6,
                            child: Center(
                                child: AppWidgets.buildText(
                                    text: 'Guest Access',
                                    context: context,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'montserrat_regular',
                                    fontSize: 14)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
