import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomBorder extends StatefulWidget {
  final String name;
  final  Function tap;
   bool? border;
   CustomBorder({super.key, required this.name, required this.tap,  this.border=false});

  @override
  State<CustomBorder> createState() => _CustomBorderState();
}

class _CustomBorderState extends State<CustomBorder> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: (){
      widget.tap();
     },
      child: Container(
        width: screenWidth(5),
        padding: EdgeInsetsDirectional.only(bottom: screenWidth(40),),
        margin: EdgeInsetsDirectional.only(top: screenWidth(20)),
        decoration: BoxDecoration(
          border:
          widget.border==true?
           Border(
            bottom: 
            BorderSide(
              color: AppColors.orange,
              width: screenWidth(150),
            )
          ):Border()
        ),
        child:
      Center(
        child: CustomText(text: widget.name,
        styleType: TextStyleType.FOCUSTEXT,
        ),
      ),
     
       ),
    );
  }
}