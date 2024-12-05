import 'package:cip_loreto/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CipLoreto extends HookConsumerWidget {
  const CipLoreto({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);

    final router = ref.watch(routerProvider);
    return FlutterAppCloseKeyboard(
      app: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        debugShowCheckedModeBanner: false,
        routeInformationProvider: router.routeInformationProvider,
        // localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        title: 'CIP Loreto',
        themeMode: ThemeMode.light,
        theme: theme.light(),
        darkTheme: theme.dark(),
        builder: (context, child) {
          SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              statusBarBrightness: context.theme.brightness,
            ),
          );
          return child!;
        },
      ),
    );
  }
}
