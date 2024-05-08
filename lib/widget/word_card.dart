import 'package:flutter/material.dart';

import '../constant/color_constants.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key, required this.widthPercent, required this.text, required this.iconUrl, this.borderColor, this.txtColor});

  final int widthPercent;
  final String text;
  final String iconUrl;
  final Color? borderColor;
  final Color? txtColor;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(6.0),
      width: screenWidth * widthPercent/100,
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(widthPercent>15 ? 20 : 10),
          border: Border.all(color: borderColor ?? blackColor)
      ),
      child: Row(
        children: [
          iconUrl == "" ? Container() : Image.asset(
            iconUrl ?? "assets/icons/start1.png",
            width: 20,
          ),
          const SizedBox(width: 6.0),
           Text(text, style: TextStyle(fontSize: 12, color: txtColor ?? Colors.white),),
        ],
      ),
    );
  }
}
