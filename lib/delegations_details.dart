import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:flutter/material.dart';

class DelegationDetails extends StatefulWidget {
  const DelegationDetails({Key? key}) : super(key: key);

  @override
  State<DelegationDetails> createState() => _MyDelegationState();
}

class _MyDelegationState extends State<DelegationDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async => true,
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.arrow_back_ios, color: TextPrimary, size: 18,),
                        Text(
                          "Delegation Details",
                          style: FK22SB.copyWith(color: TextPrimary),
                        ),
                      ],
                    ),
                    Text(
                      "Deactivate",
                      style: FK18M.copyWith(color: LinkColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                Text(
                  "From Approve",
                  style: FK18M.copyWith(color: TextPrimary),
                ),
                Text(
                  "asif.zakir@aiolos.solutions",
                  style: R16M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                ),

                const SizedBox(
                  height: 24,
                ),

                Text(
                  "To Approve",
                  style: FK18M.copyWith(color: TextPrimary),
                ),
                Text(
                  "asif.amjar@aiolos.solutions",
                  style: R16M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                ),

                const SizedBox(
                  height: 24,
                ),

                Text(
                  "Start Date",
                  style: FK18M.copyWith(color: TextPrimary),
                ),
                Text(
                  "08-Sep-2022",
                  style: R16M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                ),

                const SizedBox(
                  height: 24,
                ),

                Text(
                  "End Date",
                  style: FK18M.copyWith(color: TextPrimary),
                ),
                Text(
                  "10-Sep-2022",
                  style: R16M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                ),

                const SizedBox(
                  height: 24,
                ),

                Text(
                  "Assign Unapproved",
                  style: FK18M.copyWith(color: TextPrimary),
                ),
                Text(
                  "No",
                  style: R16M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 24,
                ),

                Text(
                  "Remarks",
                  style: FK18M.copyWith(color: TextPrimary),
                ),
                Text(
                  "test",
                  style: R16M.copyWith(color: GREY_COLOR, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 24,
                ),

                Text(
                  "Status",
                  style: FK18M.copyWith(color: TextPrimary),
                ),
                Text(
                  "Frozen",
                  style: R16M.copyWith(color: Colors.redAccent, fontWeight: FontWeight.w400),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
