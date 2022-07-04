import 'package:get/get.dart';

class ServiceController extends GetxController {
  //TODO: Implement HomeController

  RxBool isResidencial=true.obs;

  List<Map<String, dynamic>>? date = [
    {'day-name': 'Mon', 'day': 1, 'month': 'Jun'},
    {'day-name': 'Tue', 'day': 2, 'month': 'Jun'},
    {'day-name': 'Wed', 'day': 3, 'month': 'Jun'},
    {'day-name': 'Thu', 'day': 4, 'month': 'Jun'},
    {'day-name': 'Fri', 'day': 5, 'month': 'Jun'},
    {'day-name': 'Sat', 'day': 6, 'month': 'Jun'},
    {'day-name': 'Sun', 'day': 7, 'month': 'Jun'},
    {'day-name': 'Mon', 'day': 8, 'month': 'Jun'},
  ].obs;

  List? time = [
    '09:00 PM',
    '09:30 PM',
    '10:00 PM',
    '10:30 PM',
    '11:00 PM',
    '11:30 PM',
    '12:00 AM',
    '12:30 AM',
    '01:00 AM',
    '01:30 AM',
    '02:00 AM',
    '02:30 AM',
    '03:00 AM',
    '03:30 AM',
    '04:00 AM',
    '04:30 AM',
    '05:00 AM',
    '05:30 AM',
    '06:00 AM',
    '06:30 AM',
    '07:00 AM',
    '07:30 AM',
    '08:00 AM',
    '08:30 AM',
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 AM',
    '12:30 AM'
  ].obs;

  RxList dateColors=[].obs;
  RxList timeColors=[].obs;

  @override
  void onInit() {
    for(int i=0;i<date!.length;i++){
      dateColors.add(false);
    }
    for(int i=0;i<=time!.length;i++){
      timeColors.add(false);
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
