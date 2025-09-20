import 'package:equatable/equatable.dart';

class Report extends Equatable {
  final String reportId;
  final String title;
  final String? description;
  final List<String> imageUrls;
  final String reportedBy;

  const Report({
    required this.reportId,
    required this.title,
    required this.imageUrls,
    required this.reportedBy,
    this.description,
  });

  @override
  List<Object?> get props => [
    reportId,
    title,
    description,
    imageUrls,
    reportedBy,
  ];
}
