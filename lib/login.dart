import 'package:bottomnavigation/Colors.dart';
import 'package:bottomnavigation/dash2.dart';
import 'package:bottomnavigation/pageTrans.dart';
import 'package:bottomnavigation/password_component.dart';
import 'package:bottomnavigation/styles.dart';
import 'package:bottomnavigation/text_fileds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailId = TextEditingController();
  bool emailVal = true;
  String emailMsg = "";

  TextEditingController password = TextEditingController();
  bool passVal = true;
  String passMsg = "";
  bool isPassVisible = false;
  bool isLoding = false;
  late Color buttonColor = GREY_COLOR;

  final _Login = GlobalKey<FormState>();
  final _email = GlobalKey<EditableTextState>();

  bool loginValidate() {
    bool value = true;
    setState(() {
      if (emailId.text.isEmpty) {
        emailVal = false;
        emailMsg = "Please Enter Email Id.";
      }

      if (password.text.isEmpty) {
        passVal = false;
        passMsg = "Please Enter Password.";
      }

      if (emailVal && passVal) {
        value = true;
      } else {
        value = false;
      }
    });

    return value;
  }

  Widget buildSmallIcon(){
    return Container (
      decoration : const BoxDecoration ( shape : BoxShape.circle , color : KCOLOR_PRIMARY),
      child : const Center (
      child : Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularProgressIndicator ( color : Colors.white, ),
      ) ,
     ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: KCOLOR_PRIMARY,
          body: Form(
            key: _Login,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: MediaQuery.of(context).size.width * .1,
                  color: KCOLOR_PRIMARY,
                  child: Center(
                    child: SvgPicture.asset(
                      // "assets/images/logo.png",
                      "assets/images/pay_expense.svg",
                      height: 56,
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Login To Continue",
                          style: R18R.copyWith(
                              color: TextPrimary,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const TextfieldHeading(
                            label: "Username or Email", color: TextPrimary),
                        CommenTextField(
                            controller: emailId,
                            key: _email,
                            isEnabled: true,
                            prefixText: '',
                            onChnage: (value) {
                              setState(() {
                                if (password.text.isNotEmpty &&
                                    emailId.text.isNotEmpty) {
                                  buttonColor = KCOLOR_PRIMARY;
                                }
                                emailVal = true;
                                // _Login.currentState!.validate();
                                // _Login.currentState!.activate();
                              });
                            },
                            errorText: (!emailVal) ? emailMsg : null,
                            label: "Enter Username or Email",
                            width: size.width,
                            validator: (value) {

                            },
                            inputType: TextInputType.emailAddress),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TextfieldHeading(
                                label: "Password", color: TextPrimary),
                          ],
                        ),
                        CommenPasswordField(
                            controller: password,
                            isEnabled: true,
                            prefixText: '',
                            label: "Enter Password",
                            width: size.width,
                            onChange: (value) {
                              setState(() {
                                if (password.text.isNotEmpty &&
                                    emailId.text.isNotEmpty) {
                                  buttonColor = KCOLOR_PRIMARY;
                                }
                                passVal = true;
                              });
                            },
                            ErrorText: (!passVal) ? passMsg : null,
                            validator: (value) {

                            },
                            inputType: TextInputType.visiblePassword),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10.0),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                            child: InkWell(
                              onTap: (){
                                if (password.text.isNotEmpty &&
                                    emailId.text.isNotEmpty) {
                                  Navigator.pushReplacement(context, PageTransition(const MyDashBoard2()));
                                }
                              },
                              child: CommenButton(
                                  label: "Login",
                                  color: buttonColor,
                                  fontcolor: Colors.white,
                                  borderColor: buttonColor,
                                  width: size.width),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                )

              ],
            ),
          ),),
    );
  }
}
