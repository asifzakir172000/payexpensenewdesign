import 'package:flutter/material.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:bottomnavigation/Colors.dart';

class ExpenseType extends StatefulWidget {
  final String titleText;
  const ExpenseType ({Key? key, required this.titleText}) : super(key: key);

  @override
  State<ExpenseType> createState() => _ExpenseTypeState();
}

class _ExpenseTypeState extends State<ExpenseType> {

  getItem(index){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.grey,
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Center(
          child: Text("Data$index", style: FK14M.copyWith(color: TextPrimary),),
      ),
    );
  }

  List<Color> color = [
    LinkColor,
    TextSeconday,
    GREY_COLOR,
    GREY_COLOR,
    Colors.red,
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: TextPrimary,
        body: WillPopScope(
          onWillPop: () async => true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(20.0),
                height: MediaQuery.of(context).size.width * .1,
                child: Row(
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20,),
                    ),
                    Text(
                      widget.titleText,
                      style: FK22SB.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),

              //List Data
              Expanded(child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                height: MediaQuery.of(context).size.height - 200,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20.0),
                  crossAxisCount: 2,
                  childAspectRatio: (1 / .4),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: getItem(index),
                    );
                  }),
                ),
              ),),

            ],
          ),
        ),
      ),
    );
  }
}

//
// class ArcClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     //Arranca desde la punta topLeft
//     Path path = Path();
//
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width * .03, size.height);
//     path.quadraticBezierTo(size.width * .2, size.height * .5, size.width * .03, 0);
//
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper old) => false;
// }
