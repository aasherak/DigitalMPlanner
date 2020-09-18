import 'package:flutter/material.dart';


class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

Color umichBlue = Color.fromRGBO(0, 39, 76, 0.99);
Color umichMaize = Color.fromRGBO(255, 203, 5, 0.99);

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                onTap: (){},
                child: Column(
                  children: [
                    Icon(IconData(57455, fontFamily: 'MaterialIcons', matchTextDirection: true),
                      color: umichMaize,
                    ),
                    Text('Notes', style: TextStyle(color: umichMaize))
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
