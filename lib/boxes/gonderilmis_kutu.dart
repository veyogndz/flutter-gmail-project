import 'package:flutter/material.dart';

class GonderilenKutusu extends StatelessWidget {
  const GonderilenKutusu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gönderilen Kutusu "),
      ),
    );
  }
}
