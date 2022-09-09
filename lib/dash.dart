import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/HomeScreen.dart';
import 'package:bottomnavigation/ListScreen.dart';
import 'package:bottomnavigation/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class MyDashBoard extends StatefulWidget {

  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getBody(),
        floatingActionButton: SpeedDial(
          speedDialChildren: <SpeedDialChild>[
            SpeedDialChild(
              child: const Icon(Icons.directions_walk),
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow,
              label: 'Regular',
              onPressed: () {
                // setState(() {
                //   _text = 'You pressed "Let\'s go for a run!"';
                // });
                debugPrint("1");
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.directions_bike),
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              label: 'Business',
              onPressed: () {
                // setState(() {
                //   _text = 'You pressed "Let\'s go for a run!"';
                // });
                debugPrint("2");
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.directions_run),
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              label: 'Travel',
              onPressed: () {
                // setState(() {
                //   _text = 'You pressed "Let\'s go for a run!"';
                // });
                debugPrint("3");
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.directions_run),
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              label: 'Regular 1',
              onPressed: () {
                // setState(() {
                //   _text = 'You pressed "Let\'s go for a run!"';
                // });
                debugPrint("3");
              },
            ),
          ],
          closedForegroundColor: Colors.white,
          openForegroundColor: Colors.white,
          closedBackgroundColor: TextPrimary,
          openBackgroundColor: KCOLOR_SHADOW,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 15,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.green,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Users'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Messages ',
          ),
          activeColor: Colors.pink,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),

      ],
    );
  }


  Widget getBody() {
    List<Widget> pages = [
      const HomeScreen(),
      const ListScreen(),
      const Center(
        child: Text("Profile"),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }


}