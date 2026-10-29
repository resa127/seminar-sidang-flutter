import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String label;
  final String title;
  final String subtitle;
  final String detail1;
  final String detail2;

  const ActivityCard({
    super.key,
    required this.label,
    required this.title,
    required this.subtitle,
    required this.detail1,
    required this.detail2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
              label: Text(
                label,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.access_time, size: 15),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    detail1,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.location_on_outlined, size: 15),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    detail2,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}