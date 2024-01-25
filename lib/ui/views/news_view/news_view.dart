import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_appbar.dart';
import 'package:task_P2/ui/shared/custom%20_widgets/custom_row_two.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar:CustomAppBar(text: 'الاخبار') ,
      body: Padding(
        padding:  EdgeInsetsDirectional.only(top: screenWidth(10),start: screenWidth(22),
        ),
        child: ListView.builder(
          itemCount: 12,
          itemBuilder:( (context, index) {
            return    CustomRowTwo(img: 'rectangle',
             text: 'نهاية اللقاء بفوز فريقنا على فريق الوثبة بهدفين مقابل هدف ',
              number: '300', day: '4');
          }),
        ),
      )
    )
    );
  }
}