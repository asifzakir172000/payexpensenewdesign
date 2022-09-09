import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/HomeScreen.dart';
import 'package:bottomnavigation/ListScreen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class ProvidedStylesExample extends StatefulWidget {
  final BuildContext menuScreenContext;
  const ProvidedStylesExample({Key? key, required this.menuScreenContext})
      : super(key: key);

  @override
  _ProvidedStylesExampleState createState() => _ProvidedStylesExampleState();
}

class _ProvidedStylesExampleState extends State<ProvidedStylesExample> with SingleTickerProviderStateMixin {
  PersistentTabController? _controller;
  // late AnimationController _animationController;
  // bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    // _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const ListScreen(),
      const Center(
        child: Text("Profile"),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        inactiveIcon: const Icon(
          Icons.home,
        ),
        activeColorSecondary: Colors.white,
        title: "Dashborad",
        activeColorPrimary: KICON_COLOR,
        inactiveColorPrimary: TextPrimary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.search),
        title: ("My Expenses"),
        inactiveIcon: const Icon(
          Icons.search,
        ),
        activeColorSecondary: Colors.white,
        activeColorPrimary: KCOLOR_SHADOW,
        inactiveColorPrimary: TextPrimary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: ("Profile"),
        inactiveIcon: const Icon(
          Icons.person,
        ),
        activeColorSecondary: Colors.white,
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: TextPrimary,
      ),
    ];
  }

  // void _handleOnPressed() {
  //   setState(() {
  //     isPlaying = !isPlaying;
  //     isPlaying
  //         ? _animationController.forward()
  //         : _animationController.reverse();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom > 0
              ? 0.0
              : kBottomNavigationBarHeight + 10,
        ),
        child: SpeedDial(
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        navBarStyle: NavBarStyle.style10,
        onItemSelected: (i) {
          FocusNode().unfocus();
        },// Choose the nav bar style with this property
      ),
    );
  }
}
