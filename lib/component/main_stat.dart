
import 'package:flutter/material.dart';

class MainStat extends StatelessWidget {

  final String category;
  final String imgPath;
  final String level;
  final String stat;

  MainStat({Key? key, required this.category, required this.imgPath, required this.level, required this.stat}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ts = TextStyle(color: Colors.black);

    return Column(
      children: [
        Text(category,style: ts,),
        SizedBox(height: 8.0,),
        Image.asset(imgPath,width: 50.0,),
        SizedBox(height: 8.0,),
        Text(level,style: ts,),
        Text(stat,style: ts,),
      ],
    );
  }
}