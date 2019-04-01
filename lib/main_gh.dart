import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Quotes',
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'The Quotes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(fontFamily: 'Playlist Script', fontSize: 30.0,),
        ),
      ),
      drawer: Drawer(
        child: ListView(
           children: <Widget>[
             DrawerHeader(
               child: Placeholder(color: Colors.black38, ),
             ),
             ListTile(title: Text("Home"),subtitle: Text("All things The Quotes"), trailing: Icon(Icons.home), onTap: () => {},),
             ListTile(title: Text("About"),subtitle: Text("Unknown about The Quotes"), trailing: Icon(Icons.info), onTap: () => {},),
           ]
            ,)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(child: Image(image: NetworkImage("https://picsum.photos/250?image=15",),),
            elevation: 15.0,
            borderRadius: BorderRadius.all(Radius.circular(2.5)),
            clipBehavior: Clip.antiAlias,
            type: MaterialType.card,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Text(
              "A language that doesn't have everything is actually easier to program in than some that do.",
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
            ),
            Text(
                '- Dennis Ritchie',
              style: TextStyle(fontFamily: "Playlist Script", fontSize: 20.0),
              ),
            SizedBox(height: 10,),
            Text(
              'Computer Scientist, Mathematician',
              style: TextStyle(shadows: [Shadow(color: Colors.red)], fontSize: 12.0, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
