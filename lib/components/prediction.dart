import 'package:cocoa/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
            color: Theme.of(context).colorScheme.onInverseSurface,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(Constants.borderRadius),
          ),
          child: Column(
            children: [
              Text(
                entry.key.split("_")[0],
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                entry.key.split("_")[1],
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.black.withAlpha(155)),
              ),
            ],
          ),
        ),
        const SizedBox(height: Constants.distance),
        Text(
          'Nilai Kepercayaan Sistem: ${entry.value.toStringAsFixed(0)}%',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
