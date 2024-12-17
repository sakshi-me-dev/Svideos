import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomClass/CustomWidget.dart';

class SpecialVideoPage extends StatefulWidget {
  const SpecialVideoPage({super.key});

  @override
  State<SpecialVideoPage> createState() => _SpecialVideoPageState();
}

class _SpecialVideoPageState extends State<SpecialVideoPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, color: Color(0xFF9F9CC6)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search, color: Color(0xFF9F9CC6)),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings, color: Color(0xFF9F9CC6)),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings, color: Color(0xFF9F9CC6)),
              label: 'Profile',
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          actions: [
            Expanded(
              child: Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xFFD9D9D9),
                  ),
                  const Spacer(
                    flex: 6,
                  ),
                  Theme.of(context).brightness == Brightness.dark
                      ? Image.asset(
                          'assets/images/logoWhite.png',
                          width: 80,
                        )
                      : Image.asset(
                          'assets/images/logo.png',
                          width: 40,
                        ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(children: [
              CustomContainer(
                width: 400,
                // color: const Color(0xFF9F9CC6),
                height: 300,
                borderRadius: 20.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Special Video",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        CustomButton(
                          text: 'Get',
                          buttonColor:const Color(0xFF9F9CC6) ,
                          textColor:Colors.white,
                          width: 90,
                          height: 40,
                          textSize: 15,
                          onPressed: () {  },)

                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        "Watch our special video and get Multiples Points ",
                        style:
                            TextStyle(color: Color(0xFFADADAD), fontSize: 18),
                      ),
                    ),
                    Image.asset(
                      "assets/images/specialvideo1.png",
                      width: 120,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              CustomContainer(
                width: 400,
                // color: const Color(0xFF9F9CC6),
                height: 300,
                borderRadius: 20.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Ludo",
                          style: TextStyle(fontSize: 20),
                        ),
                        CustomButton(
                          text: 'Get',
                          buttonColor:const Color(0xFF9F9CC6) ,
                          textColor:Colors.white,
                          width: 90,
                          height: 40,
                          textSize: 15,
                          onPressed: () {  },)
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        "Watch our special video and get Multiples Points ",
                        style:
                            TextStyle(color: Color(0xFFADADAD), fontSize: 18),
                      ),
                    ),
                    Image.asset(
                      "assets/images/Ludo.png",
                      width: 120,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              CustomContainer(
                width: 400,
                // color: const Color(0xFF9F9CC6),
                height: 300,
                borderRadius: 20.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Google Review",
                          style: TextStyle(fontSize: 20),
                        ),
                        CustomButton(
                          text: 'Get',
                          buttonColor:const Color(0xFF9F9CC6) ,
                          textColor:Colors.white,
                          width: 90,
                          height: 40,
                          textSize: 15,
                          onPressed: () {  },)
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        "Watch our special video and get Multiples Points ",
                        style:
                            TextStyle(color: Color(0xFFADADAD), fontSize: 18),
                      ),
                    ),
                    Image.asset(
                      "assets/images/googleReview.png",
                      width: 120,
                    ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
