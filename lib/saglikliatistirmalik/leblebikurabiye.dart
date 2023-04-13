

import 'package:flutter/material.dart';
import 'package:yemektarifi/widgets/widgets.dart';
class LeblebiKurabiye extends StatefulWidget {
  const LeblebiKurabiye({Key? key}) : super(key: key);

  @override
  State<LeblebiKurabiye> createState() => _LeblebiKurabiyeState();
}

class _LeblebiKurabiyeState extends State<LeblebiKurabiye> {

  @override
  Widget build(BuildContext context) {
    return YemekTarifi(
      yemekAdi: 'Leblebi Pişmeyen Fit Kurabiye',
      malzemeler: ['-1 çay bardağı leblebi\n\n-3 yemek kaşığı tahin\n\n-3 yemek kaşığı pekmez\n\n-1 yemek kaşığı kakao\n\n-Tahin pekmez karışımı'],
      yapilisi:
[      'Leblebiyi bilendırdan geçirelim,Diğer malzemeleri karıştıralım elimizle yoğuralım\n\n-Daha sonra kurabiye gibi küçük küçük şekil verelim\n\n-Üstü için isterseniz tahin pekmez karışımını kullanabilirsiniz\n\n-Buzdolabında 15 dakika dinlendikten sonra afiyetle tüketebilirsiniz\n\nAiyet Olsun',
]

    );
  }
}
