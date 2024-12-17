import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomClass/CustomWidget.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
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
          Theme.of(context).brightness == Brightness.dark
              ? Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset(
                    'assets/images/logoWhite.png',
                    width: 80,
                    fit: BoxFit.contain,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text(
                "Unlock Your Rewards",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Column(
              children: [
                CustomBox(),
                SizedBox(
                  height: 20,
                ),
                CustomCoffee(),
                SizedBox(
                  height: 20,
                ),
                CustomPremium()
              ],
            )
          ],
        ),
      ),
    );
  }

}

class CustomBox extends StatelessWidget {
  const CustomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F0FF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customImage(const AssetImage("assets/images/RedBox.png")),
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          const CustomText(
                            text: 'Amazon Deal',
                            textColor: Color(0xFFACACAC),
                            textSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          const Spacer(),
                          customTextField(
                              const Icon(
                                Icons.copy,
                                color: Colors.white,
                              ),
                              "Enter code",
                              const Color(0xFFD1CDE7)),
                          const SizedBox(height: 20),
                          // Extra spacing
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -30,
                top: 70,
                child: Container(
                  width: 70,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 24,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class CustomCoffee extends StatelessWidget {
  const CustomCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F0FF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customImage(const AssetImage("assets/images/Coffee.png")),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const CustomText(
                        text: 'Unlock CCD Voucher',
                        textColor: Color(0xFFACACAC),
                        textSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                      const Spacer(),
                      customTextField(
                          const Icon(
                            Icons.copy,
                            color: Colors.white,
                          ),
                          "Enter Code",
                          const Color(0xFFD1CDE7)),
                      const SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: -30,
            top: 70,
            child: Container(
              width: 70,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 5),
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.lock,
                color: Colors.grey,
                size: 24,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CustomPremium extends StatelessWidget {
  const CustomPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F0FF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customImage(const AssetImage("assets/images/Rewards.png")),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const CustomText(
                        text: 'Claim 5 Plus Premium Rewards',
                        textColor: Color(0xFFACACAC),
                        textSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                      const Spacer(),
                      customTextField(
                          const Icon(
                            Icons.copy,
                            color: Colors.white,
                          ),
                          "Enter code",
                          const Color(0xFFD1CDE7)),
                      const SizedBox(height: 20), // Extra spacing
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: -30,
            top: 70,
            child: Container(
              width: 70,
              height: 60,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 5),
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.lock,
                color: Colors.grey,
                size: 24,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

