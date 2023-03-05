import 'package:dusty_dust/component/card_title.dart';
import 'package:dusty_dust/component/main_card.dart';
import 'package:dusty_dust/component/main_stat.dart';
import 'package:dusty_dust/model/stat_and_status_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../const/colors.dart';
import '../utils/data_utils.dart';

class CategoryCard extends StatelessWidget {
  final String region;
  final Color darkColor;
  final Color lightColor;
  final List<StatAndStatusModel> models;
  CategoryCard({Key? key, required this.region, required this.models, required this.darkColor, required this.lightColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: MainCard(
        backgroundColor: lightColor,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CardTitle(
                title: '종류별 통계',
                backgroundColor: darkColor,
              ),
              Expanded(
                child: ListView(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: models
                        .map((model) => MainStat(
                            category: DataUtils.itemcodeKrString(
                                itemCode: model.itemCode),
                            imgPath: model.status.imagePath,
                            level: model.status.lebel,
                            stat:
                                '${model.stat.getLevelFromRegion(region)}${DataUtils.getUnitFromItemCode(itemCode: model.itemCode)}',
                            width: constraints.maxWidth / 3))
                        .toList()),
              ),
            ],
          );
        }),
      ),
    );
  }
}
