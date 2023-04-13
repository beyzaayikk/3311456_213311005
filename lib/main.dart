import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemektarifi/Yiyecekler/atistirmalik.dart';
import 'package:yemektarifi/idealkilo.dart';
import 'package:yemektarifi/Yiyecekler/kahvalti.dart';
import 'package:flutter/src/material/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
      title: ('Anasayfa'),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.roboto(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white)

        ),
        colorSchemeSeed: Colors.deepOrange,

        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Anasayfa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String yemek = "";
  void _onButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Kahvalti()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.deepOrange[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/main.jpg",
            width: 300,
            height: 300,),
            Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton.icon(
                    onPressed: () => _onButton(context),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(30)),
                      elevation: 5,
                      backgroundColor: Colors.deepOrange[900],
                      minimumSize: const Size.fromHeight(70),
                      textStyle: const TextStyle(fontSize: 32),
                    ),
                    icon: const Icon(Icons.sunny),
                    label: Text('Kahvaltı',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 26),))),
            Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton.icon(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Atistirmalik()),
                        ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(30)),
                      elevation: 5,
                      backgroundColor: Colors.deepOrange[900],
                      minimumSize: const Size.fromHeight(70),
                      textStyle: const TextStyle(fontSize: 32),
                    ),
                    icon: const Icon(Icons.battery_charging_full_outlined),
                    label: Text('Atıştırmalık',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 26),))),
            Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton.icon(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IdealKiloForm()),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape:RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(30)),
                      elevation: 5,
                      backgroundColor: Colors.deepOrange[900],
                      minimumSize: const Size.fromHeight(70),
                      textStyle: const TextStyle(fontSize: 32),
                    ),
                    icon: const Icon(Icons.accessibility_new),
                    label:  Text('Vücut Kitle İndeksi',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 26),)))
          ],
        ),
      ),
    );
  }
}
