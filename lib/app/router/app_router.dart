import 'package:go_router/go_router.dart';
import 'package:swach_track/app/router/routes.dart';
import 'package:swach_track/feature/auth/login_choice_screen.dart';
import 'package:swach_track/feature/citizen-home/presentation/screens/citizen_homescreen.dart';
import 'package:swach_track/feature/file-report/presentation/screens/file_report_screen.dart';
import 'package:swach_track/feature/municipality-home/municipality_homescreen.dart';

GoRouter getAppRouter = GoRouter(
  initialLocation: AppRoute.auth.path,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    AppRoute.auth.toGoRoute(
      builder: (_, GoRouterState s) => LoginChoiceScreen(key: s.pageKey),
    ),
    AppRoute.citizenHome.toGoRoute(
      builder: (_, GoRouterState s) => CitizenHomeScreen(key: s.pageKey),
    ),
    AppRoute.municipalityHome.toGoRoute(
      builder: (_, GoRouterState s) => MunicipalityHomeScreen(key: s.pageKey),
    ),
    AppRoute.fileReport.toGoRoute(
      builder: (_, s) => FileReportScreen(key: s.pageKey),
    ),
  ],
);
