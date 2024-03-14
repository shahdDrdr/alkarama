import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';
import 'package:task_P2/ui/views/Match%20details-team%20extra_view/match_details-team_extra_view.dart';
import 'package:task_P2/ui/views/match_details_change/match_details_change.dart';
import 'package:task_P2/ui/views/team_plan_view/team_plan_view.dart';

class CustomBorder extends StatefulWidget {
   bool border;
   bool? bordertwo;
   bool? borderthree;
   CustomBorder({super.key,this.border=false, this.borderthree,this.bordertwo=false,});

  @override
  State<CustomBorder> createState() => _CustomBorderState();
}

class _CustomBorderState extends State<CustomBorder> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: (){
            Get.off(TeamPlanView());
          },
          child: Container(
          width: screenWidth(5),
          padding: EdgeInsetsDirectional.only(bottom: screenWidth(40),),
          margin: EdgeInsetsDirectional.only(top: screenWidth(20)),
          decoration: BoxDecoration(
            border:
             Border(
              bottom: 
              BorderSide(
                color: widget.border==true? AppColors.orange:Colors.transparent,
                width: screenWidth(150),
              )
            )
          ),
          child:
              Center(
          child: CustomText(text: 'خطة الفريق',
          styleType: TextStyleType.FOCUSTEXT,
          ),
              ),),
        ),
       InkWell(
        onTap: (){
          Get.off(MatchDetailsChange());
        },
         child: Container(
          width: screenWidth(5),
          padding: EdgeInsetsDirectional.only(bottom: screenWidth(40),),
          margin: EdgeInsetsDirectional.only(top: screenWidth(20)),
          decoration: BoxDecoration(
            border:
             Border(
              bottom: 
              BorderSide(
                color: widget.bordertwo==true? AppColors.orange :Colors.transparent,
                width: screenWidth(150),
              )
            )
          ),
          child:
             Center(
          child: CustomText(text:'التبديلات',
          styleType: TextStyleType.FOCUSTEXT,
          ),
             ),),
       ),
       InkWell(
        onTap: (){
          Get.off(MatchDetailsIeamExtraView());
        },
         child: Container(
          width: screenWidth(5),
          padding: EdgeInsetsDirectional.only(bottom: screenWidth(40),),
          margin: EdgeInsetsDirectional.only(top: screenWidth(20)),
          decoration: BoxDecoration(
            border:
             Border(
              bottom: 
              BorderSide(
                color: widget.borderthree==true?AppColors.orange:Colors.transparent,
                width: screenWidth(150),
              )
            )
          ),
          child:
             Center(
          child: CustomText(text: 'الاحتياط',
          styleType: TextStyleType.FOCUSTEXT,
          ),
             ),),
       )
    ],);
  
  }
}