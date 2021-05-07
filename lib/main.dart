import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_scanner/ScanPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'generate.dart';

void main() {
  runApp(MaterialApp(
    title: 'QR Code App',
    theme: ThemeData.dark(),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200.0,
            ),
            Text('Start Scanning',
              style: GoogleFonts.raleway(
                fontSize: 40.0,
                fontWeight: FontWeight.w500,
              )
            ),
            Text('QR CODE',
              style: GoogleFonts.raleway(
                fontSize: 40.0,
                fontWeight: FontWeight.w200,
              )
            ),
            SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0,left: 40.0,bottom: 40.0),
              child: RawMaterialButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScanPage()),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                fillColor: Colors.teal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.scanner,
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text('Start Scanning'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0,left: 40.0,bottom: 40.0),
              child: RawMaterialButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GeneratePage()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                fillColor: Colors.teal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.attach_file,
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text('Generate QR code'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Text('Made By',
            style: GoogleFonts.raleway(
              fontSize: 18.0,
              fontWeight: FontWeight.w100,
            ),
            ),
            Text('ZEYAD MAAMOUN',
              style: GoogleFonts.raleway(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}

