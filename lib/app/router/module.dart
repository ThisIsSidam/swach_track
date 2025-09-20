import 'package:go_router/go_router.dart';

abstract class AppModule {
  AppModule();

  String get name;

  List<RouteBase> build();

  static Iterable<RouteBase> buildAll(List<AppModule> modules) {
    return modules.expand((AppModule e) => e.build());
  }
}
