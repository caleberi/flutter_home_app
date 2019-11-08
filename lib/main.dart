import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common/colors.dart';
//import 'pages/LandingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home:Home(),

    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: greyColor,
                        ),
                        onTap: (){},
                        splashColor: paleDotColor,

                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Details",
                            style: TextStyle(
                              fontSize: 18,
//                              fontFamily: 'Roboto',
                              color:Colors.black54,
                            ),
                          ),
                        ) ,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 350,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height:200,
                                child: ColoredDots()
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Octave Smith",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF6F7482)
                                ),
                              ),
                              Text(
                                "2,3km Away",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF6F7482)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          // create a custom buttom that takes in color,icon
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
      ),
    );
  }
}


class  ColoredDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        PositionedCustomDot(color:Colors.redAccent,left: 90,top: 60,),
        PositionedCustomDot(color:Colors.redAccent,left: 90,top: 100,),
        PositionedCustomDot(color:Colors.redAccent,left: 60,top: 90,),
        PositionedCustomDot(color:cyanDot,left: 60,top: 90,),
        PositionedCustomDot(color:cyanDot,left: 80,top: 150,),
        PositionedCustomDot(color:blueDot,left: 40,top: 20,),
        PositionedCustomDot(color:blueDot,left: 20,top: 130,),
        // ==>  right Painting   <==
        PositionedCustomDot(color:redDot,right: 80,top: 30,),
        PositionedCustomDot(color:Colors.redAccent,right: 80,top: 30,),
        PositionedCustomDot(color:cyanDot,right: 60,top:90,),
        PositionedCustomDot(color:cyanDot,right: 80,top:150,),
        PositionedCustomDot(color:blueDot,right: 20,top:40,),
        PositionedCustomDot(color:blueDot,right: 20,top:130,),
        Positioned(
          top: 35,
          left:MediaQuery.of(context).size.width * 0.3,
          child: ClipOval(
            clipper: MusicAlbumProfile(),
            child: Container(
                  height: 145,
              width: 145,
              child: Image.asset(
                'images/ui.png',
                fit: BoxFit.fill,
              ),
              color:paleBrown,
            ),
          ),
        ),
        // use a container  custom design ui

      ],
    );
  }
}


class CircleClipper extends CustomClipper<Rect>{

  @override
  Rect getClip(Size size) {
    final Offset radius = Offset(size.width*0.5,size.height*0.5);
    return Rect.fromCenter(center: radius,width:size.width,height:size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return oldClipper != null;
  }

}

class MusicAlbumProfile extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
    final Offset radius = Offset(size.width*0.5,size.height*0.5);
    return Rect.fromCenter(center: radius,width:size.width,height:size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return oldClipper != null;
  }
}

class PositionedCustomDot  extends StatelessWidget{
  final Color color;
  final double top ;
  final double left;
  final double right;
  final double bottom;

  PositionedCustomDot({
    @required this.color,
    this.top,
    this.left,
    this.right,
    this.bottom
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: ClipOval(
        clipper: CircleClipper(),
        child: Container(
          height: 8,
          width: 8,
          color: color,
        ),
      ),
    );
  }


}