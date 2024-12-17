import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomClass/CustomWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ValueNotifier<bool> obsValue = ValueNotifier<bool>(true);

  @override
  void dispose() {
    obsValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                        child: const Icon(
                          CupertinoIcons.back,
                          color: Colors.black,
                        ),
                        onPressed: () {}),
                    Theme.of(context).brightness == Brightness.dark
                        ? Image.asset(
                            'assets/images/logoWhite.png',
                            width: 40,
                          )
                        : Image.asset('assets/images/logo.png', width: 40),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Log In",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                const SizedBox(
                  height: 60,
                ),
                CupertinoTextField(
                  placeholder: 'Enter Your Name',
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F0FF),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: const Color(0xFF8C89B7).withOpacity(0.2),
                    ),
                    // Border color
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ValueListenableBuilder(
                  valueListenable: obsValue,
                  builder: (BuildContext context, isObscured, Widget? child) {
                    return CupertinoTextField(
                        obscureText: isObscured,
                        keyboardType: TextInputType.phone,
                        placeholder: 'Enter Your Number',
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF3F0FF),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: const Color(0xFF8C89B7).withOpacity(0.2),
                            )),
                        suffix: CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              obsValue.value = !isObscured;
                            },
                            child: Icon(
                              isObscured
                                  ? CupertinoIcons.eye_slash
                                  : CupertinoIcons.eye,
                              color: CupertinoColors.black,
                            )));
                  },
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: CustomButton(
                    text: 'Create Profile',
                    buttonColor: const Color(0xFF8C89B7),
                    textColor: Colors.white,
                    width: 90,
                    height: 40,
                    textSize: 18,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 170,
                ),
                const Text.rich(TextSpan(children: <InlineSpan>[
                  TextSpan(
                      text: "By Creating Profile You Are Accepting Our",
                      style: TextStyle(color: Color(0xFFA6A6A6))),
                  TextSpan(
                      text: "Our",
                      style: TextStyle(color: Colors.black, fontSize: 15))
                ])),
                InkWell(
                    onTap: () {},
                    child: const Text(" Terms And Condition",
                        style:
                            TextStyle(color: Color(0xFF70A1CE), fontSize: 15)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
