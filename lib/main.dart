import 'package:custom_icons_example/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Icons + Custom Icons';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(child: buildPages()),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Text('Icons'),
              title: Text('Normal'),
            ),
            BottomNavigationBarItem(
              icon: Text('Icons'),
              title: Text('Plugins'),
            ),
            BottomNavigationBarItem(
              icon: Text('Icons'),
              title: Text('Custom'),
            ),
          ],
          onTap: (int index) => setState(() => this.index = index),
        ),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return buildNormalIcons();
      case 1:
        return buildPluginIcons();
      case 2:
        return buildCustomIcons();
      default:
        return Container();
    }
  }

  Widget buildNormalIcons() => GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          IconButton(
            iconSize: 80,
            color: Colors.blue,
            icon: Icon(Icons.share),
            onPressed: () => print('Clicked on share'),
          ),
          Icon(Icons.favorite, color: Colors.pink, size: 80),
          Icon(Icons.favorite_border, color: Colors.pink, size: 80),
          Icon(Icons.check, color: Colors.green, size: 80),
          Icon(Icons.clear, color: Colors.white, size: 80),
          Icon(Icons.group, color: Colors.amber, size: 80),
          Icon(Icons.delete_forever, color: Colors.red, size: 80),
          Icon(Icons.search, color: Colors.white, size: 80),
          Icon(Icons.help, color: Colors.blue, size: 80),
          Icon(Icons.call, color: Colors.purple, size: 80),
          Icon(Icons.call_end, color: Colors.deepOrangeAccent, size: 80),
        ],
      );

  Widget buildPluginIcons() => GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Icon(FontAwesomeIcons.google, color: Colors.red, size: 80),
          Icon(FontAwesomeIcons.apple, color: Colors.white, size: 80),
          Icon(FontAwesomeIcons.facebookSquare, color: Colors.blue, size: 80),
          Icon(FontAwesomeIcons.snapchat, color: Colors.yellow, size: 80),
          Icon(FontAwesomeIcons.bahai, color: Colors.red, size: 80),
          Icon(FontAwesomeIcons.birthdayCake, color: Colors.orange, size: 80),
          Icon(FontAwesomeIcons.coins, color: Colors.yellow, size: 80),
          Icon(FontAwesomeIcons.coffee, color: Colors.brown, size: 80),
          Icon(FontAwesomeIcons.broom, color: Colors.pink, size: 80),
          Icon(FontAwesomeIcons.chessKnight, color: Colors.white, size: 80),
          Icon(FontAwesomeIcons.angleDoubleLeft, color: Colors.blue, size: 80),
          Icon(FontAwesomeIcons.angleDoubleRight, color: Colors.blue, size: 80),
        ],
      );

  Widget buildCustomIcons() => GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Icon(MyIcons.thumb_down, color: Colors.white, size: 80),
          Icon(MyIcons.thumb_up, color: Colors.white, size: 80),
        ],
      );
}
