import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plane_startup/config/const.dart';
import 'package:plane_startup/provider/auth_provider.dart';
import 'package:plane_startup/provider/cycles_provider.dart';
import 'package:plane_startup/provider/file_upload_provider.dart';
import 'package:plane_startup/provider/issue_provider.dart';
import 'package:plane_startup/provider/profile_provider.dart';
import 'package:plane_startup/provider/projects_provider.dart';
import 'package:plane_startup/provider/search_issue_provider.dart';
import 'package:plane_startup/provider/workspace_provider.dart';
import 'package:plane_startup/services/shared_preference_service.dart';

import 'issues_provider.dart';
import 'theme_provider.dart';

class ProviderList {
  static final authProvider =
      ChangeNotifierProvider<AuthProvider>((ref) => AuthProvider(ref));
  static final profileProvider =
      ChangeNotifierProvider<ProfileProvider>((_) => ProfileProvider());
  static final workspaceProvider = ChangeNotifierProvider<WorkspaceProvider>(
      (ref) => WorkspaceProvider(ref));
  static var themeProvider =
      ChangeNotifierProvider<ThemeProvider>((_) => ThemeProvider());
  static var projectProvider =
      ChangeNotifierProvider<ProjectsProvider>((_) => ProjectsProvider());
  static var fileUploadProvider = ChangeNotifierProvider<FileUploadProvider>(
      (ref) => FileUploadProvider(ref));
  static var issuesProvider =
      ChangeNotifierProvider<IssuesProvider>((ref) => IssuesProvider(ref));
  static var issueProvider =
      ChangeNotifierProvider<IssueProvider>((_) => IssueProvider());
  static var searchIssueProvider =
      ChangeNotifierProvider<SearchIssueProvider>((_) => SearchIssueProvider());
  static var cyclesProvider =
      ChangeNotifierProvider<CyclesProvider>((_) => CyclesProvider());

  static void clear({required WidgetRef ref}) {
    ref.read(issueProvider).clear();
    ref.read(issuesProvider).clear();
    ref.read(profileProvider).clear();
    ref.read(projectProvider).clear();
    ref.read(searchIssueProvider).clear();
    ref.read(workspaceProvider).clear();
    ref.read(themeProvider).clear();
    SharedPrefrenceServices.sharedPreferences!.clear();
    Const.appBearerToken = null;
    Const.isLoggedIn = false;
    Const.signUp = false;
  }
}
