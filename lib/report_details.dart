import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/styles.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.arrow_back_ios, color: TextPrimary, size: 18,),
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


class TextfieldHeading extends StatelessWidget {
  final String label;
  final Color color;
  const TextfieldHeading({Key? key, required this.label, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 8,),
        child: Text(
          label,
          style: R14R.copyWith(color: Colors.black),
        ));
  }
}


class CommenTextField extends StatelessWidget {
  String? errorText;
  final TextEditingController controller;
  final bool isEnabled;
  final String prefixText;
  final String label;
  final double width;
  final String? Function(String?)? validator;
  final Function(String?)? onChnage;
  final TextInputType inputType;
  CommenTextField(
      {Key? key,
        required this.controller,
        required this.isEnabled,
        required this.prefixText,
        required this.label,
        required this.width,
        required this.validator,
        this.errorText,
        required this.inputType,
        this.onChnage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: width,
      child: TextFormField(
          controller: controller,
          cursorHeight: 18,
          enabled: isEnabled,
          keyboardType: inputType,
          onChanged: onChnage,
          style: R14R.copyWith(color: Colors.black),
          decoration: KInputSytle.copyWith(
            hintText: label,
            errorText: errorText,
            hintStyle: R13R.copyWith(color: GREY_COLOR),
          ),
          validator: validator),
    );
  }
}

class CommenTextFieldWithIcon extends StatefulWidget {
  final TextEditingController controller;
  final bool isEnabled;
  final String prefixText;
  final String label;
  final double heigth;
  final Widget icon;
  final double width;
  final Function(String?) onChanged;
  String? errorText;
  final String? Function(String?)? validator;
  final TextInputType inputType;
  CommenTextFieldWithIcon(
      {Key? key,
        required this.controller,
        required this.isEnabled,
        required this.prefixText,
        required this.label,
        required this.heigth,
        required this.icon,
        required this.width,
        this.errorText,
        required this.validator,
        required this.inputType,
        required this.onChanged})
      : super(key: key);

  @override
  State<CommenTextFieldWithIcon> createState() =>
      _CommenTextFieldWithIconState();
}

class _CommenTextFieldWithIconState extends State<CommenTextFieldWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: widget.width,
      child: AbsorbPointer(
        child: TextFormField(
          onSaved: widget.onChanged,
          controller: widget.controller,
          keyboardType: widget.inputType,
          style: R14R.copyWith(color: Colors.black),
          decoration: KInputSytle.copyWith(
              suffixIcon: widget.icon,
              errorText: widget.errorText,
              hintText: widget.label,
              hintStyle: R13R.copyWith(color: GREY_COLOR, height: 1)),
          validator: widget.validator,
        ),
      ),
    );
  }
}


class Lable extends StatelessWidget {
  late Color color;
  late String text;
  late Color fontcolor;
  Lable({required this.color, required this.fontcolor, required this.text});
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 16, right: 16, bottom: 3),
      decoration: BoxDecoration(
          color: color,
          // color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Text(
        text,
        style: TextStyle(color: fontcolor),
      ),
    );
  }
}


class CommenButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color borderColor;
  final Color fontcolor;
  final double width;
  const CommenButton(
      {Key? key,
        required this.label,
        required this.color,
        required this.fontcolor,
        required this.borderColor,
        required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        // color: Colors.red,
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: fontcolor).copyWith(fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

class CommenMultilineTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool enabled;
  const CommenMultilineTextField({Key? key, required this.label, required this.controller,required this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      margin: const EdgeInsets.only(bottom: 8, right: 10),
      width: (MediaQuery.of(context).size.width / 100) * 100,
      child: TextField(
          enabled: enabled,
          controller: controller,
          cursorHeight: 18,
          maxLines: 4,
          keyboardType: TextInputType.emailAddress,
          style: R14R.copyWith(color: Colors.black),
          decoration: KInputSytle.copyWith(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14, vertical: 8),
              hintText: label,
              hintStyle: R13R.copyWith(color: GREY_COLOR)
            // errorText: _validateTitle
            //     ? 'Please enter Expense Policy'
            //     : null,
          )
      ),
    );
  }
}
