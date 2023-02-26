import 'package:flutter/material.dart';

import '../const/colors.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

      final ts = TextStyle(fontSize: 30.0,color: Colors.white);

    return SliverAppBar(
      expandedHeight: 500,

      backgroundColor: primaryColor,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: kToolbarHeight), // 원래 앱바의 기본적인 셋팅된 height를 얻으려면 kTollbarHeight
            child: Column(
              children: [
                Text('서울',style: ts,),
                Text('${DateTime.now()}',style: ts.copyWith(fontSize: 20.0),),
                SizedBox(height: 20.0,),
                Image.asset('asset/img/mediocre.png',width: MediaQuery.of(context).size.width /2,),
                SizedBox(height: 20.0,),
                Text('보통',style: ts.copyWith(fontWeight: FontWeight.w700,fontSize: 40.0),),
                SizedBox(height: 10.0,),
                Text('나쁘지 않네요',style: ts.copyWith(fontWeight: FontWeight.w700,fontSize: 20.0),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}