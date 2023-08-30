import 'package:get/get.dart';
import 'package:simple_getx_demo/screens/detailsScreen/details_screen.dart';

class HomeScreenController extends GetxController{

  //variable declaration using obs
  var num = 0.obs;


  //on init function
  @override
  void onInit() {
    super.onInit();
  }


  //on tap add button
  onTapAdd(){
    num.value = num.value + 1;
  }

  //on tap subtract button
  onTapSubtract(){
    num.value = num.value - 1;
  }

  //reset button
  resetButton(){
    num.value = 0;
  }


  //navigate to next screen
  navigateToNextScreen(){

    //send arguments in GetX
    var args = {
      "num": num.value.toString()
    };
    Get.to(()=> DetailsScreen(),arguments: args);
  }
}