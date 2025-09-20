import 'package:go_router/go_router.dart';
import 'package:swach_track/app/router/routes.dart';
import 'package:swach_track/feature/auth/auth_module.dart';
import 'package:swach_track/feature/citizen-home/citizen_module.dart';
import 'package:swach_track/feature/municipality-home/municipality_module.dart';

import 'module.dart';

GoRouter getAppRouter = GoRouter(
  initialLocation: AppRoute.auth.path,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    ...AppModule.buildAll(<AppModule>[
      AuthModule(),
      CitizenModule(),
      MunicipalityModule(),
    ]),
  ],
);
