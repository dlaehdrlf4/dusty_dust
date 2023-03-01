import 'package:dio/dio.dart';
import 'package:dusty_dust/component/card_title.dart';
import 'package:dusty_dust/component/category_card.dart';
import 'package:dusty_dust/component/main_card.dart';
import 'package:dusty_dust/component/main_drawer.dart';
import 'package:dusty_dust/component/main_stat.dart';
import 'package:dusty_dust/const/colors.dart';
import 'package:dusty_dust/const/data.dart';
import 'package:dusty_dust/const/status_level.dart';
import 'package:dusty_dust/model/stat_model.dart';
import 'package:dusty_dust/repository/stat_repository.dart';
import 'package:flutter/material.dart';

import '../component/hourly_card.dart';
import '../component/main_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<StatModel>> fetchData() async {
    final statModels = await StatRepository.fetchData();

    return statModels;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: MainDrawer(),
      body: FutureBuilder<List<StatModel>>(future: fetchData(),builder: (context, snapshot) {
      
        if(snapshot.hasError){
          return Center(
            child: Text('에러가 있습니다'),
          );
        }

        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        List<StatModel> stats = snapshot.data!;
        StatModel recentStat = stats[0];

        // 1-5, 6-10, 11-15
        // 7

        final status = statusLevel.where((element) => element.minFineDust < recentStat.seoul).last;

        print(recentStat.seoul);


        return CustomScrollView(
          slivers: [
            MainAppBar(
              status: status,
              stat: recentStat,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CategoryCard(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  HourlyCard(),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
