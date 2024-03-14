import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomMatchTime extends StatelessWidget {
  final Color color;
  final String date;
  const CustomMatchTime({super.key, required this.color, required this.date});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: screenWidth(3.6),
          padding: EdgeInsetsDirectional.only(start: screenWidth(30),end: screenWidth(25)),
          margin: EdgeInsetsDirectional.only(start: screenWidth(15),end: screenWidth(15),top: screenWidth(25)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
            border: Border.all(color: AppColors.lightGray),
            boxShadow: [
              BoxShadow(
                color: AppColors.orange,
                offset: Offset(2,1),
                spreadRadius: 1,
                blurRadius: 4
              )
            ]
            ),

            child: Row(children: [ 
              Container(
                margin: EdgeInsetsDirectional.only(top: screenWidth(20),end: screenWidth(20)),
                child: Column(
                  children: [
                     Image.asset('assets/images/pngs/of.png'),
                    CustomText(text: 'الكرامة',
                    styleType: TextStyleType.BODY,
                    fontWeight: FontWeight.w600,
                    )
                  ],
                ),

              ),
               Padding(
                 padding:  EdgeInsetsDirectional.only(start: screenWidth(20),top: screenWidth(20)),
                 child: Column(children: [ 
                   CustomText(text: 'الملعب البلدي',
                 styleType: TextStyleType.BODY,
                 ),
                 CustomText(text:date ,
                 styleType: TextStyleType.NUMBER,
                 fontSize: screenWidth(28),
                 fontWeight: FontWeight.w800,
                 ),
                 SizedBox(height: screenWidth(60),)
                 ],),
               ),
                 Container(
                margin: EdgeInsetsDirectional.only(top: screenWidth(20),start: screenWidth(9)),
                child: Column(
                  children: [
                     Image.asset('assets/images/pngs/alwathba.png',
                     width: screenWidth(8),
                     ),
                    CustomText(text: 'الوثبة',
                    styleType: TextStyleType.BODY,
                    fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ),
              ],),
        );
  }
}