import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomContainerThree extends StatelessWidget {
  final double size;
  final Color? color;
  final bool? margin;
  const CustomContainerThree({super.key, required this.size, this.color=AppColors.blue,  this.margin=false});

  @override
  Widget build(BuildContext context) {
    return  Container(
                        width: size,
                        height: screenWidth(70),
                         margin:margin==true? EdgeInsetsDirectional.only(start: screenWidth(90),end: screenWidth(90))
                         :null
                         ,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      );
  }
}