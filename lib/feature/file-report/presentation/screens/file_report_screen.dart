import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swach_track/app/theme/app_colors.dart';
import 'package:swach_track/core/extensions/context_ext.dart';
import 'package:swach_track/feature/file-report/presentation/widgets/location_section.dart';
import 'package:swach_track/shared/app_text.dart';

import '../bloc/file_report_cubit.dart';
import '../widgets/basic_info_section.dart';
import '../widgets/images_section.dart';

class FileReportScreen extends StatelessWidget {
  const FileReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FileReportCubit(),
      child: const _FileReportView(),
    );
  }
}

class _FileReportView extends StatelessWidget {
  const _FileReportView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      bottomNavigationBar: _SubmitButton(),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BasicInfoSection(),
            SizedBox(height: 32),
            LocationSection(),
            SizedBox(height: 32),
            ImagesSection(),
          ],
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.theme.bottomNavigationBarTheme.backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: context.colors.shadow,
            offset: const Offset(0, -1),
            blurRadius: 3,
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: redGradient,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ElevatedButton(
          onPressed: () => context.read<FileReportCubit>().onSubmitEvent(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const AppText.body1(
            'File a report',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
