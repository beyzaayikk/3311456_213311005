import 'package:flutter/material.dart';
import 'package:yemektarifi/widgets/widgets.dart';

class MeyveliYogurt extends StatefulWidget {
  const MeyveliYogurt({Key? key}) : super(key: key);

  @override
  State<MeyveliYogurt> createState() => _MeyveliYogurtState();
}

class _MeyveliYogurtState extends State<MeyveliYogurt> {
  @override
  Widget build(BuildContext context) {
    return YemekTarifi(
      yemekAdi: 'Meyveli Yoğurt',
      malzemeler: ['-1 kase yoğurt\n\n-1 yemek kaşığı keten tohumu\n\n-1 yemek kaşığı yulaf ezmesi\n\n-1 yemek kaşığı tarçın\n\nKüp kesilmiş tatlı mevsim meyveleri çilek, şeftali, erik\n\n-2 tatlı kaşığı bal'],

      yapilisi:
[      'Tüm malzemeleri bir kasede buluşturup güzelce karıştıralım\n\n-Partikül sevmeyenler blendırdan geçirip tüketebilir\n\nAfiyet olsun.'
]      ,
    );

  }
}
