import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:bottomnavigation/text_fileds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class NewDelegation extends StatefulWidget {
  const NewDelegation({Key? key}) : super(key: key);

  @override
  State<NewDelegation> createState() => _NewDelegationState();
}

class _NewDelegationState extends State<NewDelegation> {

  TextEditingController titleCtrl = new TextEditingController();
  TextEditingController dateFrom = new TextEditingController();
  TextEditingController dateFromb = new TextEditingController();

  TextEditingController dateTo = new TextEditingController();
  TextEditingController dateTob = new TextEditingController();

  TextEditingController policyCtrl = new TextEditingController();
  TextEditingController descrpitionCtrl = new TextEditingController();

  TextEditingController isDateChanged = TextEditingController(text: 'false');

  bool _validateTitle = false;
  bool _validatePolicy = false;
  bool _validateDescrpition = false;

  bool validateDateFrom = true;
  bool validateDateTo = true;
  String dateFromMsg = '';
  String dateToMsg = '';

  var selectdateFrom = "";
  var selectdateTo = "";
  final _expenseReportDetail = GlobalKey<FormState>();
  bool draftButtons = false;
  bool acceptedButtons = true;
  bool showWorkFlow = true;
  String purpose = '';
  late List purposeItem;
  bool toggle = false;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: WillPopScope(
          onWillPop: () async => true,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios, color: TextPrimary, size: 20,),
                        ),
                        Text(
                          "New Delegation",
                          style: FK22SB.copyWith(color: TextPrimary),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Stack(
                      children: [
                        SingleChildScrollView(
                          primary: true,
                          child: Form(
                            key: _expenseReportDetail,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const TextfieldHeading(
                                  label: "From Approve",
                                  color: TextPrimary,
                                ),
                                CommenTextField(
                                  controller: titleCtrl,
                                  prefixText: '',
                                  width: size.width,
                                  isEnabled: acceptedButtons,
                                  label: 'Enter Title',
                                  validator: (value) {

                                  },
                                  inputType: TextInputType.text,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const TextfieldHeading(
                                  label: "From Approve",
                                  color: TextPrimary,
                                ),
                                CommenTextField(
                                  controller: titleCtrl,
                                  prefixText: '',
                                  width: size.width,
                                  isEnabled: acceptedButtons,
                                  label: 'Enter Title',
                                  validator: (value) {

                                  },
                                  inputType: TextInputType.text,
                                ),

                                const SizedBox(
                                  height: 10,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const TextfieldHeading(
                                            label: "Start Date", color: TextPrimary),
                                        InkWell(
                                          onTap: acceptedButtons
                                              ? () {
                                            String old_date = dateFrom.text;
                                            print("-->old date $old_date");
                                            // selectDate(
                                            //     context,
                                            //     dateFrom,
                                            //     dateFromb,
                                            //     null,
                                            //     dateTo,
                                            //     dateTob);
                                            // setState(() {
                                            //   dateTo.clear();
                                            //   dateTob.clear();
                                            // });
                                            // print(
                                            //     "-->new date ${dateFrom.text}");
                                            // if (isDateChanged.text ==
                                            //     "true") {

                                            // }
                                          }
                                              : null,
                                          child: CommenTextFieldWithIcon(
                                            controller: dateFrom,
                                            icon: Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: SvgPicture.asset(
                                                  "assets/images/calendar-alt-solid.svg"),
                                            ),
                                            isEnabled: acceptedButtons,
                                            label: 'Enter Date',
                                            width: (size.width / 2) - 30,
                                            prefixText: '',
                                            heigth: 40,
                                            errorText: !validateDateFrom
                                                ? dateFromMsg
                                                : null,
                                            validator: (value) {
                                              // if (Validation.nonEmpty(value!)) {
                                              //   return "Date is required.";
                                              // } else {
                                              //   return null;
                                              // }
                                            },
                                            inputType: TextInputType.text,
                                            onChanged: (value) {
                                              setState(() {
                                                validateDateFrom = true;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const TextfieldHeading(
                                          label: "End Date",
                                          color: TextPrimary,
                                        ),
                                        InkWell(
                                          onTap: acceptedButtons
                                              ? () {
                                            // selectDate(context, dateTo,
                                            //     dateTob, dateFrom.text);
                                            // setState(() {
                                            //   validateDateTo = true;
                                            // });
                                          }
                                              : null,
                                          child: CommenTextFieldWithIcon(
                                            controller: dateTo,
                                            icon: Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: SvgPicture.asset(
                                                  "assets/images/calendar-alt-solid.svg"),
                                            ),
                                            isEnabled: acceptedButtons,
                                            label: 'Enter Date',
                                            width: (size.width / 2) - 25,
                                            prefixText: '',
                                            heigth: 40,
                                            errorText:
                                            !validateDateTo ? dateToMsg : null,
                                            validator: (value) {
                                              // if (Validation.nonEmpty(value!)) {
                                              //   return "Date is required.";
                                              // }
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                validateDateTo = true;
                                              });
                                            },
                                            inputType: TextInputType.text,
                                          ),
                                        ),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 10,
                                ),

                                const TextfieldHeading(
                                    label: "Description", color: TextPrimary),
                                CommenMultilineTextField(
                                  enabled: acceptedButtons,
                                  controller: descrpitionCtrl,
                                  label: "Description",
                                ),

                                const SizedBox(
                                  height: 10,
                                ),


                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Mapped Expenses",
                                          style: R16M.copyWith(
                                              color: KCOLOR_PRIMARY),
                                        ),
                                        FlutterSwitch(
                                          height: 22,
                                          width: 45,
                                          padding: 3,
                                          toggleSize: 15,
                                          value: toggle,
                                          toggleColor: !toggle?TextPrimary:KCOLOR_SHADOW,
                                          inactiveColor: Colors.white,
                                          activeColor: Colors.white,
                                          switchBorder: Border.all(
                                            color: !toggle?TextPrimary:KCOLOR_SHADOW,
                                            width: 1.0,
                                          ),
                                          onToggle: (newVal) {
                                            print(newVal);

                                            setState((){
                                              toggle = newVal;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: CommenButton(
                            label: "Submit",
                            color: TextPrimary2,
                            fontcolor: Colors.white,
                            borderColor: TextPrimary2,
                            width: size.width * .9,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
