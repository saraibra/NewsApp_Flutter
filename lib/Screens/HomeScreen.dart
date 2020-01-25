import 'package:flutter/material.dart';
import 'package:flutter_app3/shared_ui/NavigationDrawer.dart';
import 'home_tabs/Popular.dart';
import 'home_tabs/Favourites.dart';
import 'home_tabs/WhatsNews.dart';
import 'package:flutter_app3/api/authors_api.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopOutMenu { HELP, ABOUT, CONTACT, SETTINGS }

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  AuthorsApi authorsApi = AuthorsApi();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // to remove resources to reduce memory
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    authorsApi.fetchAllAuthors();
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          _popOutMenu(context),
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
            WhatsNews(),
            Popular(),
            Favourites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget _popOutMenu(BuildContext context) {
    return PopupMenuButton<PopOutMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopOutMenu>(
            child: Text('ABOUT'),
            value: PopOutMenu.ABOUT,
          ),
             PopupMenuItem<PopOutMenu>(
            child: Text('CONTACT'),
            value: PopOutMenu.CONTACT,
          ),
             PopupMenuItem<PopOutMenu>(
            child: Text('HELP'),
            value: PopOutMenu.HELP,
          ),
             PopupMenuItem<PopOutMenu>(
            child: Text('SETTINGS'),
            value: PopOutMenu.SETTINGS,
          ),
        ];
      },
      onSelected: (PopOutMenu menu) {},
      icon: Icon(Icons.more_vert),
    );
  }
}
