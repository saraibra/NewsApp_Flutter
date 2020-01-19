
import 'package:flutter/material.dart';
import 'package:flutter_app3/Screens/OnBoarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app3/Screens/HomeScreen.dart';
import 'package:flutter_app3/Style/Theme.dart';
main() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen ;
  if(seen == null|| seen == false){
_screen =OnBoarding();
  }
  else{
    _screen =HomeScreen();
  }
  runApp(NewsApp(_screen));
}
class NewsApp extends StatelessWidget {
 final Widget _screen ;
 NewsApp(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:AppTheme.appTheme,
      home:this._screen ,
    );
  }
}
