import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController instance = Get.put(ProfileController());
  RxBool isEdit = false.obs;

  toggleEdit(){
    if(isEdit.isTrue){
      isEdit.toggle();
    }else{
      isEdit.value = true;
    }
  }
}