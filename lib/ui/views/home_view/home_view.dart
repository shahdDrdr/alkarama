
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_underline.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_row_two.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/CustomRow.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task_P2/ui/views/home_view/home_view_controller.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 HomeViewController controller=Get.put(HomeViewController());
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(appBar: CustomAppBar(text: 'نادي الكرامة الرياضي',icon: true,),
      body: 
      SmartRefresher(
         enablePullDown: true,
        enablePullUp: true,
        header: WaterDropHeader(),
        onRefresh:(){
          controller.onInit();
          _refreshController.refreshCompleted();
        } ,
       controller:_refreshController ,
        child: Padding(
          padding:  EdgeInsetsDirectional.only(start: screenWidth(22),end: screenWidth(22),top: screenWidth(20)),
          child:Obx(() {
            return  controller.isLoading.value?
          Shimmer.fromColors(
            period: Duration(seconds: 5),
            child: Home()   , baseColor: AppColors.grey, highlightColor: AppColors.lightGray)
            :
            Home();
          })
          ),
      )));
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeViewController controller=Get.put(HomeViewController());
  @override
  Widget build(BuildContext context) {
    return   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              print(controller.activeindex.value);
              return   CarouselSlider.builder(
  options: CarouselOptions(
    onPageChanged: (index,reason){  print(index);
    controller.activeindex.value=index;
    },
    height:   screenHeight(3.3),
   // animateToClosest: false,
    viewportFraction: 1,
  ),
  itemCount: 4,
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
   Container(
            padding: EdgeInsetsDirectional.only(start: screenWidth(13)),
            margin: EdgeInsetsDirectional.only(
              top: screenHeight(15),
            ),
            height: screenHeight(4.3),
            decoration: BoxDecoration(
            color: Color.fromRGBO(30, 68, 141, 1),
            borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
            Image.asset('assets/images/pngs/person.png'),
            Container(
              margin: EdgeInsetsDirectional.only(start: screenWidth(33)),
              width: screenWidth(2.18),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsetsDirectional.only(end: screenWidth(25)),
                    child: CustomText(text: 'المباراة القادمة',
                    styleType: TextStyleType.BODY,
                    fontWeight: FontWeight.w600,
                    mColor: AppColors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding:  EdgeInsetsDirectional.only(top: screenWidth(37)),
                            child: Image.asset('assets/images/pngs/alwathba.png',
                             width: screenWidth(11),
                            ),
                          ),
                         CustomText(text: 'ALWATHBA',
                         styleType: TextStyleType.BODY,
                         mColor: AppColors.white,
                         fontSize: screenWidth(38),
                         )
                        ],
                      ),
                        CustomText(text: '      vs       ',
                         styleType: TextStyleType.BODY,
                         mColor: AppColors.white,
                         fontSize: screenWidth(23),
                         fontWeight: FontWeight.w800,
                         ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: screenWidth(38)),
                        child: Column(
                          children: [
                            Image.asset('assets/images/pngs/of.png',
                            width: screenWidth(11),
                            ),
                              CustomText(text: 'ALKARAMA',
                         styleType: TextStyleType.BODY,
                         mColor: AppColors.white,
                         fontSize: screenWidth(38),
                         )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight(100),
                  ),
                  CustomRow(
                      text: ' 2023/12/15 الجمعة             ',
                      image: 'u'),
                  CustomRow(
                    text: ' الساعة الثانية ظهرا                   ',
                    image: 'clock',
                  ),
                  CustomRow(
                      text: ' ملعب الباسل-حمص                  ',
                      image: 'f'),
                  CustomRow(
                      text: ' بث مباشر على قناة سورية دراما',
                      image:  'tv'),
                ],
              ),
            ),
              ],
            ),
            ),
                      );
            }),
                  Obx(() {
                    return   Padding(
                       padding:  EdgeInsetsDirectional.only(top: screenWidth(20),start: screenWidth(3.5)),
                       child: AnimatedSmoothIndicator(activeIndex:controller.activeindex.value, 
                        count: 4,
                        effect: ExpandingDotsEffect(
                          dotWidth: 15,
                          activeDotColor: Colors.orange
                        ),
                        ),
                     );
                  }),
             CustomUnderline(text: 'أخر الأخبار', ),
            
               Expanded(
             child: ListView(
              padding: EdgeInsetsDirectional.only(top: screenWidth(20)),
              children: [
                 CustomRowTwo(img: 'rectangle', 
              text:  'نهاية اللقاء يفوز فريقنا على فريق الوثبة بهدفين مقابل هدف', 
            number: '300', day:'4' ),
               CustomRowTwo(img: 'rectangle', 
              text:  'نهاية اللقاء يفوز فريقنا على فريق الوثبة بهدفين مقابل هدف', 
              number: '300', day:'4' ),
                 CustomRowTwo(img: 'rectangle', 
              text:  'نهاية اللقاء يفوز فريقنا على فريق الوثبة بهدفين مقابل هدف', 
              number: '300', day:'4' ),
                 CustomRowTwo(img: 'rectangle', 
              text:  'نهاية اللقاء يفوز فريقنا على فريق الوثبة بهدفين مقابل هدف', 
              number: '300', day:'4' ),
              ],
             ),
               ),
          ],
        );
  }
}