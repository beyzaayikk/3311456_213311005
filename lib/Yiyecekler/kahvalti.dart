import 'package:flutter/material.dart';

import 'package:yemektarifi/Kahvalti/avakadoezmesi.dart';
import 'package:yemektarifi/Kahvalti/diyetomlet.dart';
import 'package:yemektarifi/Kahvalti/yulafliyumurta.dart';
import '../Kahvalti/fitmuffin.dart';
import '../widgets/widgets.dart';

class Kahvalti extends StatefulWidget {
  const Kahvalti({Key? key}) : super(key: key);

  @override
  State<Kahvalti> createState() => _KahvaltiState();
}

class _KahvaltiState extends State<Kahvalti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kahvaltılar"),
      ),
      body: Scrollbar(
        thickness: 8.0,

        isAlwaysShown: true,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(width: 300,
                "images/breakfast.jpg",
                height: 300,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  YemekButtonStyle(
                    onpressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const FitMuffin())),
                    yemekAdi2: 'Fit Muffin',
                    dakika: '5-10',
                  ),
                  SizedBox(height: 10),
                  YemekButtonStyle(
                    onpressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DiyetOmlet())),
                    yemekAdi2: 'Yeşil Diyet Omlet',
                    dakika: '15-20',
                  ),
                  SizedBox(height: 10),
                  YemekButtonStyle(
                    onpressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AvakadoEzmesi())),
                    yemekAdi2: 'Avakado Ezmesi',
                    dakika: '5',
                  ),
                  SizedBox(height: 10),
                  YemekButtonStyle(
                    onpressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const YumurtaliOmlet())),
                    yemekAdi2: 'Chialı yumurtalı Omlet',
                    dakika: '5-10',
                  ),
                  SizedBox(height: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
