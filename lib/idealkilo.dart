import 'package:flutter/material.dart';

class IdealKiloForm extends StatefulWidget {
  const IdealKiloForm({Key? key}) : super(key: key);

  @override
  State<IdealKiloForm> createState() => _IdealKiloFormState();
}

class _IdealKiloFormState extends State<IdealKiloForm> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _boycontroller = TextEditingController();
  TextEditingController _kilocontroller = TextEditingController();
  TextEditingController _yascontroller = TextEditingController();

  double _idealKilo = 0;

  void IdealKiloHesaplama() {
    if (_formkey.currentState!.validate()) {
      double boy = double.parse(_boycontroller.text);
      double kilo = double.parse(_kilocontroller.text);

      double idealKilo = kilo / ((boy / 100) * (boy / 100));
      String toResult = idealKilo.toStringAsFixed(3);

      if (idealKilo < 0) {
        idealKilo = 0;
      }

      setState(() {
        idealKilo.toStringAsFixed(3);
        _idealKilo = idealKilo;
      });


      String message = "";
      if (_idealKilo < 18) {
        message = "İdeal kilonun altı";
      } else if (18 < _idealKilo && _idealKilo < 24.99) {
        message = "İdeal kilodasınız";
      } else if (25 < _idealKilo && _idealKilo < 29.99) {
        message = "İdeal kilonun üzerindesiniz";
      } else if (_idealKilo > 30) {
        message = "İdeal kilonun çok üzerindesiniz";
      }

      showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              title: Text("Ideal Kilo"),
              content: Text("Vücut Kitle İndeksiniz : $toResult kg\n\n $message"),

              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Tamam"),
                  color: Colors.deepOrange,
                  shape: StadiumBorder(),
                ),
              ],
            ),
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vücut Kitle İndeksi"),
      ),
      body: Scrollbar(
        child: FractionallySizedBox(
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    width: 250,
                    "images/mezura.jpg",
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _kilocontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: 'Kilo (kg)',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'lütfen kilonuzu giriniz';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _boycontroller,
                      decoration: InputDecoration(
                          labelText: 'Boy (cm)',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'lütfen boyunuzu giriniz';
                        }
                        return null;
                      },
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: IdealKiloHesaplama,
                      child: Text('Hesapla')),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
