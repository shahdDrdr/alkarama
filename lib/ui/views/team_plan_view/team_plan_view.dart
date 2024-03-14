import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_border.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_results.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class TeamPlanView extends StatefulWidget {
  const TeamPlanView({super.key});

  @override
  State<TeamPlanView> createState() => _TeamPlanViewState();
}

class _TeamPlanViewState extends State<TeamPlanView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: CustomAppBar(text: 'تفاصيل المباراة'),
      body: ListView(children: [
         Container(
            height: screenWidth(3.5),
            margin: EdgeInsetsDirectional.only(start: screenWidth(12),end: screenWidth(12),top: screenWidth(20)),
            padding: EdgeInsetsDirectional.only(start: screenWidth(14),end: screenWidth(20),top: screenWidth(40),
            ),
            color: Color.fromRGBO(233, 230, 230, 1),
            child: CustomResults(number: '5', numbertwo: '0', date: 'السبت 12/12 12:2م'),
          ),
       CustomBorder(border: true,),
       Container(
        margin: EdgeInsetsDirectional.only(top: screenWidth(15)),
         child: Image.asset('assets/images/pngs/plan.png',
         fit: BoxFit.fill,
        // width: screenWidth(1.2),
        //height:screenWidth(1)
         ),
       )
      ],) ,
    )
    );
  }
}