import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomResults extends StatelessWidget {
  final String number;
  final String numbertwo;
  final String date;
  final bool? live;
  const CustomResults({super.key, required this.number, required this.numbertwo, required this.date, this.live});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
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
               CustomText(text:number ,
               styleType: TextStyleType.NUMBER,
               fontSize: screenWidth(13),
               fontWeight: FontWeight.w800,
               ),
               Column(children: [ 
                 CustomText(text: 'الملعب البلدي',
               styleType: TextStyleType.BODY,
               ),
               Spacer(),
               live==true?
                Image.asset('assets/images/pngs/live.png',
               width: screenWidth(12),
               ):Text(''),
               CustomText(text: date,
               styleType: TextStyleType.NUMBER,
               fontSize: screenWidth(35),
               ),
               SizedBox(height: screenWidth(60),)
               ],),
                   CustomText(text: numbertwo,
               styleType: TextStyleType.NUMBER,
               fontSize: screenWidth(13),
               fontWeight: FontWeight.w800,
               ),
               Container(
                margin: EdgeInsetsDirectional.only(top: screenWidth(20),start: screenWidth(20)),
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
            ],);
  }
}