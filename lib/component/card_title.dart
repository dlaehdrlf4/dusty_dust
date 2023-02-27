import 'package:flutter/material.dart';

import '../const/colors.dart';

class CardTitle extends StatelessWidget {
  final String title;

  const CardTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: darkColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            '$title',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
          ),
        )));
  }
}
