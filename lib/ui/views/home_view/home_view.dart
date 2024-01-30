
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_container_three.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_row_two.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_row_one.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/CustomRow.dart';
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
 int indexx=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(appBar: CustomAppBar(text: 'نادي الكرامة الرياضي',icon: true,),
      body: Padding(
        padding:  EdgeInsetsDirectional.only(start: screenWidth(22),end: screenWidth(22),top: screenWidth(20)),
        child: ListView(
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
                  Text(
                    'المباراة القادمة',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth(25),
                        height: 1.6),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/pngs/alwathba.png',
                           width: screenWidth(12),
                          ),
                          Text(
                            'ALWATHBA',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth(38)),
                          ),
                        ],
                      ),
                      Text(
                        '       vs       ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth(26),
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: screenWidth(38)),
                        child: Column(
                          children: [
                            Image.asset('assets/images/pngs/of.png',
                            width: screenWidth(11),
                                              
                            ),
                            Text(
                              'ALKARAMA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth(38)),
                            ),
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
           Padding(
             padding:  EdgeInsetsDirectional.only(top: screenWidth(8)),
             child: CustomRowOne(name: 'اخر الاخبار',),
           ),
              Row(children: [
                     CustomContainerThree(size: screenWidth(6)),
                        CustomContainerThree(size: screenWidth(15),color: AppColors.orange,
                        margin: true
                        ,),
                      CustomContainerThree(size: screenWidth(10))

                     ],),
           Container(
            width: screenWidth(1),
            height: screenWidth(3.6),
            margin: EdgeInsetsDirectional.only(top: screenWidth(10),bottom: screenWidth(10)),
             child: ListView(
             // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                 CustomRowTwo(img: 'rectangle', 
              text:  'نهاية اللقاء يفوز فريقنا على فريق الوثبة بهدفين مقابل هدف', 
              number: '300', day:'4' ),
               Container(
            width: screenWidth(1),
            height: screenWidth(3.6),
             child: ListView(
             // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                 CustomRowTwo(img: 'rectangle', 
              text:  'نهاية اللقاء يفوز فريقنا على فريق الوثبة بهدفين مقابل هدف', 
              number: '300', day:'4' )
              ],
             ),
           )
              ],
             ),
           ),
       ]
    )
    )));
  }
}