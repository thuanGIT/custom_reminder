import 'package:flutter/material.dart';
import 'package:mom_reminder/settings.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MenuState();
  }
}

class MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.menu),
          onTap: () {
            print("click menu");
          },
        ),
        elevation: 5,
        backgroundColor: Colors.blueGrey[700],
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          'Dashboard',
          style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w700,
              fontSize: 20.0),
        ),
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.search),
            onTap: () {
              print("click search");
            },
          ),
          SizedBox(width: 10),
          InkWell(
            child: Icon(Icons.more_vert),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingPage(),
                ),
              );
            },
          ),
          SizedBox(width: 20)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
