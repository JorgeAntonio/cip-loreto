import 'package:flutter/material.dart';

class FlutterAppBaseScreen extends StatelessWidget {
  const FlutterAppBaseScreen({
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
    super.key,
  });
  final Widget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            if (appBar != null) appBar!,
            Expanded(child: body),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
