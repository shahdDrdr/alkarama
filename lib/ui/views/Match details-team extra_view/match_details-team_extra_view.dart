import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_border.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_results.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_person.dart';
import 'package:task_P2/ui/shared/utlis.dart';
import 'package:task_P2/ui/views/match_details_change/match_details_change.dart';
class MatchDetailsIeamExtraView extends StatefulWidget {
  const MatchDetailsIeamExtraView({super.key});
  @override
  State<MatchDetailsIeamExtraView> createState() => _MatchDetailsIeamExtraViewState();
}

class _MatchDetailsIeamExtraViewState extends State<MatchDetailsIeamExtraView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: CustomAppBar(text: 'تفاصيل المباراة'),
      body:ListView(
        padding: EdgeInsetsDirectional.only(start: screenWidth(22),end: screenWidth(22),top: screenWidth(10)),
        children: [
          Container(
            height: screenWidth(3.5),
            margin: EdgeInsetsDirectional.only(start: screenWidth(22),end: screenWidth(22)),
            padding: EdgeInsetsDirectional.only(start: screenWidth(14),end: screenWidth(20),top: screenWidth(40),
            
            ),
            color: Color.fromRGBO(233, 230, 230, 1),
            child: CustomResults(number: '5', numbertwo: '0', date: 'السبت 12/12 12:2م'),
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            CustomBorder(name: 'خطة الفريق',tap: (){
              },
              ),
               CustomBorder(name: 'التبديلات',tap: (){
                Get.to(MatchDetailsChange());
             }),
               CustomBorder(name: 'الاحتياط',tap: (){
              },border: true),
          ],),
          Container(
            height: screenWidth(1),
            child: ListView(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(10), start: screenWidth(80)),
              scrollDirection: Axis.horizontal,
              children: [
              CustomPerson( img: 'person',name: 'انس بلحوس', ),
              CustomPerson( img: 'anas',name: 'انس بلحوس', ),
              CustomPerson( img: 'anas',name: 'انس بلحوس', ),
              ],
            ),
          ),
        ],
      ) ,
    )
    );
  }
}