import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whereismycar/app/theme/theme_manager.dart';
import 'package:whereismycar/app/utils/consts.dart';
import 'package:whereismycar/app/utils/router.dart';
import 'package:whereismycar/app/utils/translations/generated/l10n.dart';
import 'package:whereismycar/firebase_options.dart';
import 'package:whereismycar/injectable/injectable.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injectDependencies();
  initializeFirebase();

  runApp(const MyApp());
}

Future<void> initializeFirebase() async => await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: getIt<ThemeManager>().lightTheme,
      builder: (context, child) => child!,
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
      routerDelegate: getIt<AppRouter>().delegate(),
      localizationsDelegates: const [
        Translation.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Translation.delegate.supportedLocales,
      locale: const Locale('en'),
      title: appName,
    );
  }
}
