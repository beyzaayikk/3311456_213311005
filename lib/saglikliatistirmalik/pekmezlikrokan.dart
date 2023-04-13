import 'package:flutter/material.dart';
import 'package:yemektarifi/widgets/widgets.dart';
class PekmezliKrokan extends StatefulWidget {
  const PekmezliKrokan({Key? key}) : super(key: key);

  @override
  State<PekmezliKrokan> createState() => _PekmezliKrokanState();
}

class _PekmezliKrokanState extends State<PekmezliKrokan> {

  @override
  Widget build(BuildContext context) {
    return YemekTarifi (
      yemekAdi: 'Pekmezli Şekersiz Krokan ',
      malzemeler:['-Yarım su bardağı susam\n\n-Çeyrek su bardağı fındık kırığı\n\n-Çeyrek su bardağı ceviz kırığı\n\n-1 çay bardağı pekmez\n\n-2 yemek kaşığı tahin'],
      yapilisi:
[      'Pekmezi kaynatıp üzerine ölçüye göre susam ve istediğimiz kuruyemişleri ekleyip kıvam alana kadar karıştırıyoruz\n\nSoğumadan yağlı kağıda döküp üzerine bir tane daha yağlı kağıt serip oklavayla açıyoruz\n\n-Soğuduktan sonra üzerinden yağlı kağıdı çekip dilimleyip 10 dakika kadar buz dolabında bekletiyoruz\n\nAfiyet olsun.' ,
]

    );
  }
}
