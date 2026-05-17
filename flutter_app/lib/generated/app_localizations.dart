import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_mr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi'),
    Locale('mr')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Suraksha Kavach'**
  String get appTitle;

  /// No description provided for @learningModules.
  ///
  /// In en, this message translates to:
  /// **'Learning Modules'**
  String get learningModules;

  /// No description provided for @emergencySos.
  ///
  /// In en, this message translates to:
  /// **'Emergency SOS'**
  String get emergencySos;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'Points'**
  String get points;

  /// No description provided for @streak.
  ///
  /// In en, this message translates to:
  /// **'Streak'**
  String get streak;

  /// No description provided for @badges.
  ///
  /// In en, this message translates to:
  /// **'Badges'**
  String get badges;

  /// No description provided for @safetyReadiness.
  ///
  /// In en, this message translates to:
  /// **'Safety Readiness'**
  String get safetyReadiness;

  /// No description provided for @preparedStatus.
  ///
  /// In en, this message translates to:
  /// **'Prepared for Disaster'**
  String get preparedStatus;

  /// No description provided for @fireSafety.
  ///
  /// In en, this message translates to:
  /// **'Fire Safety'**
  String get fireSafety;

  /// No description provided for @earthquake.
  ///
  /// In en, this message translates to:
  /// **'Earthquake'**
  String get earthquake;

  /// No description provided for @floodAlert.
  ///
  /// In en, this message translates to:
  /// **'Flood Alert'**
  String get floodAlert;

  /// No description provided for @interactive.
  ///
  /// In en, this message translates to:
  /// **'Interactive'**
  String get interactive;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @logoutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit?'**
  String get logoutConfirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @preparednessTitle.
  ///
  /// In en, this message translates to:
  /// **'{disaster} Preparedness'**
  String preparednessTitle(String disaster);

  /// No description provided for @interactiveGames.
  ///
  /// In en, this message translates to:
  /// **'Interactive Games'**
  String get interactiveGames;

  /// No description provided for @learnWatch.
  ///
  /// In en, this message translates to:
  /// **'Learn & Watch'**
  String get learnWatch;

  /// No description provided for @testYourQuiz.
  ///
  /// In en, this message translates to:
  /// **'Test Your Quiz'**
  String get testYourQuiz;

  /// No description provided for @liveRegionAlerts.
  ///
  /// In en, this message translates to:
  /// **'Regional Alerts'**
  String get liveRegionAlerts;

  /// No description provided for @realTimeUpdates.
  ///
  /// In en, this message translates to:
  /// **'Real-time Updates'**
  String get realTimeUpdates;

  /// No description provided for @resourcesTitle.
  ///
  /// In en, this message translates to:
  /// **'{disaster} Resources'**
  String resourcesTitle(String disaster);

  /// No description provided for @chooseHowLearn.
  ///
  /// In en, this message translates to:
  /// **'Choose how you want to learn'**
  String get chooseHowLearn;

  /// No description provided for @readSafetyTips.
  ///
  /// In en, this message translates to:
  /// **'Read Safety Tips'**
  String get readSafetyTips;

  /// No description provided for @flashcardsGuidelines.
  ///
  /// In en, this message translates to:
  /// **'Flashcards and essential guidelines'**
  String get flashcardsGuidelines;

  /// No description provided for @watchVideos.
  ///
  /// In en, this message translates to:
  /// **'Watch Videos'**
  String get watchVideos;

  /// No description provided for @visualSurvivalGuides.
  ///
  /// In en, this message translates to:
  /// **'Visual survival guides and tutorials'**
  String get visualSurvivalGuides;

  /// No description provided for @modulesTitle.
  ///
  /// In en, this message translates to:
  /// **'{disaster} Modules'**
  String modulesTitle(String disaster);

  /// No description provided for @theBasics.
  ///
  /// In en, this message translates to:
  /// **'The Basics'**
  String get theBasics;

  /// No description provided for @levelsFundamental.
  ///
  /// In en, this message translates to:
  /// **'20 levels covering fundamental safety'**
  String get levelsFundamental;

  /// No description provided for @duringEvent.
  ///
  /// In en, this message translates to:
  /// **'During the Event'**
  String get duringEvent;

  /// No description provided for @immediateSteps.
  ///
  /// In en, this message translates to:
  /// **'Immediate safety steps'**
  String get immediateSteps;

  /// No description provided for @recovery.
  ///
  /// In en, this message translates to:
  /// **'Recovery'**
  String get recovery;

  /// No description provided for @safeCleanup.
  ///
  /// In en, this message translates to:
  /// **'Safe cleanup and rebuilding'**
  String get safeCleanup;

  /// No description provided for @moduleBasics.
  ///
  /// In en, this message translates to:
  /// **'The Basics'**
  String get moduleBasics;

  /// No description provided for @moduleBasicsDesc.
  ///
  /// In en, this message translates to:
  /// **'20 levels covering fundamental {disaster} safety.'**
  String moduleBasicsDesc(String disaster);

  /// No description provided for @selectLevel.
  ///
  /// In en, this message translates to:
  /// **'SELECT LEVEL'**
  String get selectLevel;

  /// No description provided for @startQuiz.
  ///
  /// In en, this message translates to:
  /// **'START QUIZ'**
  String get startQuiz;

  /// No description provided for @yourProgress.
  ///
  /// In en, this message translates to:
  /// **'Your Progress'**
  String get yourProgress;

  /// No description provided for @levelNumber.
  ///
  /// In en, this message translates to:
  /// **'Level {number}'**
  String levelNumber(int number);

  /// No description provided for @moduleDuring.
  ///
  /// In en, this message translates to:
  /// **'During the Event'**
  String get moduleDuring;

  /// No description provided for @moduleDuringDesc.
  ///
  /// In en, this message translates to:
  /// **'Immediate safety steps.'**
  String get moduleDuringDesc;

  /// No description provided for @moduleRecovery.
  ///
  /// In en, this message translates to:
  /// **'Recovery'**
  String get moduleRecovery;

  /// No description provided for @moduleRecoveryDesc.
  ///
  /// In en, this message translates to:
  /// **'Safe cleanup and rebuilding.'**
  String get moduleRecoveryDesc;

  /// No description provided for @videoGuidesTitle.
  ///
  /// In en, this message translates to:
  /// **'{disaster} Video Guides'**
  String videoGuidesTitle(Object disaster);

  /// No description provided for @lessonCount.
  ///
  /// In en, this message translates to:
  /// **'Lesson {number}'**
  String lessonCount(Object number);

  /// No description provided for @v_flood_1.
  ///
  /// In en, this message translates to:
  /// **'Flood Survival Guide'**
  String get v_flood_1;

  /// No description provided for @v_flood_2.
  ///
  /// In en, this message translates to:
  /// **'Turn Around Don\'t Drown'**
  String get v_flood_2;

  /// No description provided for @v_flood_3.
  ///
  /// In en, this message translates to:
  /// **'Water Safety'**
  String get v_flood_3;

  /// No description provided for @v_flood_4.
  ///
  /// In en, this message translates to:
  /// **'Protecting Your Home'**
  String get v_flood_4;

  /// No description provided for @v_flood_5.
  ///
  /// In en, this message translates to:
  /// **'Post-Flood Health'**
  String get v_flood_5;

  /// No description provided for @v_fire_song.
  ///
  /// In en, this message translates to:
  /// **'Fire Safety Song'**
  String get v_fire_song;

  /// No description provided for @v_fire_1.
  ///
  /// In en, this message translates to:
  /// **'Home Fire Survival'**
  String get v_fire_1;

  /// No description provided for @v_fire_2.
  ///
  /// In en, this message translates to:
  /// **'Using Extinguishers'**
  String get v_fire_2;

  /// No description provided for @v_fire_3.
  ///
  /// In en, this message translates to:
  /// **'Evacuation Drill'**
  String get v_fire_3;

  /// No description provided for @v_fire_4.
  ///
  /// In en, this message translates to:
  /// **'Kitchen Safety'**
  String get v_fire_4;

  /// No description provided for @v_earth_song.
  ///
  /// In en, this message translates to:
  /// **'Earthquake Song'**
  String get v_earth_song;

  /// No description provided for @v_earth_1.
  ///
  /// In en, this message translates to:
  /// **'Drop, Cover, Hold On'**
  String get v_earth_1;

  /// No description provided for @v_earth_2.
  ///
  /// In en, this message translates to:
  /// **'Indoor Safety'**
  String get v_earth_2;

  /// No description provided for @v_earth_3.
  ///
  /// In en, this message translates to:
  /// **'Building Resilience'**
  String get v_earth_3;

  /// No description provided for @v_earth_4.
  ///
  /// In en, this message translates to:
  /// **'Survival Kit'**
  String get v_earth_4;

  /// No description provided for @q_fire_1.
  ///
  /// In en, this message translates to:
  /// **'What should you shout if you see fire?'**
  String get q_fire_1;

  /// No description provided for @q_fire_1_opt0.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get q_fire_1_opt0;

  /// No description provided for @q_fire_1_opt1.
  ///
  /// In en, this message translates to:
  /// **'Fire'**
  String get q_fire_1_opt1;

  /// No description provided for @q_fire_1_opt2.
  ///
  /// In en, this message translates to:
  /// **'Run'**
  String get q_fire_1_opt2;

  /// No description provided for @q_fire_1_opt3.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get q_fire_1_opt3;

  /// No description provided for @q_fire_1_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_1_ans;

  /// No description provided for @tip_fire_1.
  ///
  /// In en, this message translates to:
  /// **'If you see fire, shout \'Fire!\' loudly to alert others. This helps people realize the danger quickly. Never stay silent. Inform nearby people and move to a safe location.'**
  String get tip_fire_1;

  /// No description provided for @q_fire_2.
  ///
  /// In en, this message translates to:
  /// **'What is the Fire emergency number?'**
  String get q_fire_2;

  /// No description provided for @q_fire_2_opt0.
  ///
  /// In en, this message translates to:
  /// **'100'**
  String get q_fire_2_opt0;

  /// No description provided for @q_fire_2_opt1.
  ///
  /// In en, this message translates to:
  /// **'101'**
  String get q_fire_2_opt1;

  /// No description provided for @q_fire_2_opt2.
  ///
  /// In en, this message translates to:
  /// **'102'**
  String get q_fire_2_opt2;

  /// No description provided for @q_fire_2_opt3.
  ///
  /// In en, this message translates to:
  /// **'108'**
  String get q_fire_2_opt3;

  /// No description provided for @q_fire_2_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_2_ans;

  /// No description provided for @tip_fire_2.
  ///
  /// In en, this message translates to:
  /// **'Dial 101 to call the Fire Brigade. Speak clearly and provide the exact location along with landmarks. Stay calm and follow instructions given on the call.'**
  String get tip_fire_2;

  /// No description provided for @q_fire_3.
  ///
  /// In en, this message translates to:
  /// **'What should you do if your clothes catch fire?'**
  String get q_fire_3;

  /// No description provided for @q_fire_3_opt0.
  ///
  /// In en, this message translates to:
  /// **'Run'**
  String get q_fire_3_opt0;

  /// No description provided for @q_fire_3_opt1.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get q_fire_3_opt1;

  /// No description provided for @q_fire_3_opt2.
  ///
  /// In en, this message translates to:
  /// **'Stop, Drop, and Roll'**
  String get q_fire_3_opt2;

  /// No description provided for @q_fire_3_opt3.
  ///
  /// In en, this message translates to:
  /// **'Jump'**
  String get q_fire_3_opt3;

  /// No description provided for @q_fire_3_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_fire_3_ans;

  /// No description provided for @tip_fire_3.
  ///
  /// In en, this message translates to:
  /// **'If your clothes catch fire, Stop running, Drop to the ground, and Roll to extinguish the flames. Running only makes the fire spread faster.'**
  String get tip_fire_3;

  /// No description provided for @q_fire_4.
  ///
  /// In en, this message translates to:
  /// **'What is the best way to exit a burning building?'**
  String get q_fire_4;

  /// No description provided for @q_fire_4_opt0.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get q_fire_4_opt0;

  /// No description provided for @q_fire_4_opt1.
  ///
  /// In en, this message translates to:
  /// **'Stairs'**
  String get q_fire_4_opt1;

  /// No description provided for @q_fire_4_opt2.
  ///
  /// In en, this message translates to:
  /// **'Jumping'**
  String get q_fire_4_opt2;

  /// No description provided for @q_fire_4_opt3.
  ///
  /// In en, this message translates to:
  /// **'Hiding'**
  String get q_fire_4_opt3;

  /// No description provided for @q_fire_4_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_4_ans;

  /// No description provided for @tip_fire_4.
  ///
  /// In en, this message translates to:
  /// **'Always use the stairs during a fire. Lifts may stop due to power cuts and can fill with smoke. Follow Exit signs and stay calm.'**
  String get tip_fire_4;

  /// No description provided for @q_fire_5.
  ///
  /// In en, this message translates to:
  /// **'Why should you stay low in a fire?'**
  String get q_fire_5;

  /// No description provided for @q_fire_5_opt0.
  ///
  /// In en, this message translates to:
  /// **'Air is cooler'**
  String get q_fire_5_opt0;

  /// No description provided for @q_fire_5_opt1.
  ///
  /// In en, this message translates to:
  /// **'Smoke rises up'**
  String get q_fire_5_opt1;

  /// No description provided for @q_fire_5_opt2.
  ///
  /// In en, this message translates to:
  /// **'Heat increases'**
  String get q_fire_5_opt2;

  /// No description provided for @q_fire_5_opt3.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get q_fire_5_opt3;

  /// No description provided for @q_fire_5_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_5_ans;

  /// No description provided for @tip_fire_5.
  ///
  /// In en, this message translates to:
  /// **'Smoke rises upwards, so cleaner air is found near the ground. Crawl low and cover your nose with a cloth to breathe safely.'**
  String get tip_fire_5;

  /// No description provided for @q_fire_6.
  ///
  /// In en, this message translates to:
  /// **'Which extinguisher should be used for electrical fires?'**
  String get q_fire_6;

  /// No description provided for @q_fire_6_opt0.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get q_fire_6_opt0;

  /// No description provided for @q_fire_6_opt1.
  ///
  /// In en, this message translates to:
  /// **'Foam'**
  String get q_fire_6_opt1;

  /// No description provided for @q_fire_6_opt2.
  ///
  /// In en, this message translates to:
  /// **'CO2'**
  String get q_fire_6_opt2;

  /// No description provided for @q_fire_6_opt3.
  ///
  /// In en, this message translates to:
  /// **'Oil'**
  String get q_fire_6_opt3;

  /// No description provided for @q_fire_6_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_fire_6_ans;

  /// No description provided for @tip_fire_6.
  ///
  /// In en, this message translates to:
  /// **'Use a CO2 extinguisher for electrical fires. Never use water as it can cause an electric shock.'**
  String get tip_fire_6;

  /// No description provided for @q_fire_7.
  ///
  /// In en, this message translates to:
  /// **'What should you do before opening a door during a fire?'**
  String get q_fire_7;

  /// No description provided for @q_fire_7_opt0.
  ///
  /// In en, this message translates to:
  /// **'Ignore it'**
  String get q_fire_7_opt0;

  /// No description provided for @q_fire_7_opt1.
  ///
  /// In en, this message translates to:
  /// **'Touch it'**
  String get q_fire_7_opt1;

  /// No description provided for @q_fire_7_opt2.
  ///
  /// In en, this message translates to:
  /// **'Open it quickly'**
  String get q_fire_7_opt2;

  /// No description provided for @q_fire_7_opt3.
  ///
  /// In en, this message translates to:
  /// **'Kick it'**
  String get q_fire_7_opt3;

  /// No description provided for @q_fire_7_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_7_ans;

  /// No description provided for @tip_fire_7.
  ///
  /// In en, this message translates to:
  /// **'Touch the door first. If it is hot, do not open it as there may be fire on the other side. Look for another safe exit.'**
  String get tip_fire_7;

  /// No description provided for @q_fire_8.
  ///
  /// In en, this message translates to:
  /// **'What helps fire spread quickly?'**
  String get q_fire_8;

  /// No description provided for @q_fire_8_opt0.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get q_fire_8_opt0;

  /// No description provided for @q_fire_8_opt1.
  ///
  /// In en, this message translates to:
  /// **'Wind'**
  String get q_fire_8_opt1;

  /// No description provided for @q_fire_8_opt2.
  ///
  /// In en, this message translates to:
  /// **'Sand'**
  String get q_fire_8_opt2;

  /// No description provided for @q_fire_8_opt3.
  ///
  /// In en, this message translates to:
  /// **'Cloth'**
  String get q_fire_8_opt3;

  /// No description provided for @q_fire_8_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_8_ans;

  /// No description provided for @tip_fire_8.
  ///
  /// In en, this message translates to:
  /// **'Wind provides more oxygen, which makes fire spread faster. Stay away from open, windy areas during a fire.'**
  String get tip_fire_8;

  /// No description provided for @q_fire_9.
  ///
  /// In en, this message translates to:
  /// **'What should you avoid using during a fire?'**
  String get q_fire_9;

  /// No description provided for @q_fire_9_opt0.
  ///
  /// In en, this message translates to:
  /// **'Stairs'**
  String get q_fire_9_opt0;

  /// No description provided for @q_fire_9_opt1.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get q_fire_9_opt1;

  /// No description provided for @q_fire_9_opt2.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get q_fire_9_opt2;

  /// No description provided for @q_fire_9_opt3.
  ///
  /// In en, this message translates to:
  /// **'Alarm'**
  String get q_fire_9_opt3;

  /// No description provided for @q_fire_9_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_fire_9_ans;

  /// No description provided for @tip_fire_9.
  ///
  /// In en, this message translates to:
  /// **'Never use lifts during a fire. They can malfunction and trap you. Always use stairs to escape.'**
  String get tip_fire_9;

  /// No description provided for @q_fire_10.
  ///
  /// In en, this message translates to:
  /// **'What does a fire alarm do?'**
  String get q_fire_10;

  /// No description provided for @q_fire_10_opt0.
  ///
  /// In en, this message translates to:
  /// **'Cools the air'**
  String get q_fire_10_opt0;

  /// No description provided for @q_fire_10_opt1.
  ///
  /// In en, this message translates to:
  /// **'Alerts people'**
  String get q_fire_10_opt1;

  /// No description provided for @q_fire_10_opt2.
  ///
  /// In en, this message translates to:
  /// **'Plays music'**
  String get q_fire_10_opt2;

  /// No description provided for @q_fire_10_opt3.
  ///
  /// In en, this message translates to:
  /// **'Lights up the room'**
  String get q_fire_10_opt3;

  /// No description provided for @q_fire_10_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_10_ans;

  /// No description provided for @tip_fire_10.
  ///
  /// In en, this message translates to:
  /// **'Fire alarms warn people of danger. When you hear it, evacuate immediately and head to a safe location.'**
  String get tip_fire_10;

  /// No description provided for @q_fire_11.
  ///
  /// In en, this message translates to:
  /// **'How to stop a small kitchen fire?'**
  String get q_fire_11;

  /// No description provided for @q_fire_11_opt0.
  ///
  /// In en, this message translates to:
  /// **'Paper'**
  String get q_fire_11_opt0;

  /// No description provided for @q_fire_11_opt1.
  ///
  /// In en, this message translates to:
  /// **'Cover with cloth'**
  String get q_fire_11_opt1;

  /// No description provided for @q_fire_11_opt2.
  ///
  /// In en, this message translates to:
  /// **'Oil'**
  String get q_fire_11_opt2;

  /// No description provided for @q_fire_11_opt3.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get q_fire_11_opt3;

  /// No description provided for @q_fire_11_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_11_ans;

  /// No description provided for @tip_fire_11.
  ///
  /// In en, this message translates to:
  /// **'Cover the fire with a lid or cloth to cut off oxygen. Never use water on an oil fire as it splashes the flames.'**
  String get tip_fire_11;

  /// No description provided for @q_fire_12.
  ///
  /// In en, this message translates to:
  /// **'What can smoke cause?'**
  String get q_fire_12;

  /// No description provided for @q_fire_12_opt0.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get q_fire_12_opt0;

  /// No description provided for @q_fire_12_opt1.
  ///
  /// In en, this message translates to:
  /// **'Breathing issues'**
  String get q_fire_12_opt1;

  /// No description provided for @q_fire_12_opt2.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get q_fire_12_opt2;

  /// No description provided for @q_fire_12_opt3.
  ///
  /// In en, this message translates to:
  /// **'Happiness'**
  String get q_fire_12_opt3;

  /// No description provided for @q_fire_12_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_12_ans;

  /// No description provided for @tip_fire_12.
  ///
  /// In en, this message translates to:
  /// **'Smoke contains harmful gases and can cause breathing difficulties or fainting. Always move quickly toward fresh air.'**
  String get tip_fire_12;

  /// No description provided for @q_fire_13.
  ///
  /// In en, this message translates to:
  /// **'Where is a safe place after escaping a fire?'**
  String get q_fire_13;

  /// No description provided for @q_fire_13_opt0.
  ///
  /// In en, this message translates to:
  /// **'Inside'**
  String get q_fire_13_opt0;

  /// No description provided for @q_fire_13_opt1.
  ///
  /// In en, this message translates to:
  /// **'Open ground'**
  String get q_fire_13_opt1;

  /// No description provided for @q_fire_13_opt2.
  ///
  /// In en, this message translates to:
  /// **'Basement'**
  String get q_fire_13_opt2;

  /// No description provided for @q_fire_13_opt3.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get q_fire_13_opt3;

  /// No description provided for @q_fire_13_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_13_ans;

  /// No description provided for @tip_fire_13.
  ///
  /// In en, this message translates to:
  /// **'Go to an open safe area after escaping. Stay there and do not go back inside.'**
  String get tip_fire_13;

  /// No description provided for @q_fire_14.
  ///
  /// In en, this message translates to:
  /// **'What should you do during a gas leak?'**
  String get q_fire_14;

  /// No description provided for @q_fire_14_opt0.
  ///
  /// In en, this message translates to:
  /// **'Turn on lights'**
  String get q_fire_14_opt0;

  /// No description provided for @q_fire_14_opt1.
  ///
  /// In en, this message translates to:
  /// **'Turn off gas'**
  String get q_fire_14_opt1;

  /// No description provided for @q_fire_14_opt2.
  ///
  /// In en, this message translates to:
  /// **'Use fire'**
  String get q_fire_14_opt2;

  /// No description provided for @q_fire_14_opt3.
  ///
  /// In en, this message translates to:
  /// **'Run AC'**
  String get q_fire_14_opt3;

  /// No description provided for @q_fire_14_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_14_ans;

  /// No description provided for @tip_fire_14.
  ///
  /// In en, this message translates to:
  /// **'Turn off the gas supply and avoid using switches or open flames. Leave the area and inform others.'**
  String get tip_fire_14;

  /// No description provided for @q_fire_15.
  ///
  /// In en, this message translates to:
  /// **'What is needed for a fire to burn?'**
  String get q_fire_15;

  /// No description provided for @q_fire_15_opt0.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get q_fire_15_opt0;

  /// No description provided for @q_fire_15_opt1.
  ///
  /// In en, this message translates to:
  /// **'Heat, Fuel, Oxygen'**
  String get q_fire_15_opt1;

  /// No description provided for @q_fire_15_opt2.
  ///
  /// In en, this message translates to:
  /// **'Only air'**
  String get q_fire_15_opt2;

  /// No description provided for @q_fire_15_opt3.
  ///
  /// In en, this message translates to:
  /// **'Nothing'**
  String get q_fire_15_opt3;

  /// No description provided for @q_fire_15_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_15_ans;

  /// No description provided for @tip_fire_15.
  ///
  /// In en, this message translates to:
  /// **'Fire needs heat, fuel, and oxygen. Removing any one of these will stop the fire.'**
  String get tip_fire_15;

  /// No description provided for @q_fire_16.
  ///
  /// In en, this message translates to:
  /// **'Why use a wet cloth?'**
  String get q_fire_16;

  /// No description provided for @q_fire_16_opt0.
  ///
  /// In en, this message translates to:
  /// **'To play'**
  String get q_fire_16_opt0;

  /// No description provided for @q_fire_16_opt1.
  ///
  /// In en, this message translates to:
  /// **'To breathe safely'**
  String get q_fire_16_opt1;

  /// No description provided for @q_fire_16_opt2.
  ///
  /// In en, this message translates to:
  /// **'To sleep'**
  String get q_fire_16_opt2;

  /// No description provided for @q_fire_16_opt3.
  ///
  /// In en, this message translates to:
  /// **'To clean'**
  String get q_fire_16_opt3;

  /// No description provided for @q_fire_16_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_16_ans;

  /// No description provided for @tip_fire_16.
  ///
  /// In en, this message translates to:
  /// **'A wet cloth helps filter smoke and makes it easier to breathe while escaping a fire.'**
  String get tip_fire_16;

  /// No description provided for @q_fire_17.
  ///
  /// In en, this message translates to:
  /// **'Which item is risky to store near heat?'**
  String get q_fire_17;

  /// No description provided for @q_fire_17_opt0.
  ///
  /// In en, this message translates to:
  /// **'Books'**
  String get q_fire_17_opt0;

  /// No description provided for @q_fire_17_opt1.
  ///
  /// In en, this message translates to:
  /// **'Fuel'**
  String get q_fire_17_opt1;

  /// No description provided for @q_fire_17_opt2.
  ///
  /// In en, this message translates to:
  /// **'Shoes'**
  String get q_fire_17_opt2;

  /// No description provided for @q_fire_17_opt3.
  ///
  /// In en, this message translates to:
  /// **'Toys'**
  String get q_fire_17_opt3;

  /// No description provided for @q_fire_17_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_17_ans;

  /// No description provided for @tip_fire_17.
  ///
  /// In en, this message translates to:
  /// **'Fuel is highly flammable. Store it safely away from heat and fire sources.'**
  String get tip_fire_17;

  /// No description provided for @q_fire_18.
  ///
  /// In en, this message translates to:
  /// **'Why practice fire drills?'**
  String get q_fire_18;

  /// No description provided for @q_fire_18_opt0.
  ///
  /// In en, this message translates to:
  /// **'Fun'**
  String get q_fire_18_opt0;

  /// No description provided for @q_fire_18_opt1.
  ///
  /// In en, this message translates to:
  /// **'Safety practice'**
  String get q_fire_18_opt1;

  /// No description provided for @q_fire_18_opt2.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get q_fire_18_opt2;

  /// No description provided for @q_fire_18_opt3.
  ///
  /// In en, this message translates to:
  /// **'Time pass'**
  String get q_fire_18_opt3;

  /// No description provided for @q_fire_18_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_18_ans;

  /// No description provided for @tip_fire_18.
  ///
  /// In en, this message translates to:
  /// **'Fire drills help you learn how to act in emergencies. They make you prepared and confident.'**
  String get tip_fire_18;

  /// No description provided for @q_fire_19.
  ///
  /// In en, this message translates to:
  /// **'What to do when an alarm sounds?'**
  String get q_fire_19;

  /// No description provided for @q_fire_19_opt0.
  ///
  /// In en, this message translates to:
  /// **'Ignore it'**
  String get q_fire_19_opt0;

  /// No description provided for @q_fire_19_opt1.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get q_fire_19_opt1;

  /// No description provided for @q_fire_19_opt2.
  ///
  /// In en, this message translates to:
  /// **'Go outside'**
  String get q_fire_19_opt2;

  /// No description provided for @q_fire_19_opt3.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get q_fire_19_opt3;

  /// No description provided for @q_fire_19_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_fire_19_ans;

  /// No description provided for @tip_fire_19.
  ///
  /// In en, this message translates to:
  /// **'Leave immediately when the alarm sounds. Stay calm, do not push, and follow exit routes.'**
  String get tip_fire_19;

  /// No description provided for @q_fire_20.
  ///
  /// In en, this message translates to:
  /// **'Who helps in a fire emergency?'**
  String get q_fire_20;

  /// No description provided for @q_fire_20_opt0.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get q_fire_20_opt0;

  /// No description provided for @q_fire_20_opt1.
  ///
  /// In en, this message translates to:
  /// **'Firefighters'**
  String get q_fire_20_opt1;

  /// No description provided for @q_fire_20_opt2.
  ///
  /// In en, this message translates to:
  /// **'Driver'**
  String get q_fire_20_opt2;

  /// No description provided for @q_fire_20_opt3.
  ///
  /// In en, this message translates to:
  /// **'Shopkeeper'**
  String get q_fire_20_opt3;

  /// No description provided for @q_fire_20_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_fire_20_ans;

  /// No description provided for @tip_fire_20.
  ///
  /// In en, this message translates to:
  /// **'Firefighters are trained to control fires and rescue people. Always follow their instructions.'**
  String get tip_fire_20;

  /// No description provided for @q_earthquake_1.
  ///
  /// In en, this message translates to:
  /// **'What should you do during an earthquake?'**
  String get q_earthquake_1;

  /// No description provided for @q_earthquake_1_opt0.
  ///
  /// In en, this message translates to:
  /// **'Run outside'**
  String get q_earthquake_1_opt0;

  /// No description provided for @q_earthquake_1_opt1.
  ///
  /// In en, this message translates to:
  /// **'Jump'**
  String get q_earthquake_1_opt1;

  /// No description provided for @q_earthquake_1_opt2.
  ///
  /// In en, this message translates to:
  /// **'Drop, Cover, and Hold on'**
  String get q_earthquake_1_opt2;

  /// No description provided for @q_earthquake_1_opt3.
  ///
  /// In en, this message translates to:
  /// **'Hide in the lift'**
  String get q_earthquake_1_opt3;

  /// No description provided for @q_earthquake_1_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_earthquake_1_ans;

  /// No description provided for @tip_earthquake_1.
  ///
  /// In en, this message translates to:
  /// **'Follow the \'Drop, Cover, and Hold on\' rule. Drop to the floor, take cover under sturdy furniture, and hold on tight. This protects you from falling objects.'**
  String get tip_earthquake_1;

  /// No description provided for @q_earthquake_2.
  ///
  /// In en, this message translates to:
  /// **'Where is the safest place inside a building?'**
  String get q_earthquake_2;

  /// No description provided for @q_earthquake_2_opt0.
  ///
  /// In en, this message translates to:
  /// **'Near a window'**
  String get q_earthquake_2_opt0;

  /// No description provided for @q_earthquake_2_opt1.
  ///
  /// In en, this message translates to:
  /// **'Under a sturdy table'**
  String get q_earthquake_2_opt1;

  /// No description provided for @q_earthquake_2_opt2.
  ///
  /// In en, this message translates to:
  /// **'Balcony'**
  String get q_earthquake_2_opt2;

  /// No description provided for @q_earthquake_2_opt3.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get q_earthquake_2_opt3;

  /// No description provided for @q_earthquake_2_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_2_ans;

  /// No description provided for @tip_earthquake_2.
  ///
  /// In en, this message translates to:
  /// **'Stay under a strong table or desk. This protects you from falling fans, glass, and ceiling parts.'**
  String get tip_earthquake_2;

  /// No description provided for @q_earthquake_3.
  ///
  /// In en, this message translates to:
  /// **'What should be avoided during an earthquake?'**
  String get q_earthquake_3;

  /// No description provided for @q_earthquake_3_opt0.
  ///
  /// In en, this message translates to:
  /// **'Covering your head'**
  String get q_earthquake_3_opt0;

  /// No description provided for @q_earthquake_3_opt1.
  ///
  /// In en, this message translates to:
  /// **'Running outside'**
  String get q_earthquake_3_opt1;

  /// No description provided for @q_earthquake_3_opt2.
  ///
  /// In en, this message translates to:
  /// **'Dropping low'**
  String get q_earthquake_3_opt2;

  /// No description provided for @q_earthquake_3_opt3.
  ///
  /// In en, this message translates to:
  /// **'Holding the table'**
  String get q_earthquake_3_opt3;

  /// No description provided for @q_earthquake_3_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_3_ans;

  /// No description provided for @tip_earthquake_3.
  ///
  /// In en, this message translates to:
  /// **'Do not run outside during tremors. Falling objects and debris can injure you. Stay inside first and protect yourself.'**
  String get tip_earthquake_3;

  /// No description provided for @q_earthquake_4.
  ///
  /// In en, this message translates to:
  /// **'What should you do if you are outside?'**
  String get q_earthquake_4;

  /// No description provided for @q_earthquake_4_opt0.
  ///
  /// In en, this message translates to:
  /// **'Stand near a building'**
  String get q_earthquake_4_opt0;

  /// No description provided for @q_earthquake_4_opt1.
  ///
  /// In en, this message translates to:
  /// **'Move to an open area'**
  String get q_earthquake_4_opt1;

  /// No description provided for @q_earthquake_4_opt2.
  ///
  /// In en, this message translates to:
  /// **'Run inside'**
  String get q_earthquake_4_opt2;

  /// No description provided for @q_earthquake_4_opt3.
  ///
  /// In en, this message translates to:
  /// **'Stand under a tree'**
  String get q_earthquake_4_opt3;

  /// No description provided for @q_earthquake_4_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_4_ans;

  /// No description provided for @tip_earthquake_4.
  ///
  /// In en, this message translates to:
  /// **'Move to an open area away from buildings, trees, and poles. Stay there until the shaking stops.'**
  String get tip_earthquake_4;

  /// No description provided for @q_earthquake_5.
  ///
  /// In en, this message translates to:
  /// **'What must you protect during an earthquake?'**
  String get q_earthquake_5;

  /// No description provided for @q_earthquake_5_opt0.
  ///
  /// In en, this message translates to:
  /// **'Feet'**
  String get q_earthquake_5_opt0;

  /// No description provided for @q_earthquake_5_opt1.
  ///
  /// In en, this message translates to:
  /// **'Hands'**
  String get q_earthquake_5_opt1;

  /// No description provided for @q_earthquake_5_opt2.
  ///
  /// In en, this message translates to:
  /// **'Head and neck'**
  String get q_earthquake_5_opt2;

  /// No description provided for @q_earthquake_5_opt3.
  ///
  /// In en, this message translates to:
  /// **'Hair'**
  String get q_earthquake_5_opt3;

  /// No description provided for @q_earthquake_5_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_earthquake_5_ans;

  /// No description provided for @tip_earthquake_5.
  ///
  /// In en, this message translates to:
  /// **'Use your arms or a pillow to protect your head and neck. These parts are at highest risk of injury.'**
  String get tip_earthquake_5;

  /// No description provided for @q_earthquake_6.
  ///
  /// In en, this message translates to:
  /// **'What should you do if you are in bed?'**
  String get q_earthquake_6;

  /// No description provided for @q_earthquake_6_opt0.
  ///
  /// In en, this message translates to:
  /// **'Run outside'**
  String get q_earthquake_6_opt0;

  /// No description provided for @q_earthquake_6_opt1.
  ///
  /// In en, this message translates to:
  /// **'Stay there and cover your head'**
  String get q_earthquake_6_opt1;

  /// No description provided for @q_earthquake_6_opt2.
  ///
  /// In en, this message translates to:
  /// **'Jump'**
  String get q_earthquake_6_opt2;

  /// No description provided for @q_earthquake_6_opt3.
  ///
  /// In en, this message translates to:
  /// **'Hide under the bed'**
  String get q_earthquake_6_opt3;

  /// No description provided for @q_earthquake_6_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_6_ans;

  /// No description provided for @tip_earthquake_6.
  ///
  /// In en, this message translates to:
  /// **'Stay in bed and cover your head with a pillow. Do not run, as things might fall and injure you.'**
  String get tip_earthquake_6;

  /// No description provided for @q_earthquake_7.
  ///
  /// In en, this message translates to:
  /// **'What should you avoid using?'**
  String get q_earthquake_7;

  /// No description provided for @q_earthquake_7_opt0.
  ///
  /// In en, this message translates to:
  /// **'Stairs'**
  String get q_earthquake_7_opt0;

  /// No description provided for @q_earthquake_7_opt1.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get q_earthquake_7_opt1;

  /// No description provided for @q_earthquake_7_opt2.
  ///
  /// In en, this message translates to:
  /// **'Door'**
  String get q_earthquake_7_opt2;

  /// No description provided for @q_earthquake_7_opt3.
  ///
  /// In en, this message translates to:
  /// **'Table'**
  String get q_earthquake_7_opt3;

  /// No description provided for @q_earthquake_7_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_7_ans;

  /// No description provided for @tip_earthquake_7.
  ///
  /// In en, this message translates to:
  /// **'Never use lifts during an earthquake. Power may fail and you could get trapped.'**
  String get tip_earthquake_7;

  /// No description provided for @q_earthquake_8.
  ///
  /// In en, this message translates to:
  /// **'What should you check after an earthquake?'**
  String get q_earthquake_8;

  /// No description provided for @q_earthquake_8_opt0.
  ///
  /// In en, this message translates to:
  /// **'Clothes'**
  String get q_earthquake_8_opt0;

  /// No description provided for @q_earthquake_8_opt1.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get q_earthquake_8_opt1;

  /// No description provided for @q_earthquake_8_opt2.
  ///
  /// In en, this message translates to:
  /// **'Injuries and damage'**
  String get q_earthquake_8_opt2;

  /// No description provided for @q_earthquake_8_opt3.
  ///
  /// In en, this message translates to:
  /// **'TV'**
  String get q_earthquake_8_opt3;

  /// No description provided for @q_earthquake_8_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_earthquake_8_ans;

  /// No description provided for @tip_earthquake_8.
  ///
  /// In en, this message translates to:
  /// **'Check yourself and others for injuries. Look for damage like gas leaks or broken wires.'**
  String get tip_earthquake_8;

  /// No description provided for @q_earthquake_9.
  ///
  /// In en, this message translates to:
  /// **'What might fall during an earthquake?'**
  String get q_earthquake_9;

  /// No description provided for @q_earthquake_9_opt0.
  ///
  /// In en, this message translates to:
  /// **'Air'**
  String get q_earthquake_9_opt0;

  /// No description provided for @q_earthquake_9_opt1.
  ///
  /// In en, this message translates to:
  /// **'Furniture'**
  String get q_earthquake_9_opt1;

  /// No description provided for @q_earthquake_9_opt2.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get q_earthquake_9_opt2;

  /// No description provided for @q_earthquake_9_opt3.
  ///
  /// In en, this message translates to:
  /// **'Ground'**
  String get q_earthquake_9_opt3;

  /// No description provided for @q_earthquake_9_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_9_ans;

  /// No description provided for @tip_earthquake_9.
  ///
  /// In en, this message translates to:
  /// **'Heavy furniture, fans, and cupboards can fall. Stay away from them and take shelter.'**
  String get tip_earthquake_9;

  /// No description provided for @q_earthquake_10.
  ///
  /// In en, this message translates to:
  /// **'What should you do when near windows?'**
  String get q_earthquake_10;

  /// No description provided for @q_earthquake_10_opt0.
  ///
  /// In en, this message translates to:
  /// **'Stand close'**
  String get q_earthquake_10_opt0;

  /// No description provided for @q_earthquake_10_opt1.
  ///
  /// In en, this message translates to:
  /// **'Break the glass'**
  String get q_earthquake_10_opt1;

  /// No description provided for @q_earthquake_10_opt2.
  ///
  /// In en, this message translates to:
  /// **'Stay away'**
  String get q_earthquake_10_opt2;

  /// No description provided for @q_earthquake_10_opt3.
  ///
  /// In en, this message translates to:
  /// **'Open them'**
  String get q_earthquake_10_opt3;

  /// No description provided for @q_earthquake_10_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_earthquake_10_ans;

  /// No description provided for @tip_earthquake_10.
  ///
  /// In en, this message translates to:
  /// **'Glass can shatter and cause injury. Always stay away from windows during tremors.'**
  String get tip_earthquake_10;

  /// No description provided for @q_earthquake_11.
  ///
  /// In en, this message translates to:
  /// **'What to do after tremors stop?'**
  String get q_earthquake_11;

  /// No description provided for @q_earthquake_11_opt0.
  ///
  /// In en, this message translates to:
  /// **'Run blindly'**
  String get q_earthquake_11_opt0;

  /// No description provided for @q_earthquake_11_opt1.
  ///
  /// In en, this message translates to:
  /// **'Check for safety'**
  String get q_earthquake_11_opt1;

  /// No description provided for @q_earthquake_11_opt2.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get q_earthquake_11_opt2;

  /// No description provided for @q_earthquake_11_opt3.
  ///
  /// In en, this message translates to:
  /// **'Ignore it'**
  String get q_earthquake_11_opt3;

  /// No description provided for @q_earthquake_11_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_11_ans;

  /// No description provided for @tip_earthquake_11.
  ///
  /// In en, this message translates to:
  /// **'After the shaking stops, move carefully and check for hazards before going outside.'**
  String get tip_earthquake_11;

  /// No description provided for @q_earthquake_12.
  ///
  /// In en, this message translates to:
  /// **'What is an aftershock?'**
  String get q_earthquake_12;

  /// No description provided for @q_earthquake_12_opt0.
  ///
  /// In en, this message translates to:
  /// **'Heavy rain'**
  String get q_earthquake_12_opt0;

  /// No description provided for @q_earthquake_12_opt1.
  ///
  /// In en, this message translates to:
  /// **'Smaller tremors'**
  String get q_earthquake_12_opt1;

  /// No description provided for @q_earthquake_12_opt2.
  ///
  /// In en, this message translates to:
  /// **'Fire'**
  String get q_earthquake_12_opt2;

  /// No description provided for @q_earthquake_12_opt3.
  ///
  /// In en, this message translates to:
  /// **'Wind'**
  String get q_earthquake_12_opt3;

  /// No description provided for @q_earthquake_12_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_12_ans;

  /// No description provided for @tip_earthquake_12.
  ///
  /// In en, this message translates to:
  /// **'Aftershocks are smaller earthquakes that come after the main earthquake. Stay alert and prepared.'**
  String get tip_earthquake_12;

  /// No description provided for @q_earthquake_13.
  ///
  /// In en, this message translates to:
  /// **'Where should you NOT stand outside?'**
  String get q_earthquake_13;

  /// No description provided for @q_earthquake_13_opt0.
  ///
  /// In en, this message translates to:
  /// **'Open ground'**
  String get q_earthquake_13_opt0;

  /// No description provided for @q_earthquake_13_opt1.
  ///
  /// In en, this message translates to:
  /// **'Near buildings'**
  String get q_earthquake_13_opt1;

  /// No description provided for @q_earthquake_13_opt2.
  ///
  /// In en, this message translates to:
  /// **'Empty field'**
  String get q_earthquake_13_opt2;

  /// No description provided for @q_earthquake_13_opt3.
  ///
  /// In en, this message translates to:
  /// **'Playground'**
  String get q_earthquake_13_opt3;

  /// No description provided for @q_earthquake_13_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_13_ans;

  /// No description provided for @tip_earthquake_13.
  ///
  /// In en, this message translates to:
  /// **'Stay away from buildings as parts may fall and cause injury.'**
  String get tip_earthquake_13;

  /// No description provided for @q_earthquake_14.
  ///
  /// In en, this message translates to:
  /// **'What should you do if you are trapped?'**
  String get q_earthquake_14;

  /// No description provided for @q_earthquake_14_opt0.
  ///
  /// In en, this message translates to:
  /// **'Shout loudly'**
  String get q_earthquake_14_opt0;

  /// No description provided for @q_earthquake_14_opt1.
  ///
  /// In en, this message translates to:
  /// **'Stay calm and tap'**
  String get q_earthquake_14_opt1;

  /// No description provided for @q_earthquake_14_opt2.
  ///
  /// In en, this message translates to:
  /// **'Run'**
  String get q_earthquake_14_opt2;

  /// No description provided for @q_earthquake_14_opt3.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get q_earthquake_14_opt3;

  /// No description provided for @q_earthquake_14_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_14_ans;

  /// No description provided for @tip_earthquake_14.
  ///
  /// In en, this message translates to:
  /// **'Stay calm and tap on objects to make sound. This makes it easier for rescue teams to find you.'**
  String get tip_earthquake_14;

  /// No description provided for @q_earthquake_15.
  ///
  /// In en, this message translates to:
  /// **'What should you keep ready?'**
  String get q_earthquake_15;

  /// No description provided for @q_earthquake_15_opt0.
  ///
  /// In en, this message translates to:
  /// **'Toys'**
  String get q_earthquake_15_opt0;

  /// No description provided for @q_earthquake_15_opt1.
  ///
  /// In en, this message translates to:
  /// **'Emergency kit'**
  String get q_earthquake_15_opt1;

  /// No description provided for @q_earthquake_15_opt2.
  ///
  /// In en, this message translates to:
  /// **'Games'**
  String get q_earthquake_15_opt2;

  /// No description provided for @q_earthquake_15_opt3.
  ///
  /// In en, this message translates to:
  /// **'Books'**
  String get q_earthquake_15_opt3;

  /// No description provided for @q_earthquake_15_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_15_ans;

  /// No description provided for @tip_earthquake_15.
  ///
  /// In en, this message translates to:
  /// **'Keep an emergency kit ready at home with water, food, torch, and first aid.'**
  String get tip_earthquake_15;

  /// No description provided for @q_earthquake_16.
  ///
  /// In en, this message translates to:
  /// **'What should you do at school?'**
  String get q_earthquake_16;

  /// No description provided for @q_earthquake_16_opt0.
  ///
  /// In en, this message translates to:
  /// **'Run'**
  String get q_earthquake_16_opt0;

  /// No description provided for @q_earthquake_16_opt1.
  ///
  /// In en, this message translates to:
  /// **'Listen to the teacher'**
  String get q_earthquake_16_opt1;

  /// No description provided for @q_earthquake_16_opt2.
  ///
  /// In en, this message translates to:
  /// **'Hide alone'**
  String get q_earthquake_16_opt2;

  /// No description provided for @q_earthquake_16_opt3.
  ///
  /// In en, this message translates to:
  /// **'Jump'**
  String get q_earthquake_16_opt3;

  /// No description provided for @q_earthquake_16_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_16_ans;

  /// No description provided for @tip_earthquake_16.
  ///
  /// In en, this message translates to:
  /// **'Always listen to your teacher. Follow safety instructions and stay calm.'**
  String get tip_earthquake_16;

  /// No description provided for @q_earthquake_17.
  ///
  /// In en, this message translates to:
  /// **'What should you do when near electricity?'**
  String get q_earthquake_17;

  /// No description provided for @q_earthquake_17_opt0.
  ///
  /// In en, this message translates to:
  /// **'Touch wires'**
  String get q_earthquake_17_opt0;

  /// No description provided for @q_earthquake_17_opt1.
  ///
  /// In en, this message translates to:
  /// **'Stay away'**
  String get q_earthquake_17_opt1;

  /// No description provided for @q_earthquake_17_opt2.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get q_earthquake_17_opt2;

  /// No description provided for @q_earthquake_17_opt3.
  ///
  /// In en, this message translates to:
  /// **'Break wires'**
  String get q_earthquake_17_opt3;

  /// No description provided for @q_earthquake_17_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_17_ans;

  /// No description provided for @tip_earthquake_17.
  ///
  /// In en, this message translates to:
  /// **'Stay away from damaged electric wires. They can give an electric shock.'**
  String get tip_earthquake_17;

  /// No description provided for @q_earthquake_18.
  ///
  /// In en, this message translates to:
  /// **'What should you do with the gas supply?'**
  String get q_earthquake_18;

  /// No description provided for @q_earthquake_18_opt0.
  ///
  /// In en, this message translates to:
  /// **'Turn off'**
  String get q_earthquake_18_opt0;

  /// No description provided for @q_earthquake_18_opt1.
  ///
  /// In en, this message translates to:
  /// **'Turn on'**
  String get q_earthquake_18_opt1;

  /// No description provided for @q_earthquake_18_opt2.
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get q_earthquake_18_opt2;

  /// No description provided for @q_earthquake_18_opt3.
  ///
  /// In en, this message translates to:
  /// **'Break pipe'**
  String get q_earthquake_18_opt3;

  /// No description provided for @q_earthquake_18_ans.
  ///
  /// In en, this message translates to:
  /// **'0'**
  String get q_earthquake_18_ans;

  /// No description provided for @tip_earthquake_18.
  ///
  /// In en, this message translates to:
  /// **'Turn off the gas supply after an earthquake to prevent fire or explosions.'**
  String get tip_earthquake_18;

  /// No description provided for @q_earthquake_19.
  ///
  /// In en, this message translates to:
  /// **'Why stay calm?'**
  String get q_earthquake_19;

  /// No description provided for @q_earthquake_19_opt0.
  ///
  /// In en, this message translates to:
  /// **'For fun'**
  String get q_earthquake_19_opt0;

  /// No description provided for @q_earthquake_19_opt1.
  ///
  /// In en, this message translates to:
  /// **'To think clearly'**
  String get q_earthquake_19_opt1;

  /// No description provided for @q_earthquake_19_opt2.
  ///
  /// In en, this message translates to:
  /// **'To sleep'**
  String get q_earthquake_19_opt2;

  /// No description provided for @q_earthquake_19_opt3.
  ///
  /// In en, this message translates to:
  /// **'To ignore'**
  String get q_earthquake_19_opt3;

  /// No description provided for @q_earthquake_19_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_19_ans;

  /// No description provided for @tip_earthquake_19.
  ///
  /// In en, this message translates to:
  /// **'Staying calm helps you think properly and make safe decisions.'**
  String get tip_earthquake_19;

  /// No description provided for @q_earthquake_20.
  ///
  /// In en, this message translates to:
  /// **'Who helps after an earthquake?'**
  String get q_earthquake_20;

  /// No description provided for @q_earthquake_20_opt0.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get q_earthquake_20_opt0;

  /// No description provided for @q_earthquake_20_opt1.
  ///
  /// In en, this message translates to:
  /// **'Rescue teams'**
  String get q_earthquake_20_opt1;

  /// No description provided for @q_earthquake_20_opt2.
  ///
  /// In en, this message translates to:
  /// **'Driver'**
  String get q_earthquake_20_opt2;

  /// No description provided for @q_earthquake_20_opt3.
  ///
  /// In en, this message translates to:
  /// **'Shopkeeper'**
  String get q_earthquake_20_opt3;

  /// No description provided for @q_earthquake_20_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_earthquake_20_ans;

  /// No description provided for @tip_earthquake_20.
  ///
  /// In en, this message translates to:
  /// **'Rescue teams and emergency services help people during disasters. Follow their instructions.'**
  String get tip_earthquake_20;

  /// No description provided for @q_flood_1.
  ///
  /// In en, this message translates to:
  /// **'What should you do when you hear a flood warning?'**
  String get q_flood_1;

  /// No description provided for @q_flood_1_opt0.
  ///
  /// In en, this message translates to:
  /// **'Ignore it'**
  String get q_flood_1_opt0;

  /// No description provided for @q_flood_1_opt1.
  ///
  /// In en, this message translates to:
  /// **'Prepare and move to safety'**
  String get q_flood_1_opt1;

  /// No description provided for @q_flood_1_opt2.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get q_flood_1_opt2;

  /// No description provided for @q_flood_1_opt3.
  ///
  /// In en, this message translates to:
  /// **'Play outside'**
  String get q_flood_1_opt3;

  /// No description provided for @q_flood_1_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_1_ans;

  /// No description provided for @tip_flood_1.
  ///
  /// In en, this message translates to:
  /// **'Prepare immediately when you hear a flood warning. Pack essentials like food, water, medicine, and documents. Move to a safe higher location.'**
  String get tip_flood_1;

  /// No description provided for @q_flood_2.
  ///
  /// In en, this message translates to:
  /// **'Where should you go during a flood?'**
  String get q_flood_2;

  /// No description provided for @q_flood_2_opt0.
  ///
  /// In en, this message translates to:
  /// **'Basement'**
  String get q_flood_2_opt0;

  /// No description provided for @q_flood_2_opt1.
  ///
  /// In en, this message translates to:
  /// **'Low-lying area'**
  String get q_flood_2_opt1;

  /// No description provided for @q_flood_2_opt2.
  ///
  /// In en, this message translates to:
  /// **'Higher ground'**
  String get q_flood_2_opt2;

  /// No description provided for @q_flood_2_opt3.
  ///
  /// In en, this message translates to:
  /// **'Drain'**
  String get q_flood_2_opt3;

  /// No description provided for @q_flood_2_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_flood_2_ans;

  /// No description provided for @tip_flood_2.
  ///
  /// In en, this message translates to:
  /// **'Always go to higher ground during a flood. Water collects in low areas and can rise quickly, creating danger.'**
  String get tip_flood_2;

  /// No description provided for @q_flood_3.
  ///
  /// In en, this message translates to:
  /// **'Where should you avoid walking?'**
  String get q_flood_3;

  /// No description provided for @q_flood_3_opt0.
  ///
  /// In en, this message translates to:
  /// **'Clean road'**
  String get q_flood_3_opt0;

  /// No description provided for @q_flood_3_opt1.
  ///
  /// In en, this message translates to:
  /// **'Flood water'**
  String get q_flood_3_opt1;

  /// No description provided for @q_flood_3_opt2.
  ///
  /// In en, this message translates to:
  /// **'Dry land'**
  String get q_flood_3_opt2;

  /// No description provided for @q_flood_3_opt3.
  ///
  /// In en, this message translates to:
  /// **'Bridge'**
  String get q_flood_3_opt3;

  /// No description provided for @q_flood_3_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_3_ans;

  /// No description provided for @tip_flood_3.
  ///
  /// In en, this message translates to:
  /// **'Never walk through flood water. It can be deep and fast, and may contain dangerous objects or open drains.'**
  String get tip_flood_3;

  /// No description provided for @q_flood_4.
  ///
  /// In en, this message translates to:
  /// **'Why is flood water dangerous?'**
  String get q_flood_4;

  /// No description provided for @q_flood_4_opt0.
  ///
  /// In en, this message translates to:
  /// **'It is clean'**
  String get q_flood_4_opt0;

  /// No description provided for @q_flood_4_opt1.
  ///
  /// In en, this message translates to:
  /// **'It is cold'**
  String get q_flood_4_opt1;

  /// No description provided for @q_flood_4_opt2.
  ///
  /// In en, this message translates to:
  /// **'It may have germs'**
  String get q_flood_4_opt2;

  /// No description provided for @q_flood_4_opt3.
  ///
  /// In en, this message translates to:
  /// **'It is fun'**
  String get q_flood_4_opt3;

  /// No description provided for @q_flood_4_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_flood_4_ans;

  /// No description provided for @tip_flood_4.
  ///
  /// In en, this message translates to:
  /// **'Flood water contains germs, chemicals, and dirt. This can cause illnesses and infections.'**
  String get tip_flood_4;

  /// No description provided for @q_flood_5.
  ///
  /// In en, this message translates to:
  /// **'What should you turn off during a flood?'**
  String get q_flood_5;

  /// No description provided for @q_flood_5_opt0.
  ///
  /// In en, this message translates to:
  /// **'Fan'**
  String get q_flood_5_opt0;

  /// No description provided for @q_flood_5_opt1.
  ///
  /// In en, this message translates to:
  /// **'Gas and electricity'**
  String get q_flood_5_opt1;

  /// No description provided for @q_flood_5_opt2.
  ///
  /// In en, this message translates to:
  /// **'Only TV'**
  String get q_flood_5_opt2;

  /// No description provided for @q_flood_5_opt3.
  ///
  /// In en, this message translates to:
  /// **'Only light'**
  String get q_flood_5_opt3;

  /// No description provided for @q_flood_5_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_5_ans;

  /// No description provided for @tip_flood_5.
  ///
  /// In en, this message translates to:
  /// **'Turn off electricity and gas during a flood to prevent electric shock and fire accidents.'**
  String get tip_flood_5;

  /// No description provided for @q_flood_6.
  ///
  /// In en, this message translates to:
  /// **'What should you keep with you in an emergency?'**
  String get q_flood_6;

  /// No description provided for @q_flood_6_opt0.
  ///
  /// In en, this message translates to:
  /// **'Toys'**
  String get q_flood_6_opt0;

  /// No description provided for @q_flood_6_opt1.
  ///
  /// In en, this message translates to:
  /// **'Emergency kit'**
  String get q_flood_6_opt1;

  /// No description provided for @q_flood_6_opt2.
  ///
  /// In en, this message translates to:
  /// **'Games'**
  String get q_flood_6_opt2;

  /// No description provided for @q_flood_6_opt3.
  ///
  /// In en, this message translates to:
  /// **'Shoes'**
  String get q_flood_6_opt3;

  /// No description provided for @q_flood_6_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_6_ans;

  /// No description provided for @tip_flood_6.
  ///
  /// In en, this message translates to:
  /// **'Keep an emergency kit ready with water, food, torch, batteries, and a first aid box.'**
  String get tip_flood_6;

  /// No description provided for @q_flood_7.
  ///
  /// In en, this message translates to:
  /// **'What to do if trapped in water?'**
  String get q_flood_7;

  /// No description provided for @q_flood_7_opt0.
  ///
  /// In en, this message translates to:
  /// **'Panic'**
  String get q_flood_7_opt0;

  /// No description provided for @q_flood_7_opt1.
  ///
  /// In en, this message translates to:
  /// **'Stay calm and call for help'**
  String get q_flood_7_opt1;

  /// No description provided for @q_flood_7_opt2.
  ///
  /// In en, this message translates to:
  /// **'Run fast'**
  String get q_flood_7_opt2;

  /// No description provided for @q_flood_7_opt3.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get q_flood_7_opt3;

  /// No description provided for @q_flood_7_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_7_ans;

  /// No description provided for @tip_flood_7.
  ///
  /// In en, this message translates to:
  /// **'Stay calm and try to reach a safe spot. Call out for help or signal others. Do not panic.'**
  String get tip_flood_7;

  /// No description provided for @q_flood_8.
  ///
  /// In en, this message translates to:
  /// **'Where should you avoid driving?'**
  String get q_flood_8;

  /// No description provided for @q_flood_8_opt0.
  ///
  /// In en, this message translates to:
  /// **'Road'**
  String get q_flood_8_opt0;

  /// No description provided for @q_flood_8_opt1.
  ///
  /// In en, this message translates to:
  /// **'Flood water'**
  String get q_flood_8_opt1;

  /// No description provided for @q_flood_8_opt2.
  ///
  /// In en, this message translates to:
  /// **'Bridge'**
  String get q_flood_8_opt2;

  /// No description provided for @q_flood_8_opt3.
  ///
  /// In en, this message translates to:
  /// **'Highway'**
  String get q_flood_8_opt3;

  /// No description provided for @q_flood_8_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_8_ans;

  /// No description provided for @tip_flood_8.
  ///
  /// In en, this message translates to:
  /// **'Never drive on flooded roads. Water can be deeper than it looks and can sweep vehicles away.'**
  String get tip_flood_8;

  /// No description provided for @q_flood_9.
  ///
  /// In en, this message translates to:
  /// **'What should you drink during a flood?'**
  String get q_flood_9;

  /// No description provided for @q_flood_9_opt0.
  ///
  /// In en, this message translates to:
  /// **'Flood water'**
  String get q_flood_9_opt0;

  /// No description provided for @q_flood_9_opt1.
  ///
  /// In en, this message translates to:
  /// **'Dirty water'**
  String get q_flood_9_opt1;

  /// No description provided for @q_flood_9_opt2.
  ///
  /// In en, this message translates to:
  /// **'Clean and safe water'**
  String get q_flood_9_opt2;

  /// No description provided for @q_flood_9_opt3.
  ///
  /// In en, this message translates to:
  /// **'River water'**
  String get q_flood_9_opt3;

  /// No description provided for @q_flood_9_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_flood_9_ans;

  /// No description provided for @tip_flood_9.
  ///
  /// In en, this message translates to:
  /// **'Only drink clean and safe water. Flood water may be contaminated and spread disease.'**
  String get tip_flood_9;

  /// No description provided for @q_flood_10.
  ///
  /// In en, this message translates to:
  /// **'What should you listen to during a flood?'**
  String get q_flood_10;

  /// No description provided for @q_flood_10_opt0.
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get q_flood_10_opt0;

  /// No description provided for @q_flood_10_opt1.
  ///
  /// In en, this message translates to:
  /// **'Rumors'**
  String get q_flood_10_opt1;

  /// No description provided for @q_flood_10_opt2.
  ///
  /// In en, this message translates to:
  /// **'Official warnings'**
  String get q_flood_10_opt2;

  /// No description provided for @q_flood_10_opt3.
  ///
  /// In en, this message translates to:
  /// **'Games'**
  String get q_flood_10_opt3;

  /// No description provided for @q_flood_10_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_flood_10_ans;

  /// No description provided for @tip_flood_10.
  ///
  /// In en, this message translates to:
  /// **'Listen to official announcements from the administration. They give correct safety instructions.'**
  String get tip_flood_10;

  /// No description provided for @q_flood_11.
  ///
  /// In en, this message translates to:
  /// **'What to do with important documents?'**
  String get q_flood_11;

  /// No description provided for @q_flood_11_opt0.
  ///
  /// In en, this message translates to:
  /// **'Throw them away'**
  String get q_flood_11_opt0;

  /// No description provided for @q_flood_11_opt1.
  ///
  /// In en, this message translates to:
  /// **'Keep safe and dry'**
  String get q_flood_11_opt1;

  /// No description provided for @q_flood_11_opt2.
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get q_flood_11_opt2;

  /// No description provided for @q_flood_11_opt3.
  ///
  /// In en, this message translates to:
  /// **'Burn them'**
  String get q_flood_11_opt3;

  /// No description provided for @q_flood_11_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_11_ans;

  /// No description provided for @tip_flood_11.
  ///
  /// In en, this message translates to:
  /// **'Keep IDs, certificates, and documents in a waterproof bag to protect them from water.'**
  String get tip_flood_11;

  /// No description provided for @q_flood_12.
  ///
  /// In en, this message translates to:
  /// **'What should you avoid touching?'**
  String get q_flood_12;

  /// No description provided for @q_flood_12_opt0.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get q_flood_12_opt0;

  /// No description provided for @q_flood_12_opt1.
  ///
  /// In en, this message translates to:
  /// **'Electric wires'**
  String get q_flood_12_opt1;

  /// No description provided for @q_flood_12_opt2.
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get q_flood_12_opt2;

  /// No description provided for @q_flood_12_opt3.
  ///
  /// In en, this message translates to:
  /// **'Clothes'**
  String get q_flood_12_opt3;

  /// No description provided for @q_flood_12_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_12_ans;

  /// No description provided for @tip_flood_12.
  ///
  /// In en, this message translates to:
  /// **'Avoid touching electric wires in water. They can give a severe electric shock.'**
  String get tip_flood_12;

  /// No description provided for @q_flood_13.
  ///
  /// In en, this message translates to:
  /// **'What to do after flood water recedes?'**
  String get q_flood_13;

  /// No description provided for @q_flood_13_opt0.
  ///
  /// In en, this message translates to:
  /// **'Go inside immediately'**
  String get q_flood_13_opt0;

  /// No description provided for @q_flood_13_opt1.
  ///
  /// In en, this message translates to:
  /// **'Check safety first'**
  String get q_flood_13_opt1;

  /// No description provided for @q_flood_13_opt2.
  ///
  /// In en, this message translates to:
  /// **'Run fast'**
  String get q_flood_13_opt2;

  /// No description provided for @q_flood_13_opt3.
  ///
  /// In en, this message translates to:
  /// **'Ignore damage'**
  String get q_flood_13_opt3;

  /// No description provided for @q_flood_13_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_13_ans;

  /// No description provided for @tip_flood_13.
  ///
  /// In en, this message translates to:
  /// **'After the flood, inspect the area for safety. Watch out for damage, broken wires, and unsafe buildings.'**
  String get tip_flood_13;

  /// No description provided for @q_flood_14.
  ///
  /// In en, this message translates to:
  /// **'Where should you NOT go during a flood?'**
  String get q_flood_14;

  /// No description provided for @q_flood_14_opt0.
  ///
  /// In en, this message translates to:
  /// **'High ground'**
  String get q_flood_14_opt0;

  /// No description provided for @q_flood_14_opt1.
  ///
  /// In en, this message translates to:
  /// **'Shelter home'**
  String get q_flood_14_opt1;

  /// No description provided for @q_flood_14_opt2.
  ///
  /// In en, this message translates to:
  /// **'Low-lying area'**
  String get q_flood_14_opt2;

  /// No description provided for @q_flood_14_opt3.
  ///
  /// In en, this message translates to:
  /// **'Safe place'**
  String get q_flood_14_opt3;

  /// No description provided for @q_flood_14_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_flood_14_ans;

  /// No description provided for @tip_flood_14.
  ///
  /// In en, this message translates to:
  /// **'Avoid low-lying areas as water collects there quickly and you could get trapped.'**
  String get tip_flood_14;

  /// No description provided for @q_flood_15.
  ///
  /// In en, this message translates to:
  /// **'What helps to see in a flood at night?'**
  String get q_flood_15;

  /// No description provided for @q_flood_15_opt0.
  ///
  /// In en, this message translates to:
  /// **'Only phone'**
  String get q_flood_15_opt0;

  /// No description provided for @q_flood_15_opt1.
  ///
  /// In en, this message translates to:
  /// **'Torch'**
  String get q_flood_15_opt1;

  /// No description provided for @q_flood_15_opt2.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get q_flood_15_opt2;

  /// No description provided for @q_flood_15_opt3.
  ///
  /// In en, this message translates to:
  /// **'Clothes'**
  String get q_flood_15_opt3;

  /// No description provided for @q_flood_15_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_15_ans;

  /// No description provided for @tip_flood_15.
  ///
  /// In en, this message translates to:
  /// **'Keep a torch with you. It helps you see clearly in the dark or when there is no power.'**
  String get tip_flood_15;

  /// No description provided for @q_flood_16.
  ///
  /// In en, this message translates to:
  /// **'What should you do about food?'**
  String get q_flood_16;

  /// No description provided for @q_flood_16_opt0.
  ///
  /// In en, this message translates to:
  /// **'Eat spoiled food'**
  String get q_flood_16_opt0;

  /// No description provided for @q_flood_16_opt1.
  ///
  /// In en, this message translates to:
  /// **'Eat clean food'**
  String get q_flood_16_opt1;

  /// No description provided for @q_flood_16_opt2.
  ///
  /// In en, this message translates to:
  /// **'Ignore it'**
  String get q_flood_16_opt2;

  /// No description provided for @q_flood_16_opt3.
  ///
  /// In en, this message translates to:
  /// **'Throw everything'**
  String get q_flood_16_opt3;

  /// No description provided for @q_flood_16_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_16_ans;

  /// No description provided for @tip_flood_16.
  ///
  /// In en, this message translates to:
  /// **'Eat only clean and safe food. Flood water can make food spoiled and unsafe.'**
  String get tip_flood_16;

  /// No description provided for @q_flood_17.
  ///
  /// In en, this message translates to:
  /// **'What should children do during a flood?'**
  String get q_flood_17;

  /// No description provided for @q_flood_17_opt0.
  ///
  /// In en, this message translates to:
  /// **'Play in water'**
  String get q_flood_17_opt0;

  /// No description provided for @q_flood_17_opt1.
  ///
  /// In en, this message translates to:
  /// **'Stay with adults'**
  String get q_flood_17_opt1;

  /// No description provided for @q_flood_17_opt2.
  ///
  /// In en, this message translates to:
  /// **'Run alone'**
  String get q_flood_17_opt2;

  /// No description provided for @q_flood_17_opt3.
  ///
  /// In en, this message translates to:
  /// **'Swim outside'**
  String get q_flood_17_opt3;

  /// No description provided for @q_flood_17_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_17_ans;

  /// No description provided for @tip_flood_17.
  ///
  /// In en, this message translates to:
  /// **'Always stay with parents or adults. Do not go near water alone.'**
  String get tip_flood_17;

  /// No description provided for @q_flood_18.
  ///
  /// In en, this message translates to:
  /// **'What to do if water rises quickly?'**
  String get q_flood_18;

  /// No description provided for @q_flood_18_opt0.
  ///
  /// In en, this message translates to:
  /// **'Stay there'**
  String get q_flood_18_opt0;

  /// No description provided for @q_flood_18_opt1.
  ///
  /// In en, this message translates to:
  /// **'Move to a higher place'**
  String get q_flood_18_opt1;

  /// No description provided for @q_flood_18_opt2.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get q_flood_18_opt2;

  /// No description provided for @q_flood_18_opt3.
  ///
  /// In en, this message translates to:
  /// **'Ignore it'**
  String get q_flood_18_opt3;

  /// No description provided for @q_flood_18_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_18_ans;

  /// No description provided for @tip_flood_18.
  ///
  /// In en, this message translates to:
  /// **'If water levels rise, move to a higher place immediately. Do not wait.'**
  String get tip_flood_18;

  /// No description provided for @q_flood_19.
  ///
  /// In en, this message translates to:
  /// **'Why avoid flood water?'**
  String get q_flood_19;

  /// No description provided for @q_flood_19_opt0.
  ///
  /// In en, this message translates to:
  /// **'It is fun'**
  String get q_flood_19_opt0;

  /// No description provided for @q_flood_19_opt1.
  ///
  /// In en, this message translates to:
  /// **'It is clean'**
  String get q_flood_19_opt1;

  /// No description provided for @q_flood_19_opt2.
  ///
  /// In en, this message translates to:
  /// **'It is dangerous'**
  String get q_flood_19_opt2;

  /// No description provided for @q_flood_19_opt3.
  ///
  /// In en, this message translates to:
  /// **'It is cold'**
  String get q_flood_19_opt3;

  /// No description provided for @q_flood_19_ans.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get q_flood_19_ans;

  /// No description provided for @tip_flood_19.
  ///
  /// In en, this message translates to:
  /// **'Flood water can be deep, fast, and dirty. it can carry harmful objects and cause injury.'**
  String get tip_flood_19;

  /// No description provided for @q_flood_20.
  ///
  /// In en, this message translates to:
  /// **'Who helps during a flood?'**
  String get q_flood_20;

  /// No description provided for @q_flood_20_opt0.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get q_flood_20_opt0;

  /// No description provided for @q_flood_20_opt1.
  ///
  /// In en, this message translates to:
  /// **'Rescue teams'**
  String get q_flood_20_opt1;

  /// No description provided for @q_flood_20_opt2.
  ///
  /// In en, this message translates to:
  /// **'Driver'**
  String get q_flood_20_opt2;

  /// No description provided for @q_flood_20_opt3.
  ///
  /// In en, this message translates to:
  /// **'Shopkeeper'**
  String get q_flood_20_opt3;

  /// No description provided for @q_flood_20_ans.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get q_flood_20_ans;

  /// No description provided for @tip_flood_20.
  ///
  /// In en, this message translates to:
  /// **'Rescue teams and emergency services help people during floods. Follow their instructions for safety.'**
  String get tip_flood_20;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'hi', 'mr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'hi':
      return AppLocalizationsHi();
    case 'mr':
      return AppLocalizationsMr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
