
import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/HomeScreen.dart';
import 'package:bottomnavigation/ListScreen.dart';
import 'package:bottomnavigation/account_details.dart';
import 'package:bottomnavigation/pageTrans.dart';
import 'package:bottomnavigation/select%20_expense_type.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MyDashBoard2 extends StatefulWidget {
  const MyDashBoard2({Key? key}) : super(key: key);


  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard2> {
  int? _currentIndex;

  void changePage(int? index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  gotoExpenseType({title}){
    Navigator.push(
      context,
      PageTransitionSlide(ExpenseType(titleText: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getBody(),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.add_event,
          backgroundColor: TextPrimary2,
          overlayColor: Colors.black,
          overlayOpacity: .4,
          spaceBetweenChildren: 8,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.directions_run),
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              label: 'Regular 1',
              onTap: () => gotoExpenseType(title: "Regular 1"),
            ),
            SpeedDialChild(
              child: const Icon(Icons.directions_bike),
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              label: 'Business',
              onTap: () => gotoExpenseType(title: "Business"),
            ),
            SpeedDialChild(
              child: const Icon(Icons.directions_walk),
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow,
              label: 'Regular',
              onTap: () => gotoExpenseType(title: "Regular"),
            ),
            SpeedDialChild(
              child: const Icon(Icons.directions_run),
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              label: 'Travel',
              onTap: () => gotoExpenseType(title: "Travel"),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return BubbleBottomBar(
      hasNotch: true,
      fabLocation: BubbleBottomBarFabLocation.end,
      opacity: .2,
      currentIndex: _currentIndex,
      onTap: changePage,
      elevation: 8,
      items: const <BubbleBottomBarItem>[
        BubbleBottomBarItem(
            backgroundColor: TextPrimary2,
            icon: Icon(
              Icons.dashboard,
              color: TextPrimary,
              size: 22,
            ),
            activeIcon: Icon(
              Icons.dashboard,
              color: TextPrimary2,
              size: 22,
            ),
            title: Text("Dashboard"),
        ),
        BubbleBottomBarItem(
            backgroundColor: THEME_GREEN,
            icon: Icon(
              Icons.list_alt_outlined,
              color: TextPrimary2,
              size: 22,
            ),
            activeIcon: Icon(
              Icons.list_alt_outlined,
              color: THEME_GREEN,
              size: 22,
            ),
            title: Text("My Expenses"),
        ),
        BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.person,
              color: TextPrimary2,
              size: 22,
            ),
            activeIcon: Icon(
              Icons.person,
              color: Colors.blue,
              size: 22,
            ),
            title: Text("Profile"),
        ),
      ],
    );
  }


  Widget getBody() {
    List<Widget> pages = [
      const HomeScreen(),
      const ListScreen(),
      const AccountDetails(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }


}