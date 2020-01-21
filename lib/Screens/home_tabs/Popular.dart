import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: _drawSingleRaw(),
        );
      },
      itemCount: 20,
    );
  }

    Widget _drawSingleRaw() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            child: Image(
              image: ExactAssetImage('assets/images/pc.png'),
              fit: BoxFit.cover,
            ),
            width: 124,
            height: 124,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'The world global warming pla pla ',
                  maxLines: 2,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('data'),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Text('15 min'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

 
}
