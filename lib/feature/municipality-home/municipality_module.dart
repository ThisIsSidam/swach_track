import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swach_track/app/router/module.dart';
import 'package:swach_track/app/router/routes.dart';
import 'package:swach_track/feature/municipality-home/municipality_homescreen.dart';

class MunicipalityModule extends AppModule {
  @override
  String get name => 'Municipality';

  @override
  List<RouteBase> build() {
    return <RouteBase>[
      AppRoute.citizenHome.toGoRoute(
        builder: (BuildContext context, GoRouterState state) =>
            const MunicipalityHomeScreen(),
      ),
    ];
  }
}
