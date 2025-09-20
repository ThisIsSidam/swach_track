import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swach_track/feature/auth/login_choice_screen.dart';

import '../../app/router/module.dart';
import '../../app/router/routes.dart';

class AuthModule extends AppModule {
  @override
  String get name => 'Auth';

  @override
  List<RouteBase> build() {
    return <RouteBase>[
      AppRoute.auth.toGoRoute(
        builder: (BuildContext context, GoRouterState state) =>
            const LoginChoiceScreen(),
      ),
    ];
  }
}
