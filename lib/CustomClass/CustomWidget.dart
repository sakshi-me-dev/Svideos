import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double width;
  final double height;
  final double textSize;
  final VoidCallback onPressed;
  final OutlinedBorder? shape;

  const CustomButton({
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.width,
    required this.height,
    required this.textSize,
    required this.onPressed,
    Key? key,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: buttonColor,
            shape: shape ??
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            ),
          ) //,
          ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;
  final TextAlign? textAlign;

  const CustomText({
    required this.text,
    required this.textColor,
    required this.textSize,
    required this.fontWeight,
    this.textAlign,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
class CustomContainer extends StatelessWidget {
  final double width;
  final double height;

  // final Color color;
  final double borderRadius;
  final Widget? child;

  const CustomContainer({
    super.key,
    required this.width,
    required this.height,
    // required this.color,
    required this.borderRadius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        // color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
customTextField(Widget? prefixIcon, String? hintText, Color? fillColor) {
  return SizedBox(
    height: 40,
    width: 140,
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)),
      ),
    ),
  );
}
customImage(ImageProvider<Object> image,) {
  return SizedBox(
    height: 160,
    width: 130,
    child: Image(
      image: image,
    ),
  );
}