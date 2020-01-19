import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'HomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages ;
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);
  void _addPages(){
    pages =  List<PageModel>();
    pages.add(PageModel("welcome", "Making friends is easy fff kfjjhd", 'assets/images/bg.png',Icons.ac_unit));
    pages.add(PageModel("alarm", "Making friends is easy fff kfjjhd", 'assets/images/image.jpg',Icons.alarm));
    pages.add(PageModel("page", "Making friends is easy fff kfjjhd", 'assets/images/image2.jpg',Icons.pages));
    pages.add(PageModel("phone", "Making friends is easy fff kfjjhd", 'assets/images/image3.jpg',Icons.smartphone));
  }
  @override
  Widget build(BuildContext context) {
   _addPages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage(pages[index]._image),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index]._icon,
                          size: 150,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -50),
                      ),
                      Text(
                        pages[index]._title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 48, right: 48, top: 16),
                        child: Text(
                          pages[index]._description,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index){
              _pageViewNotifier.value = index;
            },
          ),
          Transform.translate(
              offset: Offset(0, 175),
            child: Align(
              alignment: Alignment.center,
              child: _displayPageIndicator(pages.length)
            ),

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0, left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  color: Colors.red.shade900,
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, letterSpacing: 1),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          // todo update seen
                          _updateSeen();
                         return HomeScreen();
                        }
                        )
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

Widget _displayPageIndicator(int length){
  return PageViewIndicator(
    pageIndexNotifier: _pageViewNotifier,
    length: length,
    normalBuilder: (animationController, index) => Circle(
      size: 8.0,
      color: Colors.grey,
    ),
    highlightedBuilder: (animationController, index) => ScaleTransition(
      scale: CurvedAnimation(
        parent: animationController,
        curve: Curves.ease,
      ),
      child: Circle(
        size: 12.0,
        color: Colors.red,
      ),
    ),
  );
}

void _updateSeen() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('seen', true);

}
}

class PageModel {
  String _title;

  String _description;
  String _image;

  IconData _icon;

  PageModel(this._title, this._description, this._image, this._icon);

  IconData get icon => _icon;

  String get image => _image;

  String get description => _description;

  String get title => _title;
}
