import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/app_localizations.dart';
import 'services/language_service.dart';
import 'services/auth_service.dart';
import 'services/quiz_service.dart';
import 'services/gamification_service.dart';
import 'services/connectivity_service.dart';
import 'utils/app_router.dart';
import 'utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ConnectivityService()),
        ChangeNotifierProvider(create: (_) => LanguageService(prefs)),
        ChangeNotifierProvider(create: (_) => AuthService(prefs)),
        ChangeNotifierProvider(create: (_) => QuizService()),
        ChangeNotifierProxyProvider<AuthService, GamificationService>(
          create: (context) => GamificationService(context.read<AuthService>()),
          update: (context, auth, previous) => GamificationService(auth),
        ),
      ],
      child: const SurakhaKavachApp(),
    ),
  );
}

class SurakhaKavachApp extends StatelessWidget {
  const SurakhaKavachApp({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthService>();
    final languageProvider = context.watch<LanguageService>();
    return MaterialApp.router(
      title: 'Surakha Kavach',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      locale: languageProvider.currentLocale,
      // --- Localization Configuration ---
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('hi', ''),
        Locale('mr', ''),
      ],

      // This helper ensures the app picks the right language from the phone settings
      localeListResolutionCallback: (locales, supportedLocales) {
        for (var locale in locales!) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode) {
              return supportedLocale;
            }
          }
        }
        return supportedLocales.first;
      },

      routerConfig: AppRouter.createRouter(auth),
    );
  }
}
