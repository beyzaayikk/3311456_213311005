import 'package:flutter/material.dart';
import 'package:yemektarifi/widgets/widgets.dart';
class SekersizBrowni extends StatefulWidget {
  const SekersizBrowni({Key? key}) : super(key: key);

  @override
  State<SekersizBrowni> createState() => _SekersizBrowniState();
}

class _SekersizBrowniState extends State<SekersizBrowni> {
  @override
  Widget build(BuildContext context) {
    return YemekTarifi(
      yemekAdi: 'Şekersiz Diyet Browni',
      malzemeler: ['-3 yumurta\n\n-3 adet muz\n\n-8 yemek kaşığı hindistan cevizi\n\n-4 yemek kaşığı kakao\n\n-1 çay kaşığı karbonat'],
      yapilisi:
[      'Muzlarımızı bir kaba rendeleyelim\n\n-Yumurtayla iyice köpürene kadar mikserle çırpalım\n\n-Geri kalan malzemelerin hepsini de ilave edip biraz daha karıştıralım\n\n-Küçük dörtgen borcama dökelim ve önceden ısıtılmış 180 derecelik fırında 25 dakika pişirelim\n\nAfiyet olsun',
]    );
  }
}
