import 'package:cocoa/helpers/constants.dart';
import 'package:flutter/material.dart';

class Prediction extends StatelessWidget {
  const Prediction({super.key, required this.entry});

  final MapEntry<String, double> entry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(Constants.padding),
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.onInverseSurface),
            borderRadius: BorderRadius.circular(Constants.borderRadius),
          ),
          child: Column(
            children: [
              Text(
                entry.key.split("_")[0],
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        const SizedBox(height: Constants.distance),
        // Text(
        //   'Nilai Kepercayaan Sistem: ${entry.value.toStringAsFixed(0)}%',
        //   style: Theme.of(context).textTheme.bodySmall,
        // ),
      ],
    );
  }
}
