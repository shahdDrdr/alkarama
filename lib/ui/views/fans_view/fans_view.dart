import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_underline.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_P2/ui/views/fans_view/fans_view_controller.dart';
class FansView extends StatefulWidget {
  const FansView({super.key});

  @override
  State<FansView> createState() => _FansViewState();
}
class _FansViewState extends State<FansView> {
  FansViewController controller =Get.put(FansViewController());
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: CustomAppBar(text: 'رابطة المشجعين'),
      body:  Obx(() {return controller.AllLogo.isEmpty?
      Shimmer.fromColors(
        baseColor: AppColors.lightGray,
        highlightColor: AppColors.white,
        child: Fans(),
        ):
         Fans();
   } )));
      }
      // body:SmartRefresher(   enablePullDown: true,
      //   enablePullUp: true,
      //   header: WaterDropHeader(),
      //   onRefresh:(){
      //     controller.logo();
      //     _refreshController.refreshCompleted();
      //   } ,
      //  controller:_refreshController ,
      //  child:  Obx(() {return controller.AllLogo.isEmpty?
      // Shimmer.fromColors(
      //   baseColor: AppColors.lightGray,
      //   highlightColor: AppColors.white,
      //   child: Fans(),
      //   ):
      //    Fans();
       
      // }), 
      //  )
}

class Fans extends StatefulWidget {
  const Fans({super.key});

  @override
  State<Fans> createState() => _FansState();
}
class _FansState extends State<Fans> {
  FansViewController controller =Get.put(FansViewController());
  @override
  Widget build(BuildContext context) {
    return  
    ListView(
        padding: EdgeInsetsDirectional.only(start: screenWidth(25),end: screenWidth(25),top: screenWidth(15)),
        children: [
          Obx(() {
            print(controller.activeindex.value);
            return controller.AllLogo.isEmpty?SizedBox(): 
            CarouselSlider.builder(
    options: CarouselOptions(
    onPageChanged: (index,reason){  print(index);
    controller.activeindex.value=index;
    },
    height:   screenHeight(5),
    viewportFraction: 1,
    ),
    itemCount: controller.AllLogo.length,
    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    Container(
          height: screenWidth(2.8),
          margin: EdgeInsetsDirectional.only(start:screenWidth(20),end: screenWidth(20) ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColors.lightGray
           ),//child: Text(controller.AllLogo[itemIndex].name??""),
          child: Image.network(controller.AllLogo[itemIndex].logo??'',errorBuilder:(context, error, stackTrace) {
            return SizedBox();
            }, ),
        )
    );
        
          }),
     Obx(() {
    return  controller.AllLogo.isEmpty?SizedBox():DotsIndicator(
                        dotsCount: controller.AllLogo.length,
                        position:controller.activeindex.value ,
                        decorator: DotsDecorator(
                          color: AppColors.blue,
                          activeColor:AppColors.orange,
                          activeSize: Size(15.5, 15.5)
                        ),
                      );
     }),  
         CustomUnderline(text: 'رابطة مشجعي نادي الكرامة',),
           Container(
        padding: EdgeInsetsDirectional.only(start: screenWidth(25),end: screenWidth(25)
        ),
        margin: EdgeInsetsDirectional.only(top: screenWidth(20),bottom: screenWidth(20)),
        height: screenWidth(1.7),
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsetsDirectional.only(start: screenWidth(35),top: screenWidth(40),end: screenWidth(3.6)),
              child: Row(children: [
                Image.asset('assets/images/pngs/of.png',
               height: screenWidth(10),
                ),Spacer(),
                Container(
                  margin: EdgeInsetsDirectional.only(top: screenWidth(35)),
                  width: screenWidth(40),
                  height: screenWidth(40),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 135, 1),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                CustomText(text: 'رئيس الرابطة',
                mColor: AppColors.white,
                fontSize: screenWidth(25),
                fontWeight: FontWeight.w600,
                ),Container(
                   margin: EdgeInsetsDirectional.only(top: screenWidth(35)),
                  width: screenWidth(40),
                  height: screenWidth(40),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 135, 1),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ],),
            ),
            CustomText(text: 'السيد باسم محمد نزار زهرة',
            mColor: AppColors.white,
            fontSize: screenWidth(23),
            ),Divider(
              thickness: 2,
              color: AppColors.lightGray,
            ),
             Padding(
               padding:  EdgeInsetsDirectional.only(start: screenWidth(screenWidth(105))),
               child: Row(children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(top: screenWidth(35)),
                    width: screenWidth(40),
                    height: screenWidth(40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 135, 1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  CustomText(text: 'اعضاء الرابطة',
                  mColor: AppColors.white,
                  fontSize: screenWidth(25),
                  fontWeight: FontWeight.w600,
                  ),Container(
                     margin: EdgeInsetsDirectional.only(top: screenWidth(35)),
                    width: screenWidth(40),
                    height: screenWidth(40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 135, 1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ],),
             ),
             Row(children: [
              CustomText(text: 'الدكتور ايهاب القاضي',
              styleType: TextStyleType.BODY,
              mColor: AppColors.white,
              ),Spacer(),
              CustomText(text: 'السيد عبدالله المغربي',
              styleType: TextStyleType.BODY,
               mColor: AppColors.white,
              )
             ],),
             Padding(
               padding:  EdgeInsetsDirectional.only(end: screenWidth(20)),
               child: Row(
                children: [
                CustomText(text: 'الدكتور كنان بيرقدار',
                styleType: TextStyleType.BODY,
                mColor: AppColors.white,
                ),Spacer(),
                CustomText(text: 'السيد عمار حاضري',
                styleType: TextStyleType.BODY,
                 mColor: AppColors.white,
                )
               ],),
             ),
             Padding(
               padding:  EdgeInsetsDirectional.only(end: screenWidth(15)),
               child: Row(
                children: [
                CustomText(text: 'المهندس وسيم أحمد الريس',
                styleType: TextStyleType.BODY,
                mColor: AppColors.white,
                ),Spacer(),
                CustomText(text: 'السيد نبيل الزامل',
                styleType: TextStyleType.BODY,
                 mColor: AppColors.white,
                )
               ],),
             )
          ],
        ),
        ),
       CustomUnderline(text: 'لمحة عن الرابطة', ),
         Padding(
           padding:  EdgeInsetsDirectional.only(top: screenWidth(35),bottom: screenWidth(26)),
           child: CustomText(text: 'تعدّ رابطة مشجعي الكرامة من أوائل روابط المشجعين التي تشكلت بالقطر فقد تشكلت عام 1975، ولها شعار من تلك الأيام آنذاك المشجع عمر الشاغوري، وكان اهتمامها بالتشجيع الجماهير واختيار الهتافات الجميلة البعيدة عن الاستفزاز',
           styleType: TextStyleType.BODY,
           ),
         ),
        CustomUnderline(text: 'اجمل لقطات مشجعي نادي الكرامة', ),
         Padding(
           padding:  EdgeInsetsDirectional.only(top: screenWidth(20),end: screenWidth(15),start: screenWidth(15),
           bottom: screenWidth(15)
           ),
           child: Row(children: [
            Stack(children: [
               Image.asset('assets/images/pngs/video_one.png',
               //width: screenWidth(4),
               height: screenWidth(2.5),
               ),
               Positioned(
                right: screenWidth(8),
                top: screenWidth(7),
                 child: Image.asset('assets/images/pngs/youtube.png',
                 width: screenWidth(7),
                 ),
               )
            ],),Spacer(),
             Stack(children: [
               Image.asset('assets/images/pngs/video_two.png',
               //width: screenWidth(4),
               height: screenWidth(2.5),
               ),
               Positioned(
                right: screenWidth(8),
                top: screenWidth(7),
                 child: Image.asset('assets/images/pngs/youtube.png',
                 width: screenWidth(7),
                 ),
               )
                       ],)
           
           ],),
         ),
     ]);
  }
}