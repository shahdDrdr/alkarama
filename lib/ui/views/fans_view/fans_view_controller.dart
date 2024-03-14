

import 'package:get/get.dart';
import 'package:task_P2/core/data/models/clup.dart';
import 'package:task_P2/core/data/repository/clup_repo.dart';

class FansViewController extends GetxController{
  RxInt activeindex=0.obs;
  RxList<Clup> AllLogo=<Clup>[].obs;
  @override
  void onInit() {
    logo();
    super.onInit();
  }
  void logo(){
    ClupRepository().getAllLogo().then((value) {
      value.fold((l) {}, (r) {
        AllLogo.addAll(r);
      });
    });
  }
   Future<void> onRefresh()async{
    Future.delayed(Duration(seconds: 5),(){
      logo();
    });

  }
 

  }
