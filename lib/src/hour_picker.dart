import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_picker_wheel/src/translations.dart';

import 'export.dart';

class HourPicker extends StatelessWidget {
  const HourPicker({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(12, (index) => index + 1);

    final timeChangeNotifier = context.watch<TimeChangeNotifier>();

    final hour = timeChangeNotifier.hour;

    // log('Hour: $hour');

    final indexOfHour = items.indexOf(hour);

    return IntLabelWheel(
      items: items,
      label: lang.hour,
      onChange: (value) {
        timeChangeNotifier.hour = value;
        context.read<OnChange>().call(timeChangeNotifier.timeOfDay());
      },
      controller: FixedExtentScrollController(initialItem: indexOfHour),
    );
  }
}
