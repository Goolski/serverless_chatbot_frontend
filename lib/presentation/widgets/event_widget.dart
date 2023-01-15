import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

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
            if (startDate != null && endDate != null) ...[
              Text(
                '${DateFormat('d.M.y HH:mm').format(startDate!)} - ${DateFormat('d.M.y HH:mm').format(startDate!)}',
                style: Theme.of(context).textTheme.titleMedium!.apply(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
