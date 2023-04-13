import 'package:flutter/material.dart';
import 'package:yemektarifi/widgets/widgets.dart';

class FitMuffin extends StatefulWidget {
  const FitMuffin({Key? key}) : super(key: key);

  @override
  State<FitMuffin> createState() => _FitMuffinState();
}

class _FitMuffinState extends State<FitMuffin> {
  @override
  Widget build(BuildContext context) {
    return YemekTarifi(yemekAdi: 'Fit Muffin', malzemeler: [
      '- 6 yemek kaşığı yulaf ezmesi\n\n- 2 adet yeşil biber\n\n-Birkaç tutam dereotu\n\n-1/2 (yarım) adet domates\n\n-2 adet yumurta'
    ], yapilisi: [
      '-Öncelikle muffin kaplarını hafifçe yağlıyoruz\n\n-Sonra birer tatlı kaşığı yulaf ile muffinlere taban oluşturuyoruz\n\n-Üzerine minik minik doğradığımız biber ve domateslerle birlikte dereotunu ekliyoruz\n\n-Son olarak baharatlarla çırptığımız yumurtalarımızı kaplarımıza paylaştırıyoruz\n\n-200 derecede 15 dakika boyunca altlı üstlü pişirdikten sonra kahvaltılık muffinlerimiz hazır\n\nAfiyet olsun.',
    ]);
  }
}
