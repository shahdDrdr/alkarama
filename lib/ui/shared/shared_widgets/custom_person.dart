import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_person_details.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomPerson extends StatelessWidget {
  final String name;
  final String img;
   bool? row;
   CustomPerson({super.key, required this.name, required this.img, this.row=true });

  @override
  Widget build(BuildContext context) {
    return  Stack(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(top: screenHeight(15)),
                  margin: EdgeInsetsDirectional.only(
                      top: screenHeight(5), start: screenWidth(90)),
                  width: screenWidth(2.2),
                  height: screenHeight(5.5),
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: screenWidth(18),start: screenWidth(10)),
                  child: Image.asset(
                    'assets/images/pngs/$img.png',
                    //width: screenWidth(2.5),
                     height: screenHeight(5),
                  ),
                ), Padding(
                  padding:  EdgeInsetsDirectional.only(top: screenWidth(1.9),start: screenWidth(10)),
                  child: CustomText(text: name,
                       styleType: TextStyleType.BODY,
                        fontSize: screenWidth(20),
                       mColor: AppColors.white,
                       ),
                ), row==true?
                 Padding(
                   padding:  EdgeInsetsDirectional.only(top: screenWidth(1.6),start: screenWidth(39)),
                   child: Row(children: [
                        CustomPersonDetails(text: '37', name: 'age'),
                           SizedBox(width: screenWidth(120),),
                         CustomPersonDetails(text: '180', name: 'CM'),
                           SizedBox(width: screenWidth(120),),
                          CustomPersonDetails(text: 'المركز', name: '8'),
                            SizedBox(width: screenWidth(120),), 
                          CustomPersonDetails(text: '37', name: 'age'),
                            SizedBox(width: screenWidth(120),), 
                          ]),
                 ):Row()
                  ]);
                  }}