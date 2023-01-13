import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EventWidget extends StatelessWidget {
  final String title;
  final DateTime? startDate;
  final DateTime? endDate;
  const EventWidget({
    required this.title,
    this.startDate,
    this.endDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final startDateString =
        '${startDate!.year}.${startDate!.month}.${startDate!.day}${startDate!.hour != 0 ? ' ${startDate!.hour}:${startDate!.minute < 10 ? '0${startDate!.minute}' : '${startDate!.minute}'}' : ''}';
    final endDateString =
        '${endDate!.year}.${endDate!.month}.${endDate!.day}${endDate!.hour != 0 ? ' ${endDate!.hour}:${endDate!.minute < 10 ? '0${endDate!.minute}' : '${endDate!.minute}'}' : ''}';
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.apply(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
            Text(
              '$startDateString - $endDateString',
              style: Theme.of(context).textTheme.titleMedium!.apply(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
