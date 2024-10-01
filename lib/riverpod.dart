
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:udemy_clone/src/feature/entry/vm/entry_view_model.dart";
import "package:udemy_clone/src/feature/settings/locale_controller.dart";
import "package:udemy_clone/src/feature/settings/theme_controller.dart";

final theme = ChangeNotifierProvider((ref) => ThemeController());
final locale = ChangeNotifierProvider((ref) => LocalController());


  // splash onBoarding
final entryController = ChangeNotifierProvider((ref) => EntryViewModel());

// final homeNavigationController = ChangeNotifierProvider((ref) => HomeViewModel());
// final homePageController = ChangeNotifierProvider((ref) => HomeViewModel());
