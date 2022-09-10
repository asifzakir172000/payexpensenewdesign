import 'package:bottomnavigation/dash2.dart';
import 'package:bottomnavigation/report_details.dart';
import 'package:flutter/material.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:bottomnavigation/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ApproveScreen extends StatefulWidget {
  const ApproveScreen ({Key? key}) : super(key: key);

  @override
  State<ApproveScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ApproveScreen> {

  getItem(){
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              stops: [0.02, 0.02],
              colors: [Colors.redAccent, Colors.white]
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: .5,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 15.0,top: 15.0, bottom: 15.0, right: 10.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFD55C),
                    shape: BoxShape.circle,
                  ),
                  // margin: EdgeInsets.all(8),
                  child: Container(margin: const EdgeInsets.all(5), child: SvgPicture.asset("assets/images/Vector.svg", height: 10,)),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Asif Shaikh",
                        maxLines: 2,
                        style: R14M.copyWith(
                          color: LinkColor.withOpacity(0.7),),),
                      const SizedBox(height: 2),
                      Text("Asif Shaikh ansjcjbxjkcbzjbxcuiszjcbjsbjbzdklcnjnzxjncxjkbkjn",
                          maxLines: 2,
                          style: R14M.copyWith(color: KCOLOR_PRIMARY)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Period: 80-Sep-2022 to 10-Sep-2022",
                        style: R14R.copyWith(color: KCOLOR_PRIMARY),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Status",
                    style: R14R.copyWith(color: Colors.redAccent, fontWeight: FontWeight.w900,),
                  ),),
              ],
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: WillPopScope(
          onWillPop: () async => false,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dashboard",
                      style: FK22SB.copyWith(color: TextPrimary),
                    ),
                    Row(
                      children: [
                        FlutterSwitch(
                          height: 22,
                          width: 45,
                          padding: 3,
                          toggleSize: 15,
                          value: true,
                          toggleColor: TextPrimary,
                          inactiveColor: Colors.white,
                          activeColor: Colors.white,
                          switchBorder: Border.all(
                            color: TextPrimary,
                            width: 1.0,
                          ),
                          onToggle: (newVal) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MyDashBoard2()),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(Icons.group, color: TextPrimary,),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),

                //search
                Container(
                  height: 45,
                  decoration: const BoxDecoration(
                      color: KDIVIDER_COLOR,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                    child: TextField(
                      cursorHeight: 22,
                      autofocus: false,
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.left,
                      onEditingComplete: (){

                      },
                      onSubmitted: (value){

                      },
                      decoration: InputDecoration(
                        prefixIconConstraints: const BoxConstraints(maxWidth: 40) ,
                        border: InputBorder.none,
                        prefixIcon:Padding(
                            padding: const EdgeInsets.only(left: 16,right: 9,bottom: 4),
                            child:
                            SvgPicture.asset(
                              "assets/images/search.svg",
                              color: GREY_COLOR,
                              height: 20,
                              width: 20,
                            )
                          // Icon(
                          //   Icons.search,
                          //   color: GREY_COLOR,
                          //   size: 22,
                          // ),
                        ),
                        // contentPadding: EdgeInsets.only(top: 0),
                        hintText: "Search",
                        filled: true,
                        fillColor: KDIVIDER_COLOR,
                        hintStyle: R14R.copyWith(color: GREY_COLOR),
                      ),

                    ),


                  ),
                ),
                const SizedBox(
                  height: 14,
                ),

                //List Data
                SizedBox(
                  height: MediaQuery.of(context).size.height * .74,
                  child: ListView.builder(
                      primary: false,
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: getItem(),
                            onTap: () {
                              search.unfocus();
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ReportDetails()),
                              );
                            },
                          ),
                        );
                      }),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
