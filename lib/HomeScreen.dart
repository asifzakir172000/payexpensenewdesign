import 'package:bottomnavigation/dash.dart';
import 'package:flutter/material.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:bottomnavigation/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  getGraph({color, percentage, text, title}){
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: color,
              style: BorderStyle.solid,
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: CircularPercentIndicator(
            radius: 40.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 10.0,
            percent: percentage,
            center: Text(
              text,
              style: FK22SB.copyWith(color: TextPrimary),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.white,
            progressColor: color,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            title,
            style: FK14M.copyWith(color: TextPrimary),
          ),
        ),
      ],
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
                          value: false,
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
                              MaterialPageRoute(builder: (context) => const ManagerBottomBar()),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(Icons.account_circle_rounded, color: TextPrimary,),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 16, 12, 8),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      decoration: const BoxDecoration(
                        color: KCOLOR_SHADOW,
                        shape: BoxShape.circle,
                      ),
                      // margin: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "AS",
                          style: FK18B.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Asif Shaikh",
                              style:
                              FK18B.copyWith(color: KCOLOR_PRIMARY),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            SvgPicture.asset(
                              "assets/images/patch-check-fill.svg",
                              color: TextPrimary2,
                              width: 16,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "iamshaikhasif@gmail.com",
                          style: R14R.copyWith(
                              color: KCOLOR_PRIMARY.withOpacity(0.8)),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Statistics",
                        style: FK17SB.copyWith(
                            color: KCOLOR_PRIMARY)),
                    Text(
                      "1-Sep-2022 to 9-Sep-2022",
                      style: R14M.copyWith(
                          color: KCOLOR_PRIMARY.withOpacity(0.8)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                
                // GridView.builder(
                //   shrinkWrap: true,
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,
                //       crossAxisSpacing: 10.0,
                //       mainAxisSpacing: 10.0
                //   ),
                //   itemCount: 5,
                //   itemBuilder: (BuildContext context, int index){
                //     return getGraph(color: THEME_GREEN, percentage: 0.4, text: "40");
                //   },
                // ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getGraph(color: THEME_GREEN, percentage: 0.4, text: "40", title: "Submitted"),
                    getGraph(color: TextPrimary, percentage: 0.8, text: "80", title: "Draft"),
                    getGraph(color: Colors.blueAccent, percentage: 0.4, text: "30", title: "Accepted"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getGraph(color: Colors.redAccent, percentage: 0.4, text: "70", title: "SentBack"),
                    getGraph(color: KDIVIDER_COLOR, percentage: 0.8, text: "50", title: "Discarded"),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
