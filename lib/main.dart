import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swach_track/app/router/app_router.dart';
import 'package:swach_track/app/theme/light_theme.dart';
import 'package:swach_track/core/blocs/app_cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: MaterialApp.router(
        title: 'SwachTrack Login',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        routerConfig: getAppRouter,
      ),
    );
  }
}
