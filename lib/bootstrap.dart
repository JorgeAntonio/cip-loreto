import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'core/core.dart';

Future<void> bootstrap(Environment environment) async {
  final enableLogging = environment.enableLogging;
  return runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      // await Firebase.initializeApp(options: environment.options);
      // LocaleSettings.useDeviceLocale();
      GoRouter.optionURLReflectsImperativeAPIs = true;
      const app = ProviderScope(
        // overrides: overrides(environment),
        child: CipLoreto(),
      );

      // Inicializa `databaseFactory` para usar FFI
      sqfliteFfiInit();
      databaseFactory = databaseFactoryFfi;

      runApp(app);
      FlutterError.onError = (details) {
        if (enableLogging) {
          log(details.exceptionAsString(), stackTrace: details.stack);
        }
      };
    },
    (error, stack) {
      if (enableLogging) {
        log(error.toString(), stackTrace: stack);
      }
    },
  );
}
