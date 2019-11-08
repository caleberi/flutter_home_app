import 'package:flutter/material.dart';
//import 'package:flutter/animation.dart';
import '../common/colors.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          SizedBox(height:40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Artists',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '7 artists has been found',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: greyColor,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  child: Icon(
                    Icons.tune,
                    color: greyColor,
                    size: 30,
                  ),
                  onTap: (){},
                ),
              ],
            ),
          ),
          SizedBox(height:20),
          Container(
            height: 380,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
              children:<Widget>[
                GestureDetector(
                    child: CustomMusicImageSlide(left: 30,right: 0.0,imageName: "images/ui.png",),
                  onTap: (){},
                ),
                CustomMusicImageSlide(left: 5,right: 5,imageName: "images/ui.png",),
                CustomMusicImageSlide(left:5,right: 5,imageName: "images/ui.png",),
                CustomMusicImageSlide(left:5,right: 5,imageName: "images/ui.png",),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.library_music,
                color: greyColor,
              ),
              Icon(
                Icons.explore,
                color: greyColor,
              ),
              Container(
                  child: Stack(
                    children: <Widget>[
                      Icon(
                        Icons.chat_bubble,
                        color: greyColor,
                      ),
                    ],
                  )
              ),
              Icon(
                Icons.person_outline,
                color: greyColor,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 20,
        ),
        backgroundColor:paleDotColor,
      ),
    );
  }
}


class  CustomMusicImageSlide extends StatefulWidget {
  CustomMusicImageSlide({Key key, @required this.imageName, this.right, this.left,}):super(key:key);
  final double right ;
  final String imageName;
  final double left ;

  EdgeInsets padd(double right, double left){
    return  EdgeInsets.only(left:left,right: right);
  }

  @override
  _CustomMusicImageSlideState createState() => _CustomMusicImageSlideState();
}

class _CustomMusicImageSlideState extends State<CustomMusicImageSlide>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padd(widget.right, widget.left),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
          width: 300,
          child:  Image.asset(
            widget.imageName,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}





