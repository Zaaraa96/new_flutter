import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'picture.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
  Color colour = Colors.white;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
//      if (colour == Colors.purple) {
//        colour = Colors.blueGrey;
//      } else {
//        colour = Colors.purple;
//      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Picture> pictures = [
      Picture(url: 'assets/images/ax.jpg', width: 170, height: 250),
      Picture(url: 'assets/images/ax2.jpg', width: 170, height: 150),
      Picture(url: 'assets/images/ax3.jpg', width: 170, height: 150),
      Picture(url: 'assets/images/ax4.jpg', width: 170, height: 150),
    ];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
      body: SafeArea(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
            color: colour,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                // Column is also a layout widget. It takes a list of children and
                // arranges them vertically. By default, it sizes itself to fit its
                // children horizontally, and tries to be as tall as its parent.
                //
                // Invoke "debug painting" (press "p" in the console, choose the
                // "Toggle Debug Paint" action from the Flutter Inspector in Android
                // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                // to see the wireframe for each widget.
                //
                // Column has various properties to control how it sizes itself and
                // how it positions its children. Here we use mainAxisAlignment to
                // center the children vertically; the main axis here is the vertical
                // axis because Columns are vertical (the cross axis would be
                // horizontal).
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Icon(
                          Icons.keyboard_return,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Icon(
                          Icons.toc,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Zahra Ahmadi',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Text(
                                'web developer',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.blueGrey),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: Container(
                                    height: 30,
                                    child: FlatButton(
                                      onPressed: () {},
                                      padding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(18.0),
                                          side:
                                              BorderSide(color: Colors.white)),
                                      color: Colors.blue,
                                      textColor: Colors.white,
                                      child: Text(
                                        "Follow",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 55,
                                  height: 30,
                                  child: FlatButton(
                                    onPressed: () {},
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0),
                                        side: BorderSide(color: Colors.white)),
                                    color: Colors.cyan.shade300,
                                    textColor: Colors.white,
                                    child: Icon(Icons.forward, size: 20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '200',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text(
                              'photos',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.blueGrey),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '15K',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text(
                              'followers',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.blueGrey),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '654',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text(
                              'followings',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
//                  Expanded(
//                    child: StaggeredGridView.countBuilder(
//                      crossAxisCount: 4,
//                      itemCount: 8,
//                      itemBuilder: (BuildContext context, int index) =>
//                          new Container(
//                              color: Colors.green,
//                              child: new Center(
//                                child: new CircleAvatar(
//                                  backgroundColor: Colors.white,
//                                  child: new Text('$index'),
//                                ),
//                              )),
//                      staggeredTileBuilder: (int index) =>
//                          new StaggeredTile.count(2, index.isEven ? 2 : 1),
//                      mainAxisSpacing: 4.0,
//                      crossAxisSpacing: 4.0,
//                    ),
//                  ),
                  Expanded(
                    child: StaggeredGridView.countBuilder(
                      padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10, 0),
                      crossAxisCount: 2,
                      itemCount: pictures.length,
                      staggeredTileBuilder: (int i) {
                        double ratio = pictures[i].height / pictures[i].width;
                        return new StaggeredTile.count(1, ratio);
                      },
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      itemBuilder: (ctx, i) => Container(
                        width: pictures[i].width,
                        height: pictures[i].height,
                        //child: Image.asset(pictures[i].url),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(pictures[i].url),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          border: Border(
                            left: BorderSide(
                              color: Colors.white,
                              width: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
//                  GridView(
//                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                      maxCrossAxisExtent: 170,
//                      mainAxisSpacing: 10,
//                      crossAxisSpacing: 10,
//                    ),
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 0),
//                        child: Container(
////                          width: 170,
////                          height: 200,
//                          decoration: BoxDecoration(
//                            image: DecorationImage(
//                              image: AssetImage(),
//                              fit: BoxFit.cover,
//                            ),
//                            borderRadius: BorderRadius.circular(20),
//                            border: Border(
//                              left: BorderSide(
//                                color: Colors.white,
//                                width: 10,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 10, 0),
//                        child: Container(
////                          height: 150,
////                          width: 170,
//                          constraints: BoxConstraints(minWidth: 150),
//                          decoration: BoxDecoration(
//                            image: DecorationImage(
//                              image: AssetImage(),
//                              fit: BoxFit.cover,
//                            ),
//                            borderRadius: BorderRadius.circular(20),
//                            border: Border(
//                              left: BorderSide(
//                                color: Colors.white,
//                                width: 10,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
//                        child: Container(
////                          width: 170,
////                          height: 150,
//                          constraints: BoxConstraints(minWidth: 150),
//                          decoration: BoxDecoration(
//                            image: DecorationImage(
//                              image: AssetImage('assets/images/ax3.jpg'),
//                              fit: BoxFit.cover,
//                            ),
//                            borderRadius: BorderRadius.circular(20),
//                            border: Border(
//                              left: BorderSide(
//                                color: Colors.white,
//                                width: 10,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
//                        child: Container(
////                          height: 150,
////                          width: 170,
//                          constraints: BoxConstraints(minWidth: 150),
//                          decoration: BoxDecoration(
//                            image: DecorationImage(
//                              image: AssetImage('assets/images/ax4.jpg'),
//                              fit: BoxFit.cover,
//                            ),
//                            borderRadius: BorderRadius.circular(20),
//                            border: Border(
//                              left: BorderSide(
//                                color: Colors.white,
//                                width: 10,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
////                  Row(
////                    crossAxisAlignment: CrossAxisAlignment.start,
////                    mainAxisAlignment: MainAxisAlignment.center,
////                    children: <Widget>[
////                      Column(
////                        children: <Widget>[
////                          Padding(
////                            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 0),
////                            child: Container(
////                              width: 170,
////                              height: 200,
////                              decoration: BoxDecoration(
////                                image: DecorationImage(
////                                  image: AssetImage('assets/images/ax.jpg'),
////                                  fit: BoxFit.cover,
////                                ),
////                                borderRadius: BorderRadius.circular(20),
////                                border: Border(
////                                  left: BorderSide(
////                                    color: Colors.white,
////                                    width: 10,
////                                  ),
////                                ),
////                              ),
////                            ),
////                          ),
////                          Padding(
////                            padding:
////                                const EdgeInsets.fromLTRB(0.0, 10.0, 10, 0),
////                            child: Container(
////                              height: 150,
////                              width: 170,
////                              constraints: BoxConstraints(minWidth: 150),
////                              decoration: BoxDecoration(
////                                image: DecorationImage(
////                                  image: AssetImage('assets/images/ax2.jpg'),
////                                  fit: BoxFit.cover,
////                                ),
////                                borderRadius: BorderRadius.circular(20),
////                                border: Border(
////                                  left: BorderSide(
////                                    color: Colors.white,
////                                    width: 10,
////                                  ),
////                                ),
////                              ),
////                            ),
////                          ),
////                        ],
////                      ),
////                      Column(
////                        children: <Widget>[
////                          Padding(
////                            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
////                            child: Container(
////                              width: 170,
////                              height: 150,
////                              constraints: BoxConstraints(minWidth: 150),
////                              decoration: BoxDecoration(
////                                image: DecorationImage(
////                                  image: AssetImage('assets/images/ax3.jpg'),
////                                  fit: BoxFit.cover,
////                                ),
////                                borderRadius: BorderRadius.circular(20),
////                                border: Border(
////                                  left: BorderSide(
////                                    color: Colors.white,
////                                    width: 10,
////                                  ),
////                                ),
////                              ),
////                            ),
////                          ),
////                          Padding(
////                            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
////                            child: Container(
////                              height: 150,
////                              width: 170,
////                              constraints: BoxConstraints(minWidth: 150),
////                              decoration: BoxDecoration(
////                                image: DecorationImage(
////                                  image: AssetImage('assets/images/ax4.jpg'),
////                                  fit: BoxFit.cover,
////                                ),
////                                borderRadius: BorderRadius.circular(20),
////                                border: Border(
////                                  left: BorderSide(
////                                    color: Colors.white,
////                                    width: 10,
////                                  ),
////                                ),
////                              ),
////                            ),
////                          ),
////                        ],
////                      ),
////                    ],
////                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                        child: Icon(
                          Icons.phonelink_ring,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                        child: Icon(
                          Icons.people_outline,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
