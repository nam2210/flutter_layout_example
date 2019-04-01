import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title = '';

  HomePage({@required String title}) : assert(title != null);

  //Image section
  Widget _buildImageSection() {
    return Expanded(
        child: Image.asset('assets/images/vietnamese-girls-ft.jpg',
             width: 600,
             height: 100, fit: BoxFit.cover)); //replace path
  }

  //title section
  Widget _buildTitleSection() {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Oeschinen lake Campground',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(color: Colors.grey[10]),
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              size: 24,
              color: Colors.red[500],
            ),
            Text('41'),
          ]),
    );
  }

  //button section
  Widget _buildButtonColumn(IconData icon, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 24,
          color: Colors.blue,
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blue),
          ),
        )
      ],
    );
  }

  Widget _buildButtonSection() {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildButtonColumn(Icons.call, 'CALL'),
            _buildButtonColumn(Icons.navigation, 'ROUTE'),
            _buildButtonColumn(Icons.share, 'SHARE'),
          ]),
    );
  }

  //text section
  Widget _buildTextSection() {
    return Container(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          _buildImageSection(),
          _buildTitleSection(),
          _buildButtonSection(),
          _buildTextSection()
        ],
      ),
    );
  }
}
