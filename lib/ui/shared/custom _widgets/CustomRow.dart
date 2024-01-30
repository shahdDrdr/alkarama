import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomRow extends StatefulWidget {
  final String text;
  final String image;
  const CustomRow({super.key, required this.text, required this.image});

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(bottom: screenWidth(70)),
      child: Row(
      children: [
        Image.asset('assets/images/pngs/${widget.image}.png', height: screenHeight(50)),
        SizedBox(width: screenWidth(30),),
        Text(
          widget.text,
          style: TextStyle(color: Colors.white, fontSize: screenWidth(40)),
        ),
      ],
      ),
    );
  }
}