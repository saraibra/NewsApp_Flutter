import 'dart:math';

import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> colorList = [
    Colors.red,
    Colors.teal,
    Colors.deepOrange,
    Colors.indigo,
    Colors.purple,
    Colors.brown,
  ];

  Random random = Random();
  Color _getRandomColor() {
    return colorList[random.nextInt(colorList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                _drawOuterRaw(),
                SizedBox(height: 16,),
                _newsItemRaw(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _drawOuterRaw() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/pc.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
              width: 50,
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Micheal Adams',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '15 Min .',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Life style',
                      style: TextStyle(color: _getRandomColor()),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          onPressed: () {},
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _newsItemRaw() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16),
          width: 124,
          height: 124,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/pc.png'),
                fit: BoxFit.fill),
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                'Tech Tent : Old phones and safe social',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'We also talk about the future of work as robots advance',
                style:
                    TextStyle(color: Colors.grey, fontSize: 16, height: 1.25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
