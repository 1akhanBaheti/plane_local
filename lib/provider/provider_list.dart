import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plane_startup/provider/auth_provider.dart';
import 'package:plane_startup/provider/theme_provider.dart';

class ProviderList {
  static var userProvider =
      ChangeNotifierProvider<AuthProvider>((_) => AuthProvider());

  static var themeProvider =
      ChangeNotifierProvider<ThemeProvider>((_) => ThemeProvider());
}
