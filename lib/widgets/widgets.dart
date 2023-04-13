import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YemekTarifi extends StatelessWidget {
  final String? yemekAdi;
  final List<String>? malzemeler;
  final List<String>? yapilisi;

  const YemekTarifi({
    super.key,
    this.yemekAdi,
    required this.malzemeler,
    this.yapilisi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(yemekAdi!),
        backgroundColor: Colors.lightGreenAccent[300],
      ),
      body: SingleChildScrollView(

        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(yemekAdi!,
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      for (var i = 0; i < malzemeler!.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Text(
                                  malzemeler![i],
                                  style: GoogleFonts.comfortaa(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Text(
                                  'Yapılışı',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                      for (var j = 0; j < malzemeler!.length; j++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Text(
                                    yapilisi![j],
                                    //textAlign: TextAlign.center,
                                    style: GoogleFonts.comfortaa(fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YemekButtonStyle extends StatelessWidget {
  final String? yemekAdi2;
  final String? dakika;
  final VoidCallback onpressed;
  const YemekButtonStyle({
    super.key,
    this.yemekAdi2,
    this.dakika,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      child: Card(
        elevation: 7,
        color: Colors.white70,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          color: Colors.amber[100],
          elevation: 7,
          child: ListTile(
            leading: Icon(
              Icons.call_missed_outgoing,
              size: 40,
            ),
            title: Text(
              yemekAdi2!,
              style: GoogleFonts.comfortaa(
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            trailing: Icon(
              Icons.favorite_border,
              size: 35,
            ),
            subtitle: Row(
              children: [
                Text(
                  '$dakika dakika',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 10),
                Icon(Icons.timer),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
