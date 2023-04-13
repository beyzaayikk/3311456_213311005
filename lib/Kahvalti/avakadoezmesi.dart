import 'package:flutter/material.dart';
import 'package:yemektarifi/widgets/widgets.dart';

class AvakadoEzmesi extends StatefulWidget {
  const AvakadoEzmesi({Key? key}) : super(key: key);

  @override
  State<AvakadoEzmesi> createState() => _AvakadoEzmesiState();
}

class _AvakadoEzmesiState extends State<AvakadoEzmesi> {
  @override
  Widget build(BuildContext context) {
    return YemekTarifi(
      yemekAdi: 'Avakado Ezmesi',
      malzemeler: ['- 1 adet avokado\n\n- Yarım limonun suyu\n\n-1 yemek kaşığı zeytinyağı\n\n-1 çay kaşığı tuz'],
      yapilisi:
[          'Avokadoyu yıkayıp çekirdeğini çıkardıktan sonra içini bir mixerin içerisine koyalım\n\n-Zeytinyağı,damak tadınıza göre limon ve tuzu ekleyip çok kısa bir süre hafif taneleri kalacak şekilde ezelim\n\n-İster Ekmek üzerine sürüp Kahvaltıya ister yemeklerin yanında Sos olarak da kullanabilirsiniz\n\nAfiyet olsun ',
]    );
  }
}
