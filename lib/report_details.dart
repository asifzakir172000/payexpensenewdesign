import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:bottomnavigation/text_fileds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReportDetails extends StatefulWidget {
  const ReportDetails({Key? key}) : super(key: key);

  @override
  State<ReportDetails> createState() => _ReportDetailsState();
}

class _ReportDetailsState extends State<ReportDetails> {

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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
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
                    "Expense Details",
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
                          Text(
                            "BR-20220900033",
                            style: R16M.copyWith(color: LinkColor),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const TextfieldHeading(
                            label: "Report Title",
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
                                      label: "From", color: TextPrimary),
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
                                    label: "To",
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

                          Visibility(
                            // visible: userExpensePRo
                            //     .expenseMetaDeta.data!.purposeRequired!,
                            visible: true,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextfieldHeading(
                                  label: "Purpose",
                                  color: TextPrimary,
                                ),
                                CommenTextField(
                                  controller: policyCtrl,
                                  label: "Select purpose ",
                                  width: size.width,
                                  prefixText: '',
                                  isEnabled: false,
                                  validator: (value) {
                                    // if (Validation.nonEmpty(value!)) {
                                    //   return "Policy is required.";
                                    // }
                                  },
                                  inputType: TextInputType.text,
                                ),
                              ],
                            ),
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

                          Container(
                            padding: EdgeInsets.zero,
                            width:
                            (MediaQuery.of(context).size.width / 100) * 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Report Status",
                                      style: R14R.copyWith(color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Lable(
                                      text: "Draft",
                                      color: TextPrimary2,
                                      fontcolor: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "On 8-Sep-2022",
                                      style: R14R.copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    // showBottomSheet(
                                    //     context: context,
                                    //     builder: (context) =>
                                    //         WorkFlowModal(
                                    //             reportId:
                                    //             widget.expense.id,
                                    //             report: widget.expense));
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 16),
                                      child: SvgPicture.asset(
                                        'assets/images/clock-history.svg',
                                        width: 24,
                                        color: LinkColor,
                                      )),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16, bottom: 16),
                            height: 0.1,
                            color: TextPrimary,
                            width: MediaQuery.of(context).size.width,
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
                                  Text(
                                    "Total Rs. 0.0",
                                    style: R16M.copyWith(
                                        color: TextPrimary),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 16),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.add,
                                  size: 16,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Add New Expenses",
                                  style: KH7_semiBold,
                                )
                              ],
                            ),
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
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CommenButton(
                            label: "Submit",
                            color: TextPrimary2,
                            fontcolor: Colors.white,
                            borderColor: TextPrimary2,
                            width: size.width * 0.3,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: CommenButton(
                              label: "Cancel",
                              color: KCOLOR_SECONDARY,
                              fontcolor: TextPrimary,
                              borderColor: TextPrimary2,
                              width: size.width * 0.27,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () async {

                            },
                            child: CommenButton(
                              label: "Discard",
                              color: KCOLOR_SECONDARY,
                              fontcolor: TextPrimary2,
                              borderColor: KCOLOR_SECONDARY,
                              width: size.width * 0.27,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

