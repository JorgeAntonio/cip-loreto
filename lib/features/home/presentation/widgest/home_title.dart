import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key, this.title, required this.subtitle});

  final String? title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsH20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Text(
              title!,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          gap4,
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
