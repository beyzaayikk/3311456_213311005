import 'package:flutter/material.dart';
import 'package:yemektarifi/saglikliatistirmalik/leblebikurabiye.dart';
import 'package:yemektarifi/saglikliatistirmalik/meyveliyogurt.dart';
import 'package:yemektarifi/saglikliatistirmalik/pekmezlikrokan.dart';
import 'package:yemektarifi/widgets/widgets.dart';

import '../saglikliatistirmalik/sekersizbrowni.dart';

class Atistirmalik extends StatefulWidget {
  const Atistirmalik({Key? key}) : super(key: key);

  @override
  State<Atistirmalik> createState() => _AtistirmalikState();
}

class _AtistirmalikState extends State<Atistirmalik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atıştırmalıklar'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              Image.asset(width: 300,
                "images/kurabiye.jpg",
                height: 300,),
              YemekButtonStyle(onpressed:  () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LeblebiKurabiye())),
                yemekAdi2: 'Pişmeyen Leblebi Kurabiyesi',
                dakika: '5',
              ),
              SizedBox(height: 10),
              YemekButtonStyle(onpressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MeyveliYogurt())),
                yemekAdi2: 'Meyveli Yoğurt',
                dakika: '5',
              ),
              SizedBox(height: 10),
              YemekButtonStyle(onpressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SekersizBrowni())),
                yemekAdi2: 'Şekersiz Diyet Browni',
                dakika: '25',
              ),
              SizedBox(height: 10,),
              YemekButtonStyle(onpressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PekmezliKrokan())),
                yemekAdi2: 'Pekmezli Şekersiz Krokan ',
                dakika: '5',
              ),


            ],
          ),
        ),
      ),
    );
  }
}
