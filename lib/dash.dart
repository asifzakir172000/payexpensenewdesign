
import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/approve.dart';
import 'package:bottomnavigation/my_delegations.dart';
import 'package:bottomnavigation/new_delegation.dart';
import 'package:bottomnavigation/pageTrans.dart';
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
              PageTransitionSlide(const NewDelegation()),
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
            Icons.approval_outlined,
            color: TextPrimary,
            size: 22,
          ),
          activeIcon: Icon(
            Icons.approval_outlined,
            color: TextPrimary2,
            size: 22,
          ),
          title: Text("Approval"),
        ),
        BubbleBottomBarItem(
          backgroundColor: Colors.deepOrangeAccent,
          icon: Icon(
            Icons.approval_outlined,
            color: TextPrimary2,
            size: 22,
          ),
          activeIcon: Icon(
            Icons.approval_outlined,
            color: Colors.deepOrangeAccent,
            size: 22,
          ),
          title: Text("My Delegations"),
        ),
      ],
    );
  }


  Widget getBody() {
    List<Widget> pages = [
      const ApproveScreen(),
      const MyDelegation(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }


}