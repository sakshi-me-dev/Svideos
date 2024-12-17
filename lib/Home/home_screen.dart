import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../CustomClass/CustomWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            print('Progress: $progress%');
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            print('Web resource error: ${error.description}');
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.youtube.com'));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: WebViewWidget(controller: _controller),
            ),
            Container(
              width: 400,
              height:70,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                // child: CustomButton(
                //   text: 'Explore',
                //   buttonColor: const Color(0xFFD6C1FF).withOpacity(0.6),
                //   textColor: Colors.white,
                //   width: null,
                //   height: null,
                //   textSize: null,
                //   onPressed: () {  },),
                child: CupertinoButton(
                   color: const Color(0xFFD6C1FF).withOpacity(0.6),
                  onPressed: () {
                    print("Explore button clicked");
                  },
                  child: const Text("Explore",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// short code
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   late final WebViewController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(Uri.parse('https://www.youtube.com'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: WebViewWidget(controller: _controller),
//             ),
//             Container(
//               width: 400,
//               height: 70,
//               color: Colors.black,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: CupertinoButton(
//                   color: const Color(0xFFD6C1FF).withOpacity(0.6),
//                   onPressed: () {
//                     print("Explore button clicked");
//                   },
//                   child: const Text(
//                     "Explore",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
