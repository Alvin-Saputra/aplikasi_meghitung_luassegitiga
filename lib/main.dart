import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 90, 17, 7),
        title: Text("Kalkulator Luas Segitiga V2"),
        centerTitle: true,
      ),
      body: LuasSegitigaCalculator(),
    )// Menggunakan instance dari LuasSegitigaCalculator
  ));
}


class LuasSegitigaCalculator extends StatefulWidget {
  @override
  _LuasSegitigaCalculatorState createState() => _LuasSegitigaCalculatorState();
}

class _LuasSegitigaCalculatorState extends State<LuasSegitigaCalculator> {
  double alas = 0.0;
  double tinggi = 0.0;
  double luas = 0.0;

  void hitungLuas() {
    setState(() {
      luas = 0.5 * alas * tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
               margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan alas segitiga",
                    ),
                    onChanged: (value) {
                      setState(() {
                        alas = double.parse(value);
                      });
                    },
                  ),
            ),
            Container(
               margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan tinggi segitiga",
                    ),
                    onChanged: (value) {
                      setState(() {
                        tinggi = double.parse(value);
                      });
                    },
                  ),
            ),
            Container(
               margin: EdgeInsets.symmetric(vertical: 50.0),
              child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 191, 219, 32),
                      ),
                onPressed: hitungLuas,
                child: Text("Hitung Luas"),
              ),
            ),
            Text("Luas segitiga: $luas cm"),
          ],
         
        ),
      ),
    );
  }
}