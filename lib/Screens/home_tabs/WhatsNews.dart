import 'package:flutter/material.dart';
class WhatsNews extends StatefulWidget {
  @override
  _WhatsNewsState createState() => _WhatsNewsState();
}

class _WhatsNewsState extends State<WhatsNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
           Container(
             width: double.infinity,
             decoration: BoxDecoration(
               image: DecorationImage(image : ExactAssetImage('assets/images/bg.png'),
                   fit: BoxFit.cover)
             ),
             child: Center(
               child: Column(
                 children: <Widget>[
                   Text(" title "),
                   Text("description ")
                 ],
               ),
             ),
           )
        ],
      ),
    );
  }
}
