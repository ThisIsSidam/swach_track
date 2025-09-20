import 'package:flutter/material.dart';
import 'package:swach_track/shared/app_text.dart';

import '../../../../core/extensions/context_ext.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(this.icon, this.title, {super.key});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon, color: context.colors.onSurface, size: 24),
        const SizedBox(width: 8),
        AppText.title1(title, fontWeight: FontWeight.bold),
      ],
    );
  }
}
