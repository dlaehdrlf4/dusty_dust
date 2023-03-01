import 'package:dusty_dust/model/stat_model.dart';
import 'package:dusty_dust/model/status_model.dart';
import 'package:dusty_dust/utils/data_utils.dart';
import 'package:flutter/material.dart';

import '../const/colors.dart';

class MainAppBar extends StatelessWidget {

  final StatusModel status; //
  final StatModel stat; // 실제 값 

  MainAppBar({
    Key? key, required this.status, required this.stat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

      final ts = TextStyle(fontSize: 30.0,color: Colors.white);

    return SliverAppBar(
      expandedHeight: 500,

      backgroundColor: status.primaryColor,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: kToolbarHeight), // 원래 앱바의 기본적인 셋팅된 height를 얻으려면 kTollbarHeight
            child: Column(
              children: [
                Text('서울',style: ts,),
                Text(DataUtils.getTimeFromDateTime(dateTime: stat.dataTime),style: ts.copyWith(fontSize: 20.0),),
                SizedBox(height: 20.0,),
                Image.asset('${status.imagePath}',width: MediaQuery.of(context).size.width /2,),
                SizedBox(height: 20.0,),
                Text('${status.lebel}',style: ts.copyWith(fontWeight: FontWeight.w700,fontSize: 40.0),),
                SizedBox(height: 10.0,),
                Text('${status.comment}',style: ts.copyWith(fontWeight: FontWeight.w700,fontSize: 20.0),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
}