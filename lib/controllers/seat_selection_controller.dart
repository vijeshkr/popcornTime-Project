import 'package:get/get.dart';

class SeatSelectionController extends GetxController{
  static SeatSelectionController instance = Get.put(SeatSelectionController());
  // static SeatSelectionController instance = Get.find();

  RxBool isSeatSelection = false.obs;
  RxList selectedSeats = [].obs;
  RxList seatPrices = [].obs;


}