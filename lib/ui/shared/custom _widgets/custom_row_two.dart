import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomRowTwo  extends StatelessWidget {
  final String img;
  final String text;
  final String number;
  final String day;
  const CustomRowTwo({super.key, required this.img, required this.text, required this.number, required this.day});
  @override
  Widget build(BuildContext context) {
    return 
                Container(
                 height: screenWidth(3.5),
                 margin: EdgeInsetsDirectional.only(end: screenWidth(22),),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [Image.asset('assets/images/pngs/${img}.png'),
                    Container(
                      width: screenWidth(2.5),
                      margin: EdgeInsetsDirectional.only(start: screenWidth(25),end: screenWidth(20)),
                      child: Column(children: [
                        CustomText(text: text,
                        styleType: TextStyleType.BODY
                        ,
                        ),
                        Row(children: [
                         Icon(Icons.visibility_outlined,
                         color: AppColors.grey,
                         size: screenWidth(23),
                         ),
                         CustomText(text: number,
                         styleType: TextStyleType.BODY,
                         mColor: AppColors.grey,
                         fontSize: screenWidth(30)
                         ),
                         Spacer(),
                         Icon(Icons.access_time,color: AppColors.grey,
                          size: screenWidth(23),
                         ),
                       CustomText(text: day,
                       styleType: TextStyleType.BODY,
                       mColor: AppColors.grey,
                       ),
                         CustomText(text: 'ايام',
                         styleType: TextStyleType.BODY,
                         mColor: AppColors.grey,
                          fontSize: screenWidth(30)
                         ),
                        ],)
                      ],),
                    )
                    ],
                  ),
                );
  }
}