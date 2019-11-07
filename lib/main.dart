import 'package:flutter/material.dart';
import 'package:sample/fragement3.dart';
import 'package:sample/fragment1.dart';
import 'package:sample/fragment2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;
  int correntindex = 1;

  getcurrentindex() {
    switch (correntindex) {
      case 1:
        return MyfirstFrag();
        break;
      case 2:
        return MysecondFrag();
        break;
      case 3:
        return MythirdFrag();
        break;
    }
  }

  setcorrentindex(int index) {
    setState(() {
      correntindex = index;
    });
  }

  void increment() {
    setState(() {
      count = count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: new ThemeData(
          primaryColor: Colors.deepOrange, accentColor: Colors.green),
      home: new Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 40.0, left: 10.0),
                  color: Colors.lime,
                  height: 200.0,
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: 64.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Pravin Kumar",
                        style: TextStyle(
                            fontSize: 24.0,
                            wordSpacing: 2.0,
                            color: Colors.orange),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "pravin09dec@gmail.com",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic,
                            wordSpacing: 2.0,
                            color: Colors.white54),
                      )
                    ],
                  ),
                ),
                ListTile(
                  selected: true,
                  leading: Icon(Icons.add_call),
                  onTap: () {
                    setcorrentindex(1);
                  },
                  title: Text('Fragment 1'),
                  subtitle: Text('This is First Page'),
                ),
                ListTile(
                  leading: Icon(Icons.add_location),
                  onTap: () {
                    setcorrentindex(1);
                  },
                  title: Text('Fragment 2'),
                  subtitle: Text('This is Second Page'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.teal,
                  ),
                  onTap: () {
                    setcorrentindex(1);
                  },
                  title: Text('Fragment 3'),
                  subtitle: Text('This is Third Page'),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  title: Text("Search"), icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  title: Text("Location"),
                  icon: Icon(Icons.location_searching)),
            ],
          ),
          floatingActionButton: new FloatingActionButton(
            onPressed: increment,
            child: Icon(Icons.plus_one),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          appBar: new AppBar(
            title: new Text('Count'),
            centerTitle: true,
            elevation: 10.0,
            actions: <Widget>[],
          ),
          body: Container()),
    );
  }
}
