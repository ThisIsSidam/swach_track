import 'dart:io';

import 'package:equatable/equatable.dart';

class ReportForm extends Equatable {
  final String? title;
  final String? description;
  final List<File>? images;
  final String? reportedBy;

  // TODO: Have to use lat longs.. string for placeholder
  final String? location;

  const ReportForm({
    this.title,
    this.images,
    this.reportedBy,
    this.description,
    this.location,
  });

  ReportForm copyWith({
    String? title,
    String? description,
    List<File>? images,
    String? reportedBy,
    String? location,
  }) {
    return ReportForm(
      title: title ?? this.title,
      description: description ?? this.description,
      images: images ?? this.images,
      reportedBy: reportedBy ?? this.reportedBy,
      location: location ?? this.location,
    );
  }

  @override
  List<Object?> get props => [title, description, images, reportedBy, location];
}
