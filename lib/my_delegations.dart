import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/delegations_details.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:flutter/material.dart';

class MyDelegation extends StatefulWidget {
  const MyDelegation({Key? key}) : super(key: key);

  @override
  State<MyDelegation> createState() => _MyDelegationState();
}

class _MyDelegationState extends State<MyDelegation> {

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("asif.zakir@aiolos.solutions",
                          maxLines: 2,
                          style: R14M.copyWith(color: LinkColor.withOpacity(0.7))),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Period: 80-Sep-2022 to 10-Sep-2022",
                        style: R13M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 2,
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
                    "Frozen",
                    style: R14R.copyWith(color: Colors.redAccent, fontWeight: FontWeight.w500,),
                  ),),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Start Date: 08-Sep-2022",
                    style: R13M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "End Date: 10-Sep-2022",
                    style: R13M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
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
                Text(
                  "Delegations",
                  style: FK22SB.copyWith(color: TextPrimary),
                ),
                const SizedBox(
                  height: 24,
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
                              // search.unfocus();
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const DelegationDetails()),
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
