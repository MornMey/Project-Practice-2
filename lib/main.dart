import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'OPEN'),
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
  int _currentIndex = 0;

  get mainAxisAlignment => null;

  get controller => null;

  get statusBarHeight => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.1,
        title: Text(
          "OPEN",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.layers),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: CircleAvatar(
          child: IconButton(
            onPressed: () => _onBottomPressed(context),
            icon: Icon(
              Icons.add_a_photo,
              color: Colors.black,
            ),
          ),
          radius: 50,
          backgroundColor: Colors.black.withOpacity(0.1),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(),
            // ignore: deprecated_member_use
            title: Text(
              'Styles',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(),
            // ignore: deprecated_member_use
            title: Text(
              'Tools',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(),
            // ignore: deprecated_member_use
            title: Text(
              'Export',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _onBottomPressed(context);
            _currentIndex = index;
          });
        },
      ),
    );
  }

  void _onBottomPressed(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              children: <Widget>[
                Container(
                  child: Column(
                    children: [Icon(Icons.tune), Text("Tune Image")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.change_history), Text("Details")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.star_rate), Text("Curves")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.exposure), Text("White balance")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.crop), Text("Crop")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.rotate_90_degrees_ccw),
                      Text("Rotate")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.crop_16_9), Text("Perspective")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.self_improvement), Text("Expand")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.radio_button_checked),
                      Text("Selective")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.brush), Text("Brush")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.healing), Text("Healing")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.filter_alt_outlined),
                      Text("HDR-scape")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.dialer_sip), Text("Glamour glow")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.filter_alt_outlined),
                      Text("Tonal constrast")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.filter_hdr_sharp), Text("Drama")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.filter_vintage), Text("Vintage")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.flip_camera_android),
                      Text("Grainy film")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.restore), Text("Retrolux")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.tune), Text("Grunge")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.filter_b_and_w),
                      Text("Black and white")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.tune), Text("Noir")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.face), Text("Portrait")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.tag_faces), Text("Head pose")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.blur_circular), Text("Lens Blur")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.circle), Text("Vignette")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.double_arrow_rounded),
                      Text("Double Exposure")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.text_fields), Text("Text")],
                  ),
                ),
                Container(
                  child: Column(
                    children: [Icon(Icons.filter_frames), Text("Frames")],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
