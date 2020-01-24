import 'package:flutter/material.dart';
import 'package:flutter_app3/shared_ui/NavigationDrawer.dart';

import 'home_tabs/Favourites.dart';
import 'home_tabs/Popular.dart';
import 'home_tabs/WhatsNews.dart';
class HeadlinesNews extends StatefulWidget {
  @override
  _HeadlinesNewsState createState() => _HeadlinesNewsState();
}

class _HeadlinesNewsState extends State<HeadlinesNews> 
 with SingleTickerProviderStateMixin {
   TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: "What's new",
            ),
            Tab(
              text: "Popular",
            ),
            Tab(
              text: "Favourites",
            ),
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(
          children: [
         Favourites(),
            Popular(),
            Favourites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  
  }
}