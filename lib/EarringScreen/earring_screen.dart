import 'package:flutter/material.dart';
import '../CustomClass/CustomWidget.dart';

class EarringScreen extends StatefulWidget {
  const EarringScreen({super.key});

  @override
  State<EarringScreen> createState() => _EarringScreenState();
}

class _EarringScreenState extends State<EarringScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        actions: [
          Theme.of(context).brightness == Brightness.dark
              ? Image.asset(
                  'assets/images/logoWhite.png',
                  width: 40,
                )
              : Image.asset(
                  'assets/images/logo.png',
                  width: 40,
                ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 350,
                width: 360,
                decoration: const BoxDecoration(
                    color: Color(0xFFF3F0FF),
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/Group (1).png",
                      width: 200,
                    ),
                    const CustomText(
                      text: 'Watch Videos and Earn Points',
                      textColor: Color(0xFF1D1D1E),
                      textSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 80, right: 80),
                      child: CustomText(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor ',
                        textColor: Color(0xFF1D1D1E),
                        textSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200,left: 200,bottom: 10),
              child: CustomButton(
                text: 'Next',
                buttonColor: const Color(0xFF9F9CC6),
                textColor:Colors.white ,
                width: 110,
                height: 30,
                textSize: 15,
                onPressed: () {  },
              ),
            )
          ],
        ),
      ),

    );
  }
}
