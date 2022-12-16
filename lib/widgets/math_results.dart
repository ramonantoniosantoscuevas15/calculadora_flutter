import 'package:calculadora_flutter/controllers/calculator_controller.dart';
import 'package:calculadora_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  const MathResults({super.key});

  @override
  Widget build(BuildContext context) {
    final calculatorCtrl = Get.find<CalculatorController>();
    return Obx(
      () => Column(
        children:  [
          SubResult(text: '${calculatorCtrl.firstNumber}'),
          SubResult(text: '${calculatorCtrl.operation}'),
          SubResult(text: '${calculatorCtrl.secondNumber}'),
          const LineSeparator(),
          MainResultText(text: '${calculatorCtrl.mathResult}'),
        ],
      ),
    );
  }
}
