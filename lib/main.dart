import 'package:flutter/material.dart';
import 'common/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home:Home() ,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child:Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(height:40),
                      Icon(
                        Icons.arrow_back,
                        color:iconsTheme,
                        size: 24.0,
                      ),
                    Icon(
                      Icons.more_horiz,
                      color:iconsTheme,
                      size:24.0,
                    )
                  ],
                ),
              ],
            )
          ),
          Expanded(
            child:Container()
          ),
        ],
      ),
    );
  }
}
