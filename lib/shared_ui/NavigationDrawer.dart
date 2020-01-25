import 'package:flutter/material.dart';
import 'package:flutter_app3/Models/nav_menu.dart';
import 'package:flutter_app3/Screens/HomeScreen.dart';
import 'package:flutter_app3/Screens/facebook_feeds.dart';
import 'package:flutter_app3/Screens/headlines_news.dart';
import 'package:flutter_app3/Screens/instgram_feeds.dart';
import 'package:flutter_app3/Screens/twitter_feeds.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> navigationMenu = [
    NavMenuItem('Explore', () =>HomeScreen()),
    NavMenuItem('Headlines news',()=> HeadlinesNews()),
    NavMenuItem('Twitter feeds',()=> TwitterFeeds()),
    NavMenuItem('Instgram feeds',()=> InstgramFeeds()),
    NavMenuItem('Facebook feeds',()=> FacebookFeeds()),

  ];
  List<String> navMenu = [
    'Explore',
    'Headline news',
    'Read later',
    'Videos',
    'Photos',
    'Settings',
    'Logout'
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 75.0, left: 24),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  navigationMenu[position].title,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 22),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade400,
                ),
                onTap: () {
                   Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return 
                  navigationMenu[position].destination();
                  }));
                },
              ),
            );
          },
          itemCount: navigationMenu.length,
        ),
      ),
    );
  }
}
