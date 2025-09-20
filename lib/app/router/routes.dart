import 'package:go_router/go_router.dart';

/// Enum to represent the routes of the app
enum AppRoute {
  splash('/', 'SPLASH'),
  auth('/auth', 'AUTH'),

  citizenHome('/home', 'CITIZEN_HOME'),
  municipalityHome('/municipality/home', 'MUNICIPALITY_HOME');

  const AppRoute(this.path, this.name);
  final String path;
  final String name;

  GoRoute toGoRoute({
    required GoRouterWidgetBuilder builder,
    List<RouteBase>? routes,
  }) => GoRoute(
    path: path,
    name: name,
    builder: builder,
    routes: routes ?? <RouteBase>[],
  );
}
