 import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_border.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_results.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_person.dart';
import 'package:task_P2/ui/shared/utlis.dart';
 class MatchDetailsChange  extends StatefulWidget {
  const MatchDetailsChange({super.key});

  @override
  State<MatchDetailsChange> createState() => _MatchDetailsChangeState();
}

class _MatchDetailsChangeState extends State<MatchDetailsChange> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: CustomAppBar(text:'تفاصيل المباراة'),
      body: ListView(
         padding: EdgeInsetsDirectional.only(top: screenWidth(10)),
        children: [
          Container(
            height: screenWidth(3.5),
            margin: EdgeInsetsDirectional.only(start: screenWidth(12),end: screenWidth(12)),
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
             },border: true,),
               CustomBorder(name: 'الاحتياط',tap: (){
              },)     
      ],),Row(children: [
        CustomPerson(name: 'انس بلحوس', img: 'anas',row: false),
        Padding(
                    padding:  EdgeInsetsDirectional.only(top: screenWidth(2.6),start: screenWidth(240)),
                    child: Image.asset('assets/images/pngs/vector.png',
                    width: screenWidth(25),
                    ),
                  ),
                   CustomPerson(name: 'انس بلحوس', img: 'anas',row: false,),
      ],)
    ,])
    ));
  }
}