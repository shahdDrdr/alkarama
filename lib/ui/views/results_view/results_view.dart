import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_match_time.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';
import 'package:task_P2/ui/views/results_view/results_controller.dart';

class ResultsView extends StatefulWidget {
  const ResultsView({super.key});

  @override
  State<ResultsView> createState() => _ResultsViewState();
}

class _ResultsViewState extends State<ResultsView> {
  ResultsController controller=Get.put(ResultsController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: CustomAppBar(text: 'النتائج',icon: true,),
      body: 
    Column(children: [
      Obx(() {print(controller.activeindex.value);
        return     CarouselSlider.builder(
  options: CarouselOptions(
    onPageChanged: (index,reason){  print(index);
    controller.activeindex.value=index;
    },
    height:   screenHeight(2.3),
    viewportFraction: 1,
  ),
  itemCount: 3,
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    Container(
        width: screenWidth(1),
        margin: EdgeInsetsDirectional.only(start: screenWidth(20),end: screenWidth(20),top: screenWidth(3)),
        child: Stack(children: [
          Image.asset('assets/images/pngs/bg.png',
          width: screenWidth(1),
          ),
          Positioned(
            right: screenWidth(3.7),
            child: Column(children: [CustomText(text: 'الجمعة، 2023/05/26',
            styleType: TextStyleType.NUMBER,
            mColor: AppColors.white,
            fontSize: screenWidth(24),
            ),
            CustomText(text: '12 / 12 عصرا',
            styleType: TextStyleType.NUMBER,
            mColor: AppColors.white,
            ),],),
          ),
          Positioned(
            right: screenWidth(10),
            top: screenWidth(7),
            left: screenWidth(10),
            child: Row(children: [
              Column(children: [Image.asset('assets/images/pngs/of.png',
              width: screenWidth(7),
              ),
              CustomText(text: 'الكرامة',
              styleType: TextStyleType.BODY,
              mColor: AppColors.white,
              fontSize: screenWidth(20),
              fontWeight: FontWeight.w800,
              )
              ],),
              Padding(
                padding:  EdgeInsetsDirectional.only(start: screenWidth(22)),
                child: Column(children: [
                  CustomText(text: 'ملعب خالد بن الوليد'),
                  Row(children: [CustomText(text: '1',
                   mColor: AppColors.green,
                  fontSize: screenWidth(12),
                  fontWeight: FontWeight.w800,
                  ),
                  CustomText(text: ':',
                  mColor: AppColors.green,
                  fontSize: screenWidth(12),
                  fontWeight: FontWeight.w800,
                  ),
                  CustomText(text: '0',
                   mColor: AppColors.green,
                  fontSize: screenWidth(12),
                  fontWeight: FontWeight.w800,
                  )
                  ],)
                ],),
              ),
              Padding(
                padding:  EdgeInsetsDirectional.only(start: screenWidth(18)),
                child: Column(children: [Image.asset('assets/images/pngs/jabla.png',
                width: screenWidth(7),
                ),
                CustomText(text: 'جبلة',
                styleType: TextStyleType.BODY,
                mColor: AppColors.white,
                 fontSize: screenWidth(20),
                fontWeight: FontWeight.w800,
                )
                ],),
              )
            ],),
          ),
          Positioned(
            right: screenWidth(2.5),
            top: screenWidth(2.7),
            child: Column(children: [CustomText(text: 'الجولة',
            mColor: AppColors.white,
            ),
            CustomText(text: '23',
            styleType: TextStyleType.NUMBER,
            mColor: AppColors.white,
            fontWeight: FontWeight.w800,
            )
            ],),
          )
        ],),
      )
  
  );
      }),
                        Obx(() {
                          return  DotsIndicator(
                        dotsCount: 3,
                        position:controller.activeindex.value ,
                        decorator: DotsDecorator(
                          color: AppColors.green,
                          activeColor:AppColors.orange,
                          activeSize: Size(15.5, 15.5)
                        ),
                      );
                        }),
                        Stack(children: [
                                               Container(
        color: Color.fromRGBO(237, 237, 237, 1),
        //padding: EdgeInsets.all(20),
        margin: EdgeInsetsDirectional.only(top: screenWidth(7),end: screenWidth(25),start: screenWidth(25)),
        child: Table(
           defaultColumnWidth: FixedColumnWidth(55),
          border: TableBorder.symmetric(inside: BorderSide(color: Colors.blue),outside: BorderSide(color: AppColors.orange)),
           columnWidths: {
           0: FixedColumnWidth(32)
           },
          children: [
            TableRow(children: [
              Text('ترتيب',textAlign: TextAlign.center,),
              Text('الفريق',textAlign: TextAlign.center,),
              Text('لعب',textAlign: TextAlign.center,),
              Text('فوز',textAlign: TextAlign.center,),
              Text('تعادل',textAlign: TextAlign.center,),
              Text('خسارة',textAlign: TextAlign.center,),
              Text('نقاط',textAlign: TextAlign.center,),
            ]
            ),
              TableRow(children: [
             Text('8',textAlign: TextAlign.center,),
              Text('الجيش',textAlign: TextAlign.center,),
              Text('5',textAlign: TextAlign.center,),
              Text('3',textAlign: TextAlign.center,),
              Text('4',textAlign: TextAlign.center,),
              Text('5',textAlign: TextAlign.center,),
              Text('6',textAlign: TextAlign.center,),
               
            ]
            ),
              TableRow(children: [
             Text('9',textAlign: TextAlign.center,),
              Text('الكرامة',textAlign: TextAlign.center,),
              Text('4',textAlign: TextAlign.center,),
              Text('6',textAlign: TextAlign.center,),
              Text('5',textAlign: TextAlign.center,),
              Text('3',textAlign: TextAlign.center,),
              Text("4",textAlign: TextAlign.center,),
            ]),
              TableRow(children: [
             Text('10',textAlign: TextAlign.center,),
              Text('الوحدة',textAlign: TextAlign.center,),
              Text('4',textAlign: TextAlign.center,),
              Text('6',textAlign: TextAlign.center,),
              Text('5',textAlign: TextAlign.center,),
              Text('3',textAlign: TextAlign.center,),
              Text("4",textAlign: TextAlign.center,),
            ]),
              TableRow(children: [
             Text('11',
             textAlign: TextAlign.center,
             ),
              Text('الساحل',textAlign: TextAlign.center,),
              Text('4',textAlign: TextAlign.center,),
              Text('6',textAlign: TextAlign.center,),
              Text('5',textAlign: TextAlign.center,),
              Text('3',textAlign: TextAlign.center,),
              Text("4",textAlign: TextAlign.center,),
            ])
          ],
        ),
      ),
      Positioned(
        right: screenWidth(22),
        child: Image.asset('assets/images/pngs/frame.png',
        width: screenWidth(1.1),
        ),
      ),
    Positioned(
      right: screenWidth(7),
      top: screenWidth(20),
      child: CustomText(text: 'جدول ترتيب فرق الدوري السوري 2023/2024',
      styleType: TextStyleType.BODY,
      mColor: AppColors.white,
      fontWeight: FontWeight.w800,
      ),
    )

                        ],)
    ],)
    ,)
    );
  }
}