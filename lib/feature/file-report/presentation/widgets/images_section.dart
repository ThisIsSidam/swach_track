import 'package:flutter/material.dart';
import 'package:swach_track/core/extensions/context_ext.dart';
import 'package:swach_track/shared/app_text.dart';

import 'section_header.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionHeader(Icons.image_outlined, 'Images'),
        const SizedBox(height: 16),
        InkWell(
          onTap: () {
            // TODO: implement poster upload
          },
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
                Icon(Icons.upload, size: 40, color: Colors.grey),
                AppText.body1('Upload images (upto 3)', color: Colors.grey),
                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
