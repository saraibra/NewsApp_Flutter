import 'package:flutter/material.dart';
import 'package:flutter_app3/shared_ui/NavigationDrawer.dart';

class TwitterFeeds extends StatefulWidget {
  @override
  _TwitterFeedsState createState() => _TwitterFeedsState();
}

class _TwitterFeedsState extends State<TwitterFeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feeds'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Card(
            child: Column(
              children: <Widget>[
                _cardHeader(),
                _cardBody(),
                _cardFooter(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _cardHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundColor: Colors.red.shade400,
            radius: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Christina Meyers',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  '@ch_meyers',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Fri,12 May 2017 - 14.30',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Text(
          'We also talk about the future of work as the robots advance ,and we ask whether a reto phone '),
    );
  }

  Widget _cardFooter() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.repeat),
            color: Colors.orange,
            onPressed: () {},
          ),
          Text('25'),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text(
                  'SHARE',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  'OPEN',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
