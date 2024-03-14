import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_match_time.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_results.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class MatchesView extends StatefulWidget {
  const MatchesView({super.key});
  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: CustomAppBar(text: 'المباريات',icon: true,),
      body:ListView(children: [
        Container(
          margin: EdgeInsetsDirectional.only(start: screenWidth(20),end: screenWidth(20),top: screenWidth(15)),
          padding: EdgeInsetsDirectional.only(start: screenWidth(8)),
          height: screenWidth(3.6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: AppColors.lightGray),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(0.23),
                offset: Offset(2, 2),
                spreadRadius: 3,
                blurRadius: 5,
              )
            ]
          ),
          child: CustomResults(number: '0', numbertwo: '5', date: 'السبت 12/2 12:7م',live: true,),
        ),
        Center(
          child: Container(
            margin: EdgeInsetsDirectional.only(top: screenWidth(25)),
            height: screenWidth(12),
            width: screenWidth(3.5),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15)
            ),child: Center(child: CustomText(text: 'تفاصيل المباراة',styleType: TextStyleType.BODY,
            mColor: AppColors.white
            ,)),
          ),
        ),
        Padding(
          padding:  EdgeInsetsDirectional.only(top: screenWidth(10)),
          child: Row(children: [
             Expanded(
               child: Divider(
                         thickness: 2,
                         color: Colors.black,
                         endIndent: screenWidth(22),
                       ),
             ),
             CustomText(text: 'المباريات القادمة',
             styleType: TextStyleType.BODY,
             fontSize: screenWidth(23),
             ),
              Expanded(
               child: Divider(
                         thickness: 2,
                        color: Colors.black,
                          indent: screenWidth(22),
                       ),
             ),
          ],),
        ),
        CustomMatchTime(color: AppColors.white, date: 'السبت 12/12 12:3 م'),
         CustomMatchTime(color: AppColors.white, date: 'السبت 12/12 12:3 م'),
          CustomMatchTime(color: AppColors.white, date: 'السبت 12/12 12:3 م')
      ],) ,)
    );
  }
}