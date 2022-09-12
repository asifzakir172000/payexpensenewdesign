import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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