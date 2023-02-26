import 'package:dusty_dust/component/main_stat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../const/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    color: lightColor,
                    child: LayoutBuilder(
                      builder: (context,constraints) {

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: darkColor,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0),topRight: Radius.circular(16.0)),
                              ),
                              child: Center(child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('종류별 통계',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),),
                              ))),
                            Expanded(
                              child: ListView(
                                physics: PageScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: List.generate(20, (index) => MainStat(
                                      category: '미세먼지',
                                      width: constraints.maxWidth / 3,
                                      imgPath: 'asset/img/best.png',
                                      level: '최고',
                                      stat: '0㎍/㎥'),
                                 )
                              ),
                            ),
                          ],
                        );
                      }
                    ),
                  ),
    );
  }
}