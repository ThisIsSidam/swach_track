import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swach_track/app/router/module.dart';
import 'package:swach_track/app/router/routes.dart';
import 'package:swach_track/feature/citizen-home/screens/citizen_homescreen.dart';

class CitizenModule extends AppModule {
  @override
  String get name => 'Citizen';

  @override
  List<RouteBase> build() {
    return <RouteBase>[
      AppRoute.municipalityHome.toGoRoute(
        builder: (BuildContext context, GoRouterState state) =>
            const CitizenHomescreen(),
      ),
    ];
  }
}
