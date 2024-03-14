import 'package:get/get.dart';

class HomeViewController extends GetxController{
  RxInt activeindex=0.obs;
  RxBool isLoading=true.obs;
  RxInt index=2.obs;
  @override
  void onInit() async{
    isLoading.value=true;
    await Future.delayed(Duration(seconds: 2),(){
      isLoading.value=false;
    });
    super.onInit();
  }
  refresh(){
    index.value++;
    print(index.value);
  }
  

}