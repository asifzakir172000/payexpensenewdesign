import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  // This widget is the root of your application.
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
                  "Profile",
                  style: FK22SB.copyWith(color: TextPrimary),
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
                        Text(
                          "Asif Shaikh",
                          style:
                          FK18B.copyWith(color: KCOLOR_PRIMARY),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Vikhroli branch",
                          style: R14R.copyWith(
                              color: KCOLOR_PRIMARY.withOpacity(0.8)),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "iamshaikhasif@gmail.com",
                      style: R14R.copyWith(
                          color: KCOLOR_PRIMARY.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "8268270311",
                      style: R14R.copyWith(
                          color: KCOLOR_PRIMARY.withOpacity(0.8)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(),
                SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Employee Code",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Vendor Code",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Gender",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA ",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Date Of Birth",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Date of joining",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA ",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Grade and Type",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA  NA",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),

                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Cost Center",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA ",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Department",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA NA ",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Profile Center",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA ",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Reporting Manager",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA  ",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text("Manager Details",
                                  style: R14M.copyWith(
                                      color: KCOLOR_PRIMARY,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "NA | NA",
                                style: R14R.copyWith(color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.power_settings_new_outlined,
                              color: Colors.redAccent,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Log out",
                                style: R18R.copyWith(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}