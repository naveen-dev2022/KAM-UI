import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/login/view/login_view.dart';
import 'package:kam_sudo/app/root_binding/root_binding.dart';
import 'package:kam_sudo/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: "Application",
        supportedLocales: const [Locale('en', 'US')],
        //, Locale('pt', 'BR')],
        locale: const Locale('en', 'US'),
       /* initialRoute: AppPages.INITIAL,
        initialBinding: RootBinding(),
        getPages: AppPages.routes,*/
        debugShowCheckedModeBanner: false,
       home: LoginView(),
/*      theme: Themes().LightTheme,
      darkTheme: Themes().DarkTheme,
      themeMode: ThemeService().getThemeMode(),*/
      );
    }),
  );
}
