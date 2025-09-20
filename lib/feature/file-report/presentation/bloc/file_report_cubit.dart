import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/report_form.dart';

class FileReportCubit extends Cubit<ReportForm> {
  FileReportCubit() : super(const ReportForm());

  void updateTitle(String value) {
    final ReportForm current = state;
    final ReportForm updated = current.copyWith(title: value);
    emit(updated);
  }

  void updateDescription(String value) {
    final ReportForm current = state;
    final ReportForm updated = current.copyWith(description: value);
    emit(updated);
  }

  void addImage(File image) {
    final ReportForm current = state;
    final ReportForm updated = current.copyWith(
      images: [image, ...current.images ?? []],
    );
    emit(updated);
  }

  void removeImage(File image) {
    final ReportForm current = state;
    final updated = current.copyWith(
      images: List<File>.from(current.images ?? [])..remove(image),
    );
    emit(updated);
  }

  void onSubmitEvent() {
    // Here you can add form validation or API call logic
    // Fake delay for demo
    Future<void>.delayed(const Duration(seconds: 2), () {
      emit(state);
    });
  }
}
