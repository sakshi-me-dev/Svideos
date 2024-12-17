import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomClass/CustomWidget.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
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
              icon: Icon(CupertinoIcons.person, color: Color(0xFF9F9CC6)),
              label: 'Profile', // Updated label
            )
          ]),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        actions: [
          Row(
            children: [
              CupertinoButton(
                onPressed: () {},
                child: const Icon(
                  CupertinoIcons.bell,
                  color: Colors.black,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ))
            ],
          )
        ],
      ),
      body: Column(
        children: [
          const CustomText(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor ",
            textColor: Colors.black,
            textSize: 15,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 20,
          ),
          customImage(const AssetImage("assets/images/image.png")),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: 'Wrong',
                  buttonColor: const Color(0xFFFFFFFF),
                  textColor: const Color(0xFFAAA6CD),
                  width: 130,
                  height: 50,
                  textSize: 15,
                  onPressed: () {},
                ),
                CustomButton(
                  text: 'Correct',
                  textColor: const Color(0xFFFFFFFF),
                  buttonColor: const Color(0xFFAAA6CD),
                  width: 130,
                  height: 40,
                  textSize: 15,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
