import 'package:flutter/material.dart';



class HoverButtonWithTooltip extends StatefulWidget {
  const HoverButtonWithTooltip({super.key});

  @override
  _HoverButtonWithTooltipState createState() => _HoverButtonWithTooltipState();
}

class _HoverButtonWithTooltipState extends State<HoverButtonWithTooltip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hover Tooltip Example')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 240, left: 230),
          child: SizedBox(
            width: 110,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                print("Button Pressed");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Tooltip(
                    message: "Play Icon", // Message to show on hover
                    textStyle: const TextStyle(color: Colors.white),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.play_circle_filled,
                      size: 24,
                    ),
                  ),
                  Tooltip(
                    message: "Yard Icon", // Message to show on hover
                    textStyle: const TextStyle(color: Colors.white),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.yard_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
