import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? trailingText;
  final IconData? trailingIcon;

  const InfoTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailingText,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        subtitle: Text(subtitle),
        trailing: trailingIcon != null
            ? Icon(trailingIcon)
            : trailingText != null
                ? Text(
                    trailingText!,
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                : null,
      ),
    );
  }
}