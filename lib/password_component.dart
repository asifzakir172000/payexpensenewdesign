import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:flutter/material.dart';

class CommenPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final bool isEnabled;
  final String prefixText;
  final String label;
  final double width;
  final String? Function(String?)? validator;
  final TextInputType inputType;
  final Function(String?)? onChange;
  String? ErrorText;
  CommenPasswordField({Key? key,
    required this.controller,
    required this.isEnabled,
    required this.prefixText,
    required this.label,
    required this.width,
    required this.validator,
    this.ErrorText,
    required this.inputType, this.onChange}) : super(key: key);

  @override
  State<CommenPasswordField> createState() => _CommenPasswordFieldState();
}

class _CommenPasswordFieldState extends State<CommenPasswordField> {
  bool isPassVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: widget.width,
      child: TextFormField(
          controller: widget.controller,
          cursorHeight: 18,
          enabled: widget.isEnabled,
          keyboardType: widget.inputType,
          style: R14R.copyWith(color: Colors.black),
          obscureText: isPassVisible,
          onChanged: widget.onChange,
          decoration: KInputSytle.copyWith(
            suffixIcon:  InkWell(
                onTap: () {
                  setState(() {
                    isPassVisible = !isPassVisible;
                  });
                },
                child: isPassVisible
                    ?
                Icon(
                  Icons.visibility_off,
                  color: TextPrimary2,
                )
                    :Icon(
                  Icons.remove_red_eye_rounded,
                  color: TextPrimary2,
                )
            ),
            hintText: widget.label,
            errorText: widget.ErrorText,
            hintStyle: R13R.copyWith(color: GREY_COLOR),
          ),
          validator: widget.validator),
    );
  }
}
