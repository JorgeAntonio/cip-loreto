import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class FlutterAppIconText extends StatelessWidget {
  const FlutterAppIconText({
    required this.icon,
    super.key,
    this.rawSize,
    this.size = FlutterAppIconSize.bigger,
    this.color = Palette.white,
    this.text,
    this.style,
  });

  final String? text;
  final TextStyle? style;
  final IconData icon;
  final Color? color;
  final double? rawSize;
  final FlutterAppIconSize size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlutterAppIcon(
          icon: icon,
          color: color,
          rawSize: rawSize,
          size: size,
        ),
        if (text != null) ...[
          space4,
          Flexible(
            child: Text(
              text!,
              style: style ?? context.textTheme.bodySmall,
            ),
          ),
        ],
      ],
    );
  }
}
