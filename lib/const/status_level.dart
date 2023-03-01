import 'package:dusty_dust/model/status_model.dart';
import 'package:flutter/material.dart';

final statusLevel = [
  //최고등급
  StatusModel(
      level: 0,
      lebel: '최고',
      primaryColor: Color(0xFF2196F3),
      darkColor: Color(0xFF0069C0),
      lightColor: Color(0xFF6EC6FF),
      detailFontColor: Colors.black,
      imagePath: 'asset/img/best.png',
      comment: '우와! 100년에 한번 오는날!',
      minFineDust: 0,
      minUltraFineDust: 0,
      minO3: 0,
      minNO2: 0,
      minCO: 0,
      minSO2: 0),
      //최고
      StatusModel(
      level: 1,
      lebel: '좋음',
      primaryColor: Color(0xFF03a9f4),
      darkColor: Color(0xFF007ac1),
      lightColor: Color(0xFF67daff),
      detailFontColor: Colors.black,
      imagePath: 'asset/img/good.png',
      comment: '공기가 좋아요! 외부활동 해도 좋아요!',
      minFineDust: 16,
      minUltraFineDust: 9,
      minO3: 0.02,
      minNO2: 0.02,
      minCO: 1,
      minSO2: 0.01),

      //양호
      StatusModel(
      level: 2,
      lebel: '양호',
      primaryColor: Color(0xFF00bcd4),
      darkColor: Color(0xFF008ba3),
      lightColor: Color(0xFF62efff),
      detailFontColor: Colors.black,
      imagePath: 'asset/img/ok.png',
      comment: '공기가 좋은 날이네요!',
      minFineDust: 31,
      minUltraFineDust: 16,
      minO3: 0.03,
      minNO2: 0.03,
      minCO: 2,
      minSO2: 0.02),

      //보통
      StatusModel(
      level: 3,
      lebel: '보통',
      primaryColor: Color(0xFF009688),
      darkColor: Color(0xFF00675b),
      lightColor: Color(0xFF52c7b8),
      detailFontColor: Colors.black,
      imagePath: 'asset/img/mediocre.png',
      comment: '나쁘지 않네요!',
      minFineDust: 41,
      minUltraFineDust: 21,
      minO3: 0.06,
      minNO2: 0.05,
      minCO: 5.5,
      minSO2: 0.04),

       //나쁨
      StatusModel(
      level: 4,
      lebel: '나쁨',
      primaryColor: Color(0xFFffc107),
      darkColor: Color(0xFFc79100),
      lightColor: Color(0xFFfff350),
      detailFontColor: Colors.black,
      imagePath: 'asset/img/bad.png',
      comment: '공기가 안좋아요....',
      minFineDust: 51,
      minUltraFineDust: 26,
      minO3: 0.09,
      minNO2: 0.06,
      minCO: 9,
      minSO2: 0.05),

       //상당히 나쁨
      StatusModel(
      level: 5,
      lebel: '상당히 나쁨',
      primaryColor: Color(0xFFff9800),
      darkColor: Color(0xFFc66900),
      lightColor: Color(0xFFffc947),
      detailFontColor: Colors.black,
      imagePath: 'asset/img/very_bad.png',
      comment: '공기가 나빠요! 외부활동을 자제해주세요!',
      minFineDust: 76,
      minUltraFineDust: 38,
      minO3: 0.12,
      minNO2: 0.13,
      minCO: 12,
      minSO2: 0.1),

      //매우나쁨
      StatusModel(
      level: 6,
      lebel: '매우나쁨',
      primaryColor: Color(0xFFf44336),
      darkColor: Color(0xFFba000d),
      lightColor: Color(0xFFff7961),
      detailFontColor: Colors.black,
      imagePath: 'asset/img/worse.png',
      comment: '매우 안좋아요! 나가지마세요!',
      minFineDust: 101,
      minUltraFineDust: 51,
      minO3: 0.15,
      minNO2: 0.2,
      minCO: 15,
      minSO2: 0.15),

      //최악
      StatusModel(
      level: 7,
      lebel: '최악',
      primaryColor: Color(0xFF212121),
      darkColor: Color(0xFF000000),
      lightColor: Color(0xFFf484848),
      detailFontColor: Colors.white,
      imagePath: 'asset/img/worst.png',
      comment: '역대급 최악의날! 집에만 계세요!',
      minFineDust: 151,
      minUltraFineDust: 76,
      minO3: 0.38,
      minNO2: 1.1,
      minCO: 32,
      minSO2: 0.16),

];
