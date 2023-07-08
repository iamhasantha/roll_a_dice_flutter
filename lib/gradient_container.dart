import 'package:first_flutter_proj/dice_roller.dart';
import 'package:flutter/material.dart';

// import 'package:first_flutter_proj/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2, {super.key});

   const GradientContainer.blue({super.key})
    : color1 = Colors.blue,
      color2 = Colors.lightBlueAccent;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            color1,
            color2,
          ],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
