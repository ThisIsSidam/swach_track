import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/file_report_cubit.dart';
import 'app_text_field.dart';
import 'section_header.dart';

class BasicInfoSection extends StatelessWidget {
  const BasicInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final form = context.watch<FileReportCubit>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionHeader(Icons.report_outlined, 'What is the report about?'),
        const SizedBox(height: 16),
        AppTextField(
          label: 'Title *',
          hint: 'e.g., Public toilet is dirty',
          value: form.title,
          onChanged: context.read<FileReportCubit>().updateTitle,
        ),
        const SizedBox(height: 16),
        AppTextField(
          label: 'Description *',
          hint: 'Describe your report...',
          value: form.description,
          maxLines: 5,
          onChanged: context.read<FileReportCubit>().updateDescription,
        ),
      ],
    );
  }
}
