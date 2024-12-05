import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class FlutterAppAppBar extends StatelessWidget {
  const FlutterAppAppBar({
    required this.title,
    required this.subTitle,
    super.key,
    this.actions = const [],
    this.button,
    this.onArrowDown,
    this.onBack,
  });
  final String title;
  final String subTitle;
  final List<Widget> actions;
  final Widget? button;
  final VoidCallback? onArrowDown;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: edgeInsetsH20.add(edgeInsetsV16),
          child: Row(
            children: [
              if (onBack != null) ...[
                FlutterAppIconButton(
                  iconData: FlutterAppIcons.arrowBack,
                  onPressed: onBack!,
                  size: FlutterAppIconSize.medium,
                  fontWeight: AppFontWeight.regular,
                ),
                space10,
              ],
              Expanded(
                child: Hero(
                  tag: 'header-appbar',
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: title,
                        style: context.textTheme.bodyLarge,
                        children: [
                          TextSpan(
                            text: subTitle,
                            style: context.textTheme.displayLarge,
                          ),
                          if (onArrowDown != null) ...[
                            const WidgetSpan(
                              alignment: PlaceholderAlignment.top,
                              child: FlutterAppIcon(
                                padding: edgeInsetL6,
                                icon: FlutterAppIcons.arrowDown,
                                color: Palette.red,
                                width: 16,
                                size: FlutterAppIconSize.medium,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ...actions,
            ],
          ),
        ),
        if (button != null) button!,
        const FlutterAppDivider(),
      ],
    );
  }
}
