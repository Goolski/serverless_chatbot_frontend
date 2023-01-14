import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  final String? description;
  final DateTime? dueDate;
  const TaskWidget({
    required this.title,
    this.dueDate,
    this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Theme.of(context).colorScheme.primary,
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge!.apply(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
              maxLines: 1,
            ),
            if (description != null) ...[
              Text(
                description!,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: Colors.white70),
              )
            ],
            if (dueDate != null) ...[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white70),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                padding: EdgeInsets.all(2),
                child: Text(
                  DateFormat('y.M.d H:m').format(dueDate!),
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: Colors.white70,
                      ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
