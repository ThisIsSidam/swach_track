import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swach_track/core/extensions/context_ext.dart';
import 'package:swach_track/feature/file-report/data/models/report_form.dart';
import 'package:swach_track/feature/file-report/presentation/bloc/file_report_cubit.dart';
import 'package:swach_track/shared/app_text.dart';

import 'section_header.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({super.key});

  Future<void> _pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile != null && context.mounted) {
      final file = File(pickedFile.path);
      context.read<FileReportCubit>().addImage(file);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileReportCubit, ReportForm>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SectionHeader(Icons.image_outlined, 'Images'),
            const SizedBox(height: 16),

            // Upload container
            if ((state.images?.length ?? 0) < 3)
              InkWell(
                onTap: () => _pickImage(context),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: context.theme.inputDecorationTheme.fillColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.camera_alt, size: 40, color: Colors.grey),
                      AppText.body1(
                        'Take a photo (up to 3)',
                        color: Colors.grey,
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 16),

            // Show selected images
            if (state.images?.isNotEmpty ?? false)
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      state.images?.map((file) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.file(
                                  file,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                right: -16,
                                top: -16,
                                child: IconButton.filled(
                                  icon: Icon(Icons.close, size: 16),
                                  onPressed: () => context
                                      .read<FileReportCubit>()
                                      .removeImage(file),
                                  color: Colors.white,
                                  style: IconButton.styleFrom(
                                    minimumSize: const Size(16, 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList() ??
                      [],
                ),
              ),
          ],
        );
      },
    );
  }
}
