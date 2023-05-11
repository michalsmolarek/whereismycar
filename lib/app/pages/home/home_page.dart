import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:whereismycar/app/utils/translations/generated/l10n.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Translation.of(context).ok),
      ),
    );
  }
}
