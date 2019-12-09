import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    Text('Page 1', style: TextStyle(fontSize: 30.0)),
    Text(
      'Page 2',
      style: TextStyle(fontSize: 30.0),
    ),
    Text(
      'Page 3',
      style: TextStyle(fontSize: 30.0),
    ),
  ];
  void onTapedIndex(value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bottom NavigationBar'),
      ),
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        currentIndex: _currentIndex,
        iconSize: 25,
        onTap: (index) {
          onTapedIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('Mensagens')),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_device_information), title: Text('Devices'))
        ],
      ),
    );
  }
}
