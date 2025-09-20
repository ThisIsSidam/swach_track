import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swach_track/feature/file-report/data/models/report_form.dart';
import 'package:swach_track/shared/app_text.dart';

import '../../../../core/extensions/context_ext.dart';
import '../bloc/file_report_cubit.dart';
import 'section_header.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final InputDecorationThemeData inputTheme =
        context.theme.inputDecorationTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionHeader(Icons.location_on_outlined, 'Location'),
        const SizedBox(height: 16),
        BlocBuilder<FileReportCubit, ReportForm>(
          builder: (BuildContext context, ReportForm state) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: inputTheme.fillColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                onTap: () {
                  // TODO: Get user location
                },
                title: const AppText.label('No location Selected'),
                subtitle: const AppText.caption('Tap to select'),
              ),
            );
          },
        ),
      ],
    );
  }
}
