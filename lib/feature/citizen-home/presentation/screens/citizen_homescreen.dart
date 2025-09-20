import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:swach_track/app/router/routes.dart';
import 'package:swach_track/feature/citizen-home/presentation/blocs/reports_cubit.dart';
import 'package:swach_track/shared/app_text.dart';

class CitizenHomeScreen extends StatelessWidget {
  const CitizenHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ReportsCubit()..fetchReports(),
      child: Scaffold(
        appBar: AppBar(title: const AppText.title1("Your Reports")),
        body: BlocBuilder<ReportsCubit, ReportsState>(
          builder: (context, state) {
            if (state is ReportsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ReportsLoaded) {
              if (state.reports.isEmpty) {
                return _EmptyReports(
                  onAdd: () => context.push(AppRoute.fileReport.path),
                );
              }
              return ListView.builder(
                itemCount: state.reports.length,
                itemBuilder: (context, index) {
                  final report = state.reports[index];
                  return ListTile(
                    title: AppText.body1(report.title),
                    subtitle: report.description == null
                        ? null
                        : AppText.caption(report.description!),
                    leading: report.imageUrls.isNotEmpty
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              report.imageUrls.first,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.report),
                            ),
                          )
                        : const Icon(Icons.report),
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
        floatingActionButton: BlocBuilder<ReportsCubit, ReportsState>(
          builder: (context, state) {
            if (state is ReportsLoaded && state.reports.isNotEmpty) {
              return FloatingActionButton.extended(
                onPressed: () => context.push(AppRoute.fileReport.path),
                icon: const Icon(Icons.add),
                label: AppText.body1('File a report'),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

class _EmptyReports extends StatelessWidget {
  final VoidCallback onAdd;

  const _EmptyReports({required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.folder_open, size: 80, color: Colors.grey),
          const SizedBox(height: 12),
          const AppText.body2("No reports yet", color: Colors.grey),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: onAdd,
            icon: const Icon(Icons.add),
            label: const AppText.caption("Add Report"),
          ),
        ],
      ),
    );
  }
}
