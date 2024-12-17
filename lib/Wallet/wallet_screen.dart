import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CustomClass/CustomWidget.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
            // Updated icon
            label: 'Profile', // Updated label
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF3F0FF),
                  borderRadius: BorderRadius.circular(40)),
              width: 400,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomButton(
                      onPressed: () {},
                      width: 150,
                      height: 20,
                      buttonColor: const Color(0xFFD1CEE8),
                      text: "Point History",
                      textColor: Colors.white,
                      textSize: 12,
                    ),
                    const SizedBox(height: 20),
                    const CustomText(
                      text: "Your Total Points",
                      fontWeight: FontWeight.bold,
                      textColor: Colors.black,
                      textSize: 20,
                    ),
                    const CustomText(
                      text: '300',
                      textColor: Colors.black,
                      textSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          text: 'Transfer',
                          buttonColor: const Color(0xFFF3F0FF),
                          textColor: const Color(0xFFAAA6CD),
                          width: 150,
                          height: 60,
                          textSize: 20,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        CustomButton(
                          text: 'Share',
                          buttonColor: const Color(0xFFAAA6CD),
                          textColor: Colors.white,
                          width: 150,
                          height: 60,
                          textSize: 20,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
