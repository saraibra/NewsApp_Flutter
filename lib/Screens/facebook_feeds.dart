import 'package:flutter/material.dart';
import 'package:flutter_app3/shared_ui/NavigationDrawer.dart';
class FacebookFeeds extends StatefulWidget {
  @override
  _FacebookFeedsState createState() => _FacebookFeedsState();
}

class _FacebookFeedsState extends State<FacebookFeeds> {
  TextStyle _hashTagStyle = TextStyle(
    color: Colors.orange,
  );
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Feeds'),
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
        padding: EdgeInsets.all(8),
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _drawHeader(),
                  _drawTitle(),
                  _drawHashTags(),
                  _drawBody(),
                  _drawFooter(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
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
                Text(
                  'Christina Meyers',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '@ch_meyers',
                  style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.grey,
            ),
            Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  '25',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ))
          ],
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 16, right: 16),
      child: Text(
        'We also talk about the future of work as the robots',
        style: TextStyle(color: Colors.grey.shade900),
      ),
    );
  }

  Widget _drawBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image(
        image: ExactAssetImage('assets/images/pc.png'),
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _drawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          child: Text(
            '10 COMMENTS',
            style: _hashTagStyle,
          ),
          onPressed: () {},
        ),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text(
                'SHARE',
                style: _hashTagStyle,
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Text(
                'OPEN',
                style: _hashTagStyle,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _drawHashTags() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
            child: Text(
              '#advance',
              style: _hashTagStyle,
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              '#advance',
              style: _hashTagStyle,
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              '#advance',
              style: _hashTagStyle,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
