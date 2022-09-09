import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

class CustomNavBarWidget extends StatelessWidget {
  const CustomNavBarWidget({Key? key}) : super(key: key);
  final index = 0;

  changePage(){

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Title')),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
        bottomNavigationBar: BubbleBottomBar(
          opacity: .2,
          // currentIndex: currentIndex,
          // onTap: changePage,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          elevation: 8,
          fabLocation: BubbleBottomBarFabLocation.end, //new
          hasNotch: true, //new
          hasInk: true, //new, gives a cute ink effect
          inkColor: Colors.black12, //optional, uses theme color if not specified
          items: <BubbleBottomBarItem>[
            const BubbleBottomBarItem(backgroundColor: Colors.red, icon: Icon(Icons.dashboard, color: Colors.black,), activeIcon: Icon(Icons.dashboard, color: Colors.red,), title: Text("Home")),
            const BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.access_time, color: Colors.black,), activeIcon: Icon(Icons.access_time, color: Colors.deepPurple,), title: Text("Logs")),
            const BubbleBottomBarItem(backgroundColor: Colors.indigo, icon: Icon(Icons.folder_open, color: Colors.black,), activeIcon: Icon(Icons.folder_open, color: Colors.indigo,), title: Text("Folders")),
            ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
//
// class CustomNavBarWidget extends StatelessWidget {
//   final int? selectedIndex;
//   final List<PersistentBottomNavBarItem>? items;
//   final ValueChanged<int>? onItemSelected;
//
//   CustomNavBarWidget({
//     Key? key,
//     this.selectedIndex,
//     @required this.items,
//     this.onItemSelected,
//   });
//
//   Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
//     return Container(
//       alignment: Alignment.center,
//       height: kBottomNavigationBarHeight,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Flexible(
//             child: IconTheme(
//               data: IconThemeData(
//                   size: 26.0,
//                   color: isSelected
//                       ? (item.activeColorSecondary == null
//                       ? item.activeColorPrimary
//                       : item.activeColorSecondary)
//                       : item.inactiveColorPrimary == null
//                       ? item.activeColorPrimary
//                       : item.inactiveColorPrimary),
//               child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: Material(
//               type: MaterialType.transparency,
//               child: FittedBox(
//                   child: Text(
//                     item.title!,
//                     style: TextStyle(
//                         color: isSelected
//                             ? (item.activeColorSecondary == null
//                             ? item.activeColorPrimary
//                             : item.activeColorSecondary)
//                             : item.inactiveColorPrimary,
//                         fontWeight: FontWeight.w400,
//                         fontSize: 12.0),
//                   )),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Container(
//         width: double.infinity,
//         height: kBottomNavigationBarHeight,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: items!.map((item) {
//             int index = items!.indexOf(item);
//             return Flexible(
//               child: GestureDetector(
//                 onTap: () {
//                   this.onItemSelected!(index);
//                 },
//                 child: _buildItem(item, selectedIndex == index),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }