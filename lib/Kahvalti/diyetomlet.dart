import 'package:flutter/material.dart';

import 'package:yemektarifi/widgets/widgets.dart';

class DiyetOmlet extends StatefulWidget {
  const DiyetOmlet({Key? key}) : super(key: key);

  @override
  State<DiyetOmlet> createState() => _DiyetOmletState();
}

class _DiyetOmletState extends State<DiyetOmlet> {
  @override
  Widget build(BuildContext context) {
    return YemekTarifi(
      yemekAdi: 'Diyet Omlet',
      malzemeler: ['- 1 Kabak\n\n- 2 yumurta\n\n-Birkaç tutam dereotu\n\n-1 çay kaşığı  pul biber\n\n-1 tatlı kaşığı  tereyağ'],
      yapilisi:
[          'Öncelikle kabağımzı küçük küp küp doğruyoruz\n\n-Tereyağımızı yapışmaz bir tavada eritiyoruz ve ardından doğradığımız kabakları ilave edip rengi hafif sarıya dönecek kadar yani yenilecek yumuşak kıvama gelene kadar ara sıra karıştırıp kontrol ederek pişiriyoruz\n\n-Ayrı tabağa aldığımız yumurtalarımızı baharatlarımızı ekleyerek çırpıyoruz,Pişen kabaklarımızın üzerine ilave edip pişiriyoruz\n\n-En son servis ederken taze dereotunu isteğimiz kadar ekliyoruz\n\nAfiyet olsun. ',
]    );
  }
}
