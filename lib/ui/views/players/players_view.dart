import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class PlayerView extends StatefulWidget {
  const PlayerView({super.key});

  @override
  State<PlayerView> createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(text: 'نادي الكرامة الرياضي'),
      body: ListView(
        children: [
          Container(
            height: screenWidth(1.2),
            child: Image.asset('assets/images/pngs/person.png'),
          ),
          Container(
            width: screenWidth(1),
            height: screenWidth(1),
            decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
          )
        ],
      ),
    ));
  }
}
