/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kam_sudo/values/utils/keys.dart';

class ThemeService{
  final _getStorage=GetStorage();
  
  ThemeMode getThemeMode(){
    return isSavedDarkMode()?ThemeMode.dark:ThemeMode.light;
  }
  
  bool isSavedDarkMode(){
    return _getStorage.read(Keys.THEME_STATUS_KEY)??false;
  }
  
  void saveThemeMode(bool isDarkMode){
    _getStorage.write(Keys.THEME_STATUS_KEY, isDarkMode);
  }
  
  void changeThemeMode(){
    Get.changeThemeMode(isSavedDarkMode()?ThemeMode.light:ThemeMode.dark);
    saveThemeMode(!isSavedDarkMode());
  }
  
}*/
