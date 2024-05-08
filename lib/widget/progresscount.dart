import 'package:flutter/material.dart';

class ProgressCount extends StatelessWidget {
   const ProgressCount( this.progressLine, this.total, {super.key});
  final int progressLine;
   final int total;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(total, (i) => Row(
              children: [
                Image.asset(
                  progressLine == i ? "assets/images/limered.png" : "assets/images/limelight.png",
                  width: 50,
                ),
                const SizedBox(width: 10),
              ],
            ),),
          ),
        ],
      ),
    );
  }


}
