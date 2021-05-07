import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratePage extends StatefulWidget {
  @override
  _GeneratePageState createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {

  String qrData='hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: QrImage(
                data: qrData,
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
        SizedBox(
          height: 100.0,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            onSubmitted: (String value){
              setState(() {
                qrData=value;
              });
            },
            controller: TextEditingController(),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter QR Data',
              hintText: 'Enter QR Data',
            )
          ),
        )
          ],
        ),
      ),
    );
  }
}
