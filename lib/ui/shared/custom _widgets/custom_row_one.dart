import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomRowOne extends StatelessWidget {
  final String name;

  const CustomRowOne({super.key, required this.name, });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(text: name,
        styleType: TextStyleType.FOCUSTEXT,
        fontSize: screenWidth(20),
        ),
        Spacer(),
       CustomText(text: 'مشاهدة الكل',
       styleType: TextStyleType.BODY,
       )
      ],
    );
  }
}