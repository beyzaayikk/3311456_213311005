import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:yemektarifi/widgets/widgets.dart';

class YumurtaliOmlet extends StatefulWidget {
  const YumurtaliOmlet({Key? key}) : super(key: key);

  @override
  State<YumurtaliOmlet> createState() => _YumurtaliOmletState();
}

class _YumurtaliOmletState extends State<YumurtaliOmlet> {
  @override
  Widget build(BuildContext context) {
    return YemekTarifi(yemekAdi: 'Chialı Yulaflı Yumurta', malzemeler: [
      '-1 Tatlı kaşığı Chia\n\n-2 Tatlı kaşığı Yulaf\n\n-1 Yumurta\n\n-1 Çorba kaşığı sıvı yağ'
    ], yapilisi: [
      'Bir kaseye bütün malzemeleri koyup güzelce karışmasını sağlayalım\n\n-Orta boy bir tavaya sıvı yağı koyduktan sonra kısık ateşte ocakta pişiriyoruz işte bu kadar\n\nAfiyet olsun. ',
    ]);
  }
}
