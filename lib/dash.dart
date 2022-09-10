
import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/approve.dart';
import 'package:bottomnavigation/select%20_expense_type.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

class ManagerBottomBar extends StatefulWidget {
  const ManagerBottomBar({Key? key}) : super(key: key);


  @override
  _ManagerBottomBarState createState() => _ManagerBottomBarState();
}

class _ManagerBottomBarState extends State<ManagerBottomBar> {
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
      MaterialPageRoute(builder: (context) => ExpenseType(titleText: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ExpenseType(titleText: "New Delegate")),
            );
          },
          backgroundColor: TextPrimary,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return BubbleBottomBar(
      opacity: .2,
      hasNotch: true,
      currentIndex: _currentIndex,
      fabLocation: BubbleBottomBarFabLocation.end,
      onTap: changePage,
      elevation: 8,
      items: const <BubbleBottomBarItem>[
        BubbleBottomBarItem(
          backgroundColor: TextPrimary2,
          icon: Icon(
            Icons.home,
            color: TextPrimary,
            size: 22,
          ),
          activeIcon: Icon(
            Icons.home,
            color: TextPrimary2,
            size: 22,
          ),
          title: Text("Dashboard"),
        ),
        BubbleBottomBarItem(
          backgroundColor: THEME_GREEN,
          icon: Icon(
            Icons.person,
            color: TextPrimary2,
            size: 22,
          ),
          activeIcon: Icon(
            Icons.person,
            color: THEME_GREEN,
            size: 22,
          ),
          title: Text("My Expenses"),
        ),
      ],
    );
  }


  Widget getBody() {
    List<Widget> pages = [
      const ApproveScreen(),
     Center(child: Text("Home2", style: FK18B.copyWith(color: Colors.blue),)),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }


}