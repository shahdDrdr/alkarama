import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomPersonDetails extends StatelessWidget {
  final String text;
  final String name;
  const CustomPersonDetails({super.key, required this.text, required this.name});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsetsDirectional.only(top: screenWidth(35)),
      child: Stack(children: [
      Image.asset('assets/images/pngs/personicon.png',
      width: screenWidth(10),
      ),
      Padding(
        padding: EdgeInsetsDirectional.only(start: 9),
        child: Center(
          child: Column(children: [
             CustomText(text: text,styleType: TextStyleType.BODY,fontSize: screenWidth(42),fontWeight: FontWeight.w800,),
            CustomText(text: name,styleType: TextStyleType.BODY,fontSize: screenWidth(40),fontWeight: FontWeight.w800,)
          ],),
        ),
      )
      // Padding(
      //   padding: EdgeInsetsDirectional.only(start: screenWidth(50)),
      //   child: CustomText(text: text,styleType: TextStyleType.BODY,fontSize: screenWidth(42),fontWeight: FontWeight.w800,),
      // ),
      // Padding(
      //   padding: EdgeInsetsDirectional.only(start: screenWidth(50),top: screenWidth(30)),
      //   child: CustomText(text: name,styleType: TextStyleType.BODY,fontSize: screenWidth(40),fontWeight: FontWeight.w800,),
      // )
      //  Container(
      //     margin: EdgeInsetsDirectional.only(start: screenWidth(40),),
      //      child:
      //      Column(children: [
      //   CustomText(text: text,styleType: TextStyleType.BODY,fontSize: screenWidth(42),fontWeight: FontWeight.w800,),
      //   CustomText(text: name,styleType: TextStyleType.BODY,fontSize: screenWidth(40),fontWeight: FontWeight.w800,)
           
           
      ]),
    );
  }
}

// Stack(children: [
//       Image.asset('assets/images/pngs/personicon.png',
//       width: screenWidth(10),
//       ),
//        Container(
//           margin: EdgeInsetsDirectional.only(start: screenWidth(40),),
//            child:
//            Column(children: [
//         CustomText(text: text,styleType: TextStyleType.BODY,fontSize: screenWidth(42),fontWeight: FontWeight.w800,),
//         CustomText(text: name,styleType: TextStyleType.BODY,fontSize: screenWidth(40),fontWeight: FontWeight.w800,)
//            ],)
//            )
//       ]),