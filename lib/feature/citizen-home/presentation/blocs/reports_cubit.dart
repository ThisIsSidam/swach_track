import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swach_track/feature/citizen-home/data/models/report.dart';

class ReportsCubit extends Cubit<ReportsState> {
  ReportsCubit() : super(ReportsInitial());

  Future<void> fetchReports() async {
    emit(ReportsLoading());
    await Future.delayed(const Duration(seconds: 1)); // simulate loading

    // mock data
    final reports = [
      Report(
        reportId: "1",
        title: "Garbage not collected",
        description:
            "The garbage in sector 12 has not been collected for 3 days.",
        imageUrls: [
          "https://staticimg.amarujala.com/assets/images/2016/04/07/garbage_1460034642.jpeg?w=414&dpr=1.0&q=80",
        ],
        reportedBy: "user123",
      ),
      Report(
        reportId: "2",
        title: "Broken streetlight",
        description: "Streetlight near the park is broken.",
        imageUrls: [],
        reportedBy: "user456",
      ),
    ];

    emit(ReportsLoaded(reports));
  }
}

abstract class ReportsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ReportsInitial extends ReportsState {}

class ReportsLoading extends ReportsState {}

class ReportsLoaded extends ReportsState {
  final List<Report> reports;

  ReportsLoaded(this.reports);

  @override
  List<Object?> get props => [reports];
}
