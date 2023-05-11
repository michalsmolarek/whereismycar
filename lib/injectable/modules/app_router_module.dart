import 'package:injectable/injectable.dart';
import 'package:whereismycar/app/utils/router.dart';

@module
abstract class AppRouterModule {
  @singleton
  AppRouter get instance => AppRouter();
}
