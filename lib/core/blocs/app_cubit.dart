import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swach_track/core/data/models/app_user.dart';

class AppCubit extends Cubit<AppUser?> {
  AppCubit() : super(null);

  void setUser(AppUser? user) => emit(user);
}
