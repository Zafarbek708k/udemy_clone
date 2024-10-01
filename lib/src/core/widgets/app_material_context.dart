import "dart:async";
import "dart:developer";

import "package:connectivity_plus/connectivity_plus.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "../../feature/settings/inherited_locale_notifier.dart";
import "../../feature/settings/inherited_theme_notifier.dart";
import "../../feature/settings/locale_controller.dart";
import "../../feature/settings/theme_controller.dart";
import "../routes/app_router.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";


final ThemeController themeController = ThemeController();
final LocalController localController = LocalController();



class AppMaterialContext extends StatefulWidget {
  const AppMaterialContext({super.key});

  @override
  State<AppMaterialContext> createState() => _AppMaterialContextState();
}

class _AppMaterialContextState extends State<AppMaterialContext> {
  @override
  Widget build(BuildContext context) => InheritedThemeNotifier(
    themeController: themeController,
    child: InheritedLocalNotifier(
      localController: localController,
      child: Builder(
        builder: (context) => MaterialApp.router(
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          debugShowCheckedModeBanner: false,
          theme: InheritedThemeNotifier.maybeOf(context)?.theme,
          locale: InheritedLocalNotifier.maybeOf(context)?.appLocal,
          routerConfig: AppRouter.router,
        ),
      ),
    ),
  );
}
