import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class CulturalEventWidget extends StatelessWidget {
  final String title;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? link;

  const CulturalEventWidget({
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.link,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge!.apply(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
              textAlign: TextAlign.center,
            ),
            if (startDate != null) ...[
              Text(
                DateFormat('d.M.y H:mm').format(startDate!),
                style: Theme.of(context).textTheme.titleLarge!.apply(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ],
            if (endDate != null) ...[
              Text(
                DateFormat('d.M.y H:mm').format(endDate!),
                style: Theme.of(context).textTheme.titleLarge!.apply(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ],
            if (link != null) ...[
              OutlinedButton(
                onPressed: () => _launchUrl(link!),
                child: Text('More info'),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Colors.white),
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

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(
    _url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $_url';
  }
}
