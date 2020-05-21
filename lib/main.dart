import 'package:flutter/material.dart';
import 'package:hornet_vision_flutter/pages/ar_view.dart';
import 'package:hornet_vision_flutter/pages/calendar.dart';
import 'package:hornet_vision_flutter/pages/map_overview.dart';
import './pages/home.dart';
import './services/contants.dart';

void main() {
  runApp(MaterialApp(
    home: DefaultTabController(
      length: 3,
      child: HomePageLayout(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePageLayout extends StatefulWidget {
  @override
  _HomePageLayoutState createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> {
  List<Widget> pages = [
    Home(),
    Calendar(),
    MapOverView(),
    ArView(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Text('Item 1'),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Hornet Vision',
            style: kAppTitle,
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            Icon(
              Icons.ac_unit,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          color: Colors.white,
          child: new TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(Icons.calendar_today),
              ),
              Tab(
                icon: Icon(Icons.map),
              ),
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
            ],
            unselectedLabelColor: gray600,
            labelColor: gray900,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
