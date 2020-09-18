import 'dart:ui';
import 'notes.dart';
import 'package:flutter/material.dart';




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Color umichBlue = Color.fromRGBO(0, 39, 76, 0.99);
Color umichMaize = Color.fromRGBO(255, 203, 5, 0.99);


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                height: 60,
                image: AssetImage('images/m.png'),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'University of Michigan',
                style: TextStyle(color: umichBlue, fontSize: 25),
              )

            ],
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/back.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: umichBlue,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Container(
                  width: 0.0,
                  height: 0.0,
                  child: Text("")),
                icon: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Notes()));
                  },
                  child: Column(
                    children: [
                      Icon(IconData(57455, fontFamily: 'MaterialIcons', matchTextDirection: true),
                        color: Colors.white,
                      ),
                      Text('Notes', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
            ),
            BottomNavigationBarItem(
              title: Container(
                  width: 0.0,
                  height: 0.0,
                  child: Text("")),
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notes()));
                },
                child: Column(
                  children: [
                    Icon(IconData(59701, fontFamily: 'MaterialIcons', matchTextDirection: true),
                      color: Colors.white,
                    ),
                    Text('Schedule', style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              title: Container(
                  width: 0.0,
                  height: 0.0,
                  child: Text("")),
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notes()));
                },
                child: Column(
                  children: [
                    Icon(IconData(59641, fontFamily: 'MaterialIcons', matchTextDirection: true),
                      color: Colors.white,
                    ),
                    Text('Tasks', style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              title: Container(
                  width: 0.0,
                  height: 0.0,
                  child: Text("")),
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notes()));
                },
                child: Column(
                  children: [
                    Icon(IconData(59576, fontFamily: 'MaterialIcons', matchTextDirection: true),
                      color: Colors.white,
                    ),
                    Text('Settings', style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



