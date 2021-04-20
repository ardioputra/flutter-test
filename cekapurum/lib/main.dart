import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const int $deg = 0x00B0;

  Future<http.Response> fetchAlbum() {
    return http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
  }
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const int $deg = 0x00B0;
  Widget Temperature_section = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Temperature'
              , style :TextStyle(
              fontWeight: FontWeight.bold,
            )
            )
            ),Text(
              "Suhu yang ditangkap oleh sensor DHT 11", style: TextStyle(
              color: Colors.grey[500],
            )
            )],
        )), Icon(
         Icons.thermostat_outlined,
         color: Colors.grey[500]
        ), Text (' 41 C'),
      ],
    ),
  );

  Widget Humidity_section = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                    'Humidity'
                    , style :TextStyle(
                  fontWeight: FontWeight.bold,
                )
                )
            ),Text(
                "Kelembapan yang ditangkap oleh sensor DHT 11", style: TextStyle(
              color: Colors.grey[500],
            )
            )],
        )), Icon(
            Icons.water_damage_outlined,
            color: Colors.blue[500]
        ), Text (' 70 %'),
      ],
    ),
  );

  Widget Firesen_section = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                    'Fire Sensor'
                    , style :TextStyle(
                  fontWeight: FontWeight.bold,
                )
                )
            ),Text(
                "Semakin kecil nilainya semakin besar api yang menyambar (max:1024)", style: TextStyle(
              color: Colors.grey[500],
            )
            )],
        )), Icon(
            Icons.local_fire_department,
            color: Colors.red[500]
        ), Text (' 1024 units'),
      ],
    ),
  );

  Widget Status_section = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                    'Status'
                    , style :TextStyle(
                  fontWeight: FontWeight.bold,
                )
                )
            ),Text(
                "Apakah kebakaran?", style: TextStyle(
              color: Colors.grey[500],
            )
            )],
        )), Icon(
            Icons.warning,
            color: Colors.yellow[500]
        ), Text (' Aman'),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      title:'Cekapurum',
      home: Scaffold(
        appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Selamat Datang'),
      ),
        body: Column(
          children: [
            Temperature_section,
            Humidity_section,
            Firesen_section,
            Status_section
          ],

   // This trailing comma makes auto-formatting nicer for build methods.
    )
    )
    );
  }
}
