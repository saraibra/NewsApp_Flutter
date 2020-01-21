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
          _drawHeader(),
          _drawTopStories(),
        ],
      ),
    );
  }

  TextStyle _headerTitle = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  TextStyle _headerDescription = TextStyle(
    color: Colors.white,
    fontSize: 18,
  );
  Widget _drawTopStories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16, top: 16),
            child:  _drawSectionTitle('Top stories'),
           ),

            Padding(
            padding: EdgeInsets.all(8),
            child: Card(
              child: Column(
                children: <Widget>[
     _drawSingleRaw(),
      _drawDivider(),
      _drawSingleRaw(),
      _drawDivider(),
      _drawSingleRaw(),
                ],
                ),
                ),
                ),
              Padding(
               padding: EdgeInsets.all(8),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
 Padding(
   padding: const EdgeInsets.only(left :16.0,bottom: 8.0,top: 8.0),
   child: _drawSectionTitle('Recent updates'),
 ),
_drawRecentUpdatesCard(Colors.deepOrange),
_drawRecentUpdatesCard(Colors.teal),
SizedBox(height: 48,),
                 ],
               ),

 ),
        ],
      ),
    );
  }
  Widget _drawSectionTitle(String title){
  return Text(
              title,
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w800,
                  fontSize: 18),
            );
         
  }
  Widget _drawDivider(){
    return Container(
width: double.infinity,
height: 1,
color: Colors.grey.shade100,
    );
  }
Widget _drawSingleRaw(){
     return  Padding(
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
                        SizedBox(width: 16,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'The world global warming pla pla ',
                                maxLines: 2,
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
Widget _drawRecentUpdatesCard( Color color){
  return Card(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
   image: ExactAssetImage('assets/images/pc.png'),
   fit: BoxFit.fill
        )
      ),
    ),
    SizedBox(height: 16,),
    Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        padding:EdgeInsets.only(left: 24,right: 24,top: 4,bottom: 4),
        decoration: BoxDecoration(color: color,
        borderRadius: BorderRadius.circular(4)
        ),

child: Text('SPORTS' , style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
      ),
    ),
 Padding(
   padding: EdgeInsets.only(left :16 ,right: 16,top: 8),
   child: Text(
     'vettel is ferrai  jjjfij mkkk',
     style: TextStyle(fontWeight: FontWeight.w100,fontSize: 16),
   ),
   
 ),
 Padding(   padding: EdgeInsets.only(left :16 ,right: 16,top: 8,bottom: 16) ,


 child: Row(
children: <Widget>[

  Icon(Icons.timer,color: Colors.grey,size: 18,),
  SizedBox(width: 4,),
  Text('15 Min' ,style: TextStyle(color: Colors.grey,fontSize: 14),),

], ),
 )
 , 
  ],
),
  );

}
  Widget _drawHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height *0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/pc.png'),
              fit: BoxFit.fill)
              ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 48, right: 48),
                child: Text(
                  " title vvvvvvvvvvvvvvvvvvvvvvvv",
                  style: _headerTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.only(left: 34, right: 34),
                child: Text(
                  "descriptionmmmmmmmm gggggggggggg mmmmmmmmmmmmm fffffffffffffffff ",
                  style: _headerDescription,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
