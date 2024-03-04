import 'package:flutter/material.dart';

class TenderHome extends StatelessWidget {
  const TenderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
       decoration: BoxDecoration(
       image: DecorationImage(
        image: AssetImage('assets/image/tender.png'),
       )
      )
      )
      ),
    );
  }
}
