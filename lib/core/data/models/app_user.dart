enum AppUserType { citizen, worker }

class AppUser {
  final String? name;
  final AppUserType userType;

  AppUser({this.name, required this.userType});
}
