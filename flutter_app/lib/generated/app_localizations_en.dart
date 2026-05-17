// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Suraksha Kavach';

  @override
  String get learningModules => 'Learning Modules';

  @override
  String get emergencySos => 'Emergency SOS';

  @override
  String get points => 'Points';

  @override
  String get streak => 'Streak';

  @override
  String get badges => 'Badges';

  @override
  String get safetyReadiness => 'Safety Readiness';

  @override
  String get preparedStatus => 'Prepared for Disaster';

  @override
  String get fireSafety => 'Fire Safety';

  @override
  String get earthquake => 'Earthquake';

  @override
  String get floodAlert => 'Flood Alert';

  @override
  String get interactive => 'Interactive';

  @override
  String get logout => 'Logout';

  @override
  String get logoutConfirm => 'Are you sure you want to exit?';

  @override
  String get cancel => 'Cancel';

  @override
  String preparednessTitle(String disaster) {
    return '$disaster Preparedness';
  }

  @override
  String get interactiveGames => 'Interactive Games';

  @override
  String get learnWatch => 'Learn & Watch';

  @override
  String get testYourQuiz => 'Test Your Quiz';

  @override
  String get liveRegionAlerts => 'Regional Alerts';

  @override
  String get realTimeUpdates => 'Real-time Updates';

  @override
  String resourcesTitle(String disaster) {
    return '$disaster Resources';
  }

  @override
  String get chooseHowLearn => 'Choose how you want to learn';

  @override
  String get readSafetyTips => 'Read Safety Tips';

  @override
  String get flashcardsGuidelines => 'Flashcards and essential guidelines';

  @override
  String get watchVideos => 'Watch Videos';

  @override
  String get visualSurvivalGuides => 'Visual survival guides and tutorials';

  @override
  String modulesTitle(String disaster) {
    return '$disaster Modules';
  }

  @override
  String get theBasics => 'The Basics';

  @override
  String get levelsFundamental => '20 levels covering fundamental safety';

  @override
  String get duringEvent => 'During the Event';

  @override
  String get immediateSteps => 'Immediate safety steps';

  @override
  String get recovery => 'Recovery';

  @override
  String get safeCleanup => 'Safe cleanup and rebuilding';

  @override
  String get moduleBasics => 'The Basics';

  @override
  String moduleBasicsDesc(String disaster) {
    return '20 levels covering fundamental $disaster safety.';
  }

  @override
  String get selectLevel => 'SELECT LEVEL';

  @override
  String get startQuiz => 'START QUIZ';

  @override
  String get yourProgress => 'Your Progress';

  @override
  String levelNumber(int number) {
    return 'Level $number';
  }

  @override
  String get moduleDuring => 'During the Event';

  @override
  String get moduleDuringDesc => 'Immediate safety steps.';

  @override
  String get moduleRecovery => 'Recovery';

  @override
  String get moduleRecoveryDesc => 'Safe cleanup and rebuilding.';

  @override
  String videoGuidesTitle(Object disaster) {
    return '$disaster Video Guides';
  }

  @override
  String lessonCount(Object number) {
    return 'Lesson $number';
  }

  @override
  String get v_flood_1 => 'Flood Survival Guide';

  @override
  String get v_flood_2 => 'Turn Around Don\'t Drown';

  @override
  String get v_flood_3 => 'Water Safety';

  @override
  String get v_flood_4 => 'Protecting Your Home';

  @override
  String get v_flood_5 => 'Post-Flood Health';

  @override
  String get v_fire_song => 'Fire Safety Song';

  @override
  String get v_fire_1 => 'Home Fire Survival';

  @override
  String get v_fire_2 => 'Using Extinguishers';

  @override
  String get v_fire_3 => 'Evacuation Drill';

  @override
  String get v_fire_4 => 'Kitchen Safety';

  @override
  String get v_earth_song => 'Earthquake Song';

  @override
  String get v_earth_1 => 'Drop, Cover, Hold On';

  @override
  String get v_earth_2 => 'Indoor Safety';

  @override
  String get v_earth_3 => 'Building Resilience';

  @override
  String get v_earth_4 => 'Survival Kit';

  @override
  String get q_fire_1 => 'What should you shout if you see fire?';

  @override
  String get q_fire_1_opt0 => 'Help';

  @override
  String get q_fire_1_opt1 => 'Fire';

  @override
  String get q_fire_1_opt2 => 'Run';

  @override
  String get q_fire_1_opt3 => 'Stop';

  @override
  String get q_fire_1_ans => '1';

  @override
  String get tip_fire_1 =>
      'If you see fire, shout \'Fire!\' loudly to alert others. This helps people realize the danger quickly. Never stay silent. Inform nearby people and move to a safe location.';

  @override
  String get q_fire_2 => 'What is the Fire emergency number?';

  @override
  String get q_fire_2_opt0 => '100';

  @override
  String get q_fire_2_opt1 => '101';

  @override
  String get q_fire_2_opt2 => '102';

  @override
  String get q_fire_2_opt3 => '108';

  @override
  String get q_fire_2_ans => '1';

  @override
  String get tip_fire_2 =>
      'Dial 101 to call the Fire Brigade. Speak clearly and provide the exact location along with landmarks. Stay calm and follow instructions given on the call.';

  @override
  String get q_fire_3 => 'What should you do if your clothes catch fire?';

  @override
  String get q_fire_3_opt0 => 'Run';

  @override
  String get q_fire_3_opt1 => 'Hide';

  @override
  String get q_fire_3_opt2 => 'Stop, Drop, and Roll';

  @override
  String get q_fire_3_opt3 => 'Jump';

  @override
  String get q_fire_3_ans => '2';

  @override
  String get tip_fire_3 =>
      'If your clothes catch fire, Stop running, Drop to the ground, and Roll to extinguish the flames. Running only makes the fire spread faster.';

  @override
  String get q_fire_4 => 'What is the best way to exit a burning building?';

  @override
  String get q_fire_4_opt0 => 'Lift';

  @override
  String get q_fire_4_opt1 => 'Stairs';

  @override
  String get q_fire_4_opt2 => 'Jumping';

  @override
  String get q_fire_4_opt3 => 'Hiding';

  @override
  String get q_fire_4_ans => '1';

  @override
  String get tip_fire_4 =>
      'Always use the stairs during a fire. Lifts may stop due to power cuts and can fill with smoke. Follow Exit signs and stay calm.';

  @override
  String get q_fire_5 => 'Why should you stay low in a fire?';

  @override
  String get q_fire_5_opt0 => 'Air is cooler';

  @override
  String get q_fire_5_opt1 => 'Smoke rises up';

  @override
  String get q_fire_5_opt2 => 'Heat increases';

  @override
  String get q_fire_5_opt3 => 'None';

  @override
  String get q_fire_5_ans => '1';

  @override
  String get tip_fire_5 =>
      'Smoke rises upwards, so cleaner air is found near the ground. Crawl low and cover your nose with a cloth to breathe safely.';

  @override
  String get q_fire_6 =>
      'Which extinguisher should be used for electrical fires?';

  @override
  String get q_fire_6_opt0 => 'Water';

  @override
  String get q_fire_6_opt1 => 'Foam';

  @override
  String get q_fire_6_opt2 => 'CO2';

  @override
  String get q_fire_6_opt3 => 'Oil';

  @override
  String get q_fire_6_ans => '2';

  @override
  String get tip_fire_6 =>
      'Use a CO2 extinguisher for electrical fires. Never use water as it can cause an electric shock.';

  @override
  String get q_fire_7 =>
      'What should you do before opening a door during a fire?';

  @override
  String get q_fire_7_opt0 => 'Ignore it';

  @override
  String get q_fire_7_opt1 => 'Touch it';

  @override
  String get q_fire_7_opt2 => 'Open it quickly';

  @override
  String get q_fire_7_opt3 => 'Kick it';

  @override
  String get q_fire_7_ans => '1';

  @override
  String get tip_fire_7 =>
      'Touch the door first. If it is hot, do not open it as there may be fire on the other side. Look for another safe exit.';

  @override
  String get q_fire_8 => 'What helps fire spread quickly?';

  @override
  String get q_fire_8_opt0 => 'Water';

  @override
  String get q_fire_8_opt1 => 'Wind';

  @override
  String get q_fire_8_opt2 => 'Sand';

  @override
  String get q_fire_8_opt3 => 'Cloth';

  @override
  String get q_fire_8_ans => '1';

  @override
  String get tip_fire_8 =>
      'Wind provides more oxygen, which makes fire spread faster. Stay away from open, windy areas during a fire.';

  @override
  String get q_fire_9 => 'What should you avoid using during a fire?';

  @override
  String get q_fire_9_opt0 => 'Stairs';

  @override
  String get q_fire_9_opt1 => 'Exit';

  @override
  String get q_fire_9_opt2 => 'Lift';

  @override
  String get q_fire_9_opt3 => 'Alarm';

  @override
  String get q_fire_9_ans => '2';

  @override
  String get tip_fire_9 =>
      'Never use lifts during a fire. They can malfunction and trap you. Always use stairs to escape.';

  @override
  String get q_fire_10 => 'What does a fire alarm do?';

  @override
  String get q_fire_10_opt0 => 'Cools the air';

  @override
  String get q_fire_10_opt1 => 'Alerts people';

  @override
  String get q_fire_10_opt2 => 'Plays music';

  @override
  String get q_fire_10_opt3 => 'Lights up the room';

  @override
  String get q_fire_10_ans => '1';

  @override
  String get tip_fire_10 =>
      'Fire alarms warn people of danger. When you hear it, evacuate immediately and head to a safe location.';

  @override
  String get q_fire_11 => 'How to stop a small kitchen fire?';

  @override
  String get q_fire_11_opt0 => 'Paper';

  @override
  String get q_fire_11_opt1 => 'Cover with cloth';

  @override
  String get q_fire_11_opt2 => 'Oil';

  @override
  String get q_fire_11_opt3 => 'Water';

  @override
  String get q_fire_11_ans => '1';

  @override
  String get tip_fire_11 =>
      'Cover the fire with a lid or cloth to cut off oxygen. Never use water on an oil fire as it splashes the flames.';

  @override
  String get q_fire_12 => 'What can smoke cause?';

  @override
  String get q_fire_12_opt0 => 'Energy';

  @override
  String get q_fire_12_opt1 => 'Breathing issues';

  @override
  String get q_fire_12_opt2 => 'Sleep';

  @override
  String get q_fire_12_opt3 => 'Happiness';

  @override
  String get q_fire_12_ans => '1';

  @override
  String get tip_fire_12 =>
      'Smoke contains harmful gases and can cause breathing difficulties or fainting. Always move quickly toward fresh air.';

  @override
  String get q_fire_13 => 'Where is a safe place after escaping a fire?';

  @override
  String get q_fire_13_opt0 => 'Inside';

  @override
  String get q_fire_13_opt1 => 'Open ground';

  @override
  String get q_fire_13_opt2 => 'Basement';

  @override
  String get q_fire_13_opt3 => 'Lift';

  @override
  String get q_fire_13_ans => '1';

  @override
  String get tip_fire_13 =>
      'Go to an open safe area after escaping. Stay there and do not go back inside.';

  @override
  String get q_fire_14 => 'What should you do during a gas leak?';

  @override
  String get q_fire_14_opt0 => 'Turn on lights';

  @override
  String get q_fire_14_opt1 => 'Turn off gas';

  @override
  String get q_fire_14_opt2 => 'Use fire';

  @override
  String get q_fire_14_opt3 => 'Run AC';

  @override
  String get q_fire_14_ans => '1';

  @override
  String get tip_fire_14 =>
      'Turn off the gas supply and avoid using switches or open flames. Leave the area and inform others.';

  @override
  String get q_fire_15 => 'What is needed for a fire to burn?';

  @override
  String get q_fire_15_opt0 => 'Water';

  @override
  String get q_fire_15_opt1 => 'Heat, Fuel, Oxygen';

  @override
  String get q_fire_15_opt2 => 'Only air';

  @override
  String get q_fire_15_opt3 => 'Nothing';

  @override
  String get q_fire_15_ans => '1';

  @override
  String get tip_fire_15 =>
      'Fire needs heat, fuel, and oxygen. Removing any one of these will stop the fire.';

  @override
  String get q_fire_16 => 'Why use a wet cloth?';

  @override
  String get q_fire_16_opt0 => 'To play';

  @override
  String get q_fire_16_opt1 => 'To breathe safely';

  @override
  String get q_fire_16_opt2 => 'To sleep';

  @override
  String get q_fire_16_opt3 => 'To clean';

  @override
  String get q_fire_16_ans => '1';

  @override
  String get tip_fire_16 =>
      'A wet cloth helps filter smoke and makes it easier to breathe while escaping a fire.';

  @override
  String get q_fire_17 => 'Which item is risky to store near heat?';

  @override
  String get q_fire_17_opt0 => 'Books';

  @override
  String get q_fire_17_opt1 => 'Fuel';

  @override
  String get q_fire_17_opt2 => 'Shoes';

  @override
  String get q_fire_17_opt3 => 'Toys';

  @override
  String get q_fire_17_ans => '1';

  @override
  String get tip_fire_17 =>
      'Fuel is highly flammable. Store it safely away from heat and fire sources.';

  @override
  String get q_fire_18 => 'Why practice fire drills?';

  @override
  String get q_fire_18_opt0 => 'Fun';

  @override
  String get q_fire_18_opt1 => 'Safety practice';

  @override
  String get q_fire_18_opt2 => 'Sleep';

  @override
  String get q_fire_18_opt3 => 'Time pass';

  @override
  String get q_fire_18_ans => '1';

  @override
  String get tip_fire_18 =>
      'Fire drills help you learn how to act in emergencies. They make you prepared and confident.';

  @override
  String get q_fire_19 => 'What to do when an alarm sounds?';

  @override
  String get q_fire_19_opt0 => 'Ignore it';

  @override
  String get q_fire_19_opt1 => 'Hide';

  @override
  String get q_fire_19_opt2 => 'Go outside';

  @override
  String get q_fire_19_opt3 => 'Sleep';

  @override
  String get q_fire_19_ans => '2';

  @override
  String get tip_fire_19 =>
      'Leave immediately when the alarm sounds. Stay calm, do not push, and follow exit routes.';

  @override
  String get q_fire_20 => 'Who helps in a fire emergency?';

  @override
  String get q_fire_20_opt0 => 'Friends';

  @override
  String get q_fire_20_opt1 => 'Firefighters';

  @override
  String get q_fire_20_opt2 => 'Driver';

  @override
  String get q_fire_20_opt3 => 'Shopkeeper';

  @override
  String get q_fire_20_ans => '1';

  @override
  String get tip_fire_20 =>
      'Firefighters are trained to control fires and rescue people. Always follow their instructions.';

  @override
  String get q_earthquake_1 => 'What should you do during an earthquake?';

  @override
  String get q_earthquake_1_opt0 => 'Run outside';

  @override
  String get q_earthquake_1_opt1 => 'Jump';

  @override
  String get q_earthquake_1_opt2 => 'Drop, Cover, and Hold on';

  @override
  String get q_earthquake_1_opt3 => 'Hide in the lift';

  @override
  String get q_earthquake_1_ans => '2';

  @override
  String get tip_earthquake_1 =>
      'Follow the \'Drop, Cover, and Hold on\' rule. Drop to the floor, take cover under sturdy furniture, and hold on tight. This protects you from falling objects.';

  @override
  String get q_earthquake_2 => 'Where is the safest place inside a building?';

  @override
  String get q_earthquake_2_opt0 => 'Near a window';

  @override
  String get q_earthquake_2_opt1 => 'Under a sturdy table';

  @override
  String get q_earthquake_2_opt2 => 'Balcony';

  @override
  String get q_earthquake_2_opt3 => 'Lift';

  @override
  String get q_earthquake_2_ans => '1';

  @override
  String get tip_earthquake_2 =>
      'Stay under a strong table or desk. This protects you from falling fans, glass, and ceiling parts.';

  @override
  String get q_earthquake_3 => 'What should be avoided during an earthquake?';

  @override
  String get q_earthquake_3_opt0 => 'Covering your head';

  @override
  String get q_earthquake_3_opt1 => 'Running outside';

  @override
  String get q_earthquake_3_opt2 => 'Dropping low';

  @override
  String get q_earthquake_3_opt3 => 'Holding the table';

  @override
  String get q_earthquake_3_ans => '1';

  @override
  String get tip_earthquake_3 =>
      'Do not run outside during tremors. Falling objects and debris can injure you. Stay inside first and protect yourself.';

  @override
  String get q_earthquake_4 => 'What should you do if you are outside?';

  @override
  String get q_earthquake_4_opt0 => 'Stand near a building';

  @override
  String get q_earthquake_4_opt1 => 'Move to an open area';

  @override
  String get q_earthquake_4_opt2 => 'Run inside';

  @override
  String get q_earthquake_4_opt3 => 'Stand under a tree';

  @override
  String get q_earthquake_4_ans => '1';

  @override
  String get tip_earthquake_4 =>
      'Move to an open area away from buildings, trees, and poles. Stay there until the shaking stops.';

  @override
  String get q_earthquake_5 => 'What must you protect during an earthquake?';

  @override
  String get q_earthquake_5_opt0 => 'Feet';

  @override
  String get q_earthquake_5_opt1 => 'Hands';

  @override
  String get q_earthquake_5_opt2 => 'Head and neck';

  @override
  String get q_earthquake_5_opt3 => 'Hair';

  @override
  String get q_earthquake_5_ans => '2';

  @override
  String get tip_earthquake_5 =>
      'Use your arms or a pillow to protect your head and neck. These parts are at highest risk of injury.';

  @override
  String get q_earthquake_6 => 'What should you do if you are in bed?';

  @override
  String get q_earthquake_6_opt0 => 'Run outside';

  @override
  String get q_earthquake_6_opt1 => 'Stay there and cover your head';

  @override
  String get q_earthquake_6_opt2 => 'Jump';

  @override
  String get q_earthquake_6_opt3 => 'Hide under the bed';

  @override
  String get q_earthquake_6_ans => '1';

  @override
  String get tip_earthquake_6 =>
      'Stay in bed and cover your head with a pillow. Do not run, as things might fall and injure you.';

  @override
  String get q_earthquake_7 => 'What should you avoid using?';

  @override
  String get q_earthquake_7_opt0 => 'Stairs';

  @override
  String get q_earthquake_7_opt1 => 'Lift';

  @override
  String get q_earthquake_7_opt2 => 'Door';

  @override
  String get q_earthquake_7_opt3 => 'Table';

  @override
  String get q_earthquake_7_ans => '1';

  @override
  String get tip_earthquake_7 =>
      'Never use lifts during an earthquake. Power may fail and you could get trapped.';

  @override
  String get q_earthquake_8 => 'What should you check after an earthquake?';

  @override
  String get q_earthquake_8_opt0 => 'Clothes';

  @override
  String get q_earthquake_8_opt1 => 'Mobile';

  @override
  String get q_earthquake_8_opt2 => 'Injuries and damage';

  @override
  String get q_earthquake_8_opt3 => 'TV';

  @override
  String get q_earthquake_8_ans => '2';

  @override
  String get tip_earthquake_8 =>
      'Check yourself and others for injuries. Look for damage like gas leaks or broken wires.';

  @override
  String get q_earthquake_9 => 'What might fall during an earthquake?';

  @override
  String get q_earthquake_9_opt0 => 'Air';

  @override
  String get q_earthquake_9_opt1 => 'Furniture';

  @override
  String get q_earthquake_9_opt2 => 'Water';

  @override
  String get q_earthquake_9_opt3 => 'Ground';

  @override
  String get q_earthquake_9_ans => '1';

  @override
  String get tip_earthquake_9 =>
      'Heavy furniture, fans, and cupboards can fall. Stay away from them and take shelter.';

  @override
  String get q_earthquake_10 => 'What should you do when near windows?';

  @override
  String get q_earthquake_10_opt0 => 'Stand close';

  @override
  String get q_earthquake_10_opt1 => 'Break the glass';

  @override
  String get q_earthquake_10_opt2 => 'Stay away';

  @override
  String get q_earthquake_10_opt3 => 'Open them';

  @override
  String get q_earthquake_10_ans => '2';

  @override
  String get tip_earthquake_10 =>
      'Glass can shatter and cause injury. Always stay away from windows during tremors.';

  @override
  String get q_earthquake_11 => 'What to do after tremors stop?';

  @override
  String get q_earthquake_11_opt0 => 'Run blindly';

  @override
  String get q_earthquake_11_opt1 => 'Check for safety';

  @override
  String get q_earthquake_11_opt2 => 'Sleep';

  @override
  String get q_earthquake_11_opt3 => 'Ignore it';

  @override
  String get q_earthquake_11_ans => '1';

  @override
  String get tip_earthquake_11 =>
      'After the shaking stops, move carefully and check for hazards before going outside.';

  @override
  String get q_earthquake_12 => 'What is an aftershock?';

  @override
  String get q_earthquake_12_opt0 => 'Heavy rain';

  @override
  String get q_earthquake_12_opt1 => 'Smaller tremors';

  @override
  String get q_earthquake_12_opt2 => 'Fire';

  @override
  String get q_earthquake_12_opt3 => 'Wind';

  @override
  String get q_earthquake_12_ans => '1';

  @override
  String get tip_earthquake_12 =>
      'Aftershocks are smaller earthquakes that come after the main earthquake. Stay alert and prepared.';

  @override
  String get q_earthquake_13 => 'Where should you NOT stand outside?';

  @override
  String get q_earthquake_13_opt0 => 'Open ground';

  @override
  String get q_earthquake_13_opt1 => 'Near buildings';

  @override
  String get q_earthquake_13_opt2 => 'Empty field';

  @override
  String get q_earthquake_13_opt3 => 'Playground';

  @override
  String get q_earthquake_13_ans => '1';

  @override
  String get tip_earthquake_13 =>
      'Stay away from buildings as parts may fall and cause injury.';

  @override
  String get q_earthquake_14 => 'What should you do if you are trapped?';

  @override
  String get q_earthquake_14_opt0 => 'Shout loudly';

  @override
  String get q_earthquake_14_opt1 => 'Stay calm and tap';

  @override
  String get q_earthquake_14_opt2 => 'Run';

  @override
  String get q_earthquake_14_opt3 => 'Sleep';

  @override
  String get q_earthquake_14_ans => '1';

  @override
  String get tip_earthquake_14 =>
      'Stay calm and tap on objects to make sound. This makes it easier for rescue teams to find you.';

  @override
  String get q_earthquake_15 => 'What should you keep ready?';

  @override
  String get q_earthquake_15_opt0 => 'Toys';

  @override
  String get q_earthquake_15_opt1 => 'Emergency kit';

  @override
  String get q_earthquake_15_opt2 => 'Games';

  @override
  String get q_earthquake_15_opt3 => 'Books';

  @override
  String get q_earthquake_15_ans => '1';

  @override
  String get tip_earthquake_15 =>
      'Keep an emergency kit ready at home with water, food, torch, and first aid.';

  @override
  String get q_earthquake_16 => 'What should you do at school?';

  @override
  String get q_earthquake_16_opt0 => 'Run';

  @override
  String get q_earthquake_16_opt1 => 'Listen to the teacher';

  @override
  String get q_earthquake_16_opt2 => 'Hide alone';

  @override
  String get q_earthquake_16_opt3 => 'Jump';

  @override
  String get q_earthquake_16_ans => '1';

  @override
  String get tip_earthquake_16 =>
      'Always listen to your teacher. Follow safety instructions and stay calm.';

  @override
  String get q_earthquake_17 => 'What should you do when near electricity?';

  @override
  String get q_earthquake_17_opt0 => 'Touch wires';

  @override
  String get q_earthquake_17_opt1 => 'Stay away';

  @override
  String get q_earthquake_17_opt2 => 'Play';

  @override
  String get q_earthquake_17_opt3 => 'Break wires';

  @override
  String get q_earthquake_17_ans => '1';

  @override
  String get tip_earthquake_17 =>
      'Stay away from damaged electric wires. They can give an electric shock.';

  @override
  String get q_earthquake_18 => 'What should you do with the gas supply?';

  @override
  String get q_earthquake_18_opt0 => 'Turn off';

  @override
  String get q_earthquake_18_opt1 => 'Turn on';

  @override
  String get q_earthquake_18_opt2 => 'Ignore';

  @override
  String get q_earthquake_18_opt3 => 'Break pipe';

  @override
  String get q_earthquake_18_ans => '0';

  @override
  String get tip_earthquake_18 =>
      'Turn off the gas supply after an earthquake to prevent fire or explosions.';

  @override
  String get q_earthquake_19 => 'Why stay calm?';

  @override
  String get q_earthquake_19_opt0 => 'For fun';

  @override
  String get q_earthquake_19_opt1 => 'To think clearly';

  @override
  String get q_earthquake_19_opt2 => 'To sleep';

  @override
  String get q_earthquake_19_opt3 => 'To ignore';

  @override
  String get q_earthquake_19_ans => '1';

  @override
  String get tip_earthquake_19 =>
      'Staying calm helps you think properly and make safe decisions.';

  @override
  String get q_earthquake_20 => 'Who helps after an earthquake?';

  @override
  String get q_earthquake_20_opt0 => 'Friends';

  @override
  String get q_earthquake_20_opt1 => 'Rescue teams';

  @override
  String get q_earthquake_20_opt2 => 'Driver';

  @override
  String get q_earthquake_20_opt3 => 'Shopkeeper';

  @override
  String get q_earthquake_20_ans => '1';

  @override
  String get tip_earthquake_20 =>
      'Rescue teams and emergency services help people during disasters. Follow their instructions.';

  @override
  String get q_flood_1 => 'What should you do when you hear a flood warning?';

  @override
  String get q_flood_1_opt0 => 'Ignore it';

  @override
  String get q_flood_1_opt1 => 'Prepare and move to safety';

  @override
  String get q_flood_1_opt2 => 'Sleep';

  @override
  String get q_flood_1_opt3 => 'Play outside';

  @override
  String get q_flood_1_ans => '1';

  @override
  String get tip_flood_1 =>
      'Prepare immediately when you hear a flood warning. Pack essentials like food, water, medicine, and documents. Move to a safe higher location.';

  @override
  String get q_flood_2 => 'Where should you go during a flood?';

  @override
  String get q_flood_2_opt0 => 'Basement';

  @override
  String get q_flood_2_opt1 => 'Low-lying area';

  @override
  String get q_flood_2_opt2 => 'Higher ground';

  @override
  String get q_flood_2_opt3 => 'Drain';

  @override
  String get q_flood_2_ans => '2';

  @override
  String get tip_flood_2 =>
      'Always go to higher ground during a flood. Water collects in low areas and can rise quickly, creating danger.';

  @override
  String get q_flood_3 => 'Where should you avoid walking?';

  @override
  String get q_flood_3_opt0 => 'Clean road';

  @override
  String get q_flood_3_opt1 => 'Flood water';

  @override
  String get q_flood_3_opt2 => 'Dry land';

  @override
  String get q_flood_3_opt3 => 'Bridge';

  @override
  String get q_flood_3_ans => '1';

  @override
  String get tip_flood_3 =>
      'Never walk through flood water. It can be deep and fast, and may contain dangerous objects or open drains.';

  @override
  String get q_flood_4 => 'Why is flood water dangerous?';

  @override
  String get q_flood_4_opt0 => 'It is clean';

  @override
  String get q_flood_4_opt1 => 'It is cold';

  @override
  String get q_flood_4_opt2 => 'It may have germs';

  @override
  String get q_flood_4_opt3 => 'It is fun';

  @override
  String get q_flood_4_ans => '2';

  @override
  String get tip_flood_4 =>
      'Flood water contains germs, chemicals, and dirt. This can cause illnesses and infections.';

  @override
  String get q_flood_5 => 'What should you turn off during a flood?';

  @override
  String get q_flood_5_opt0 => 'Fan';

  @override
  String get q_flood_5_opt1 => 'Gas and electricity';

  @override
  String get q_flood_5_opt2 => 'Only TV';

  @override
  String get q_flood_5_opt3 => 'Only light';

  @override
  String get q_flood_5_ans => '1';

  @override
  String get tip_flood_5 =>
      'Turn off electricity and gas during a flood to prevent electric shock and fire accidents.';

  @override
  String get q_flood_6 => 'What should you keep with you in an emergency?';

  @override
  String get q_flood_6_opt0 => 'Toys';

  @override
  String get q_flood_6_opt1 => 'Emergency kit';

  @override
  String get q_flood_6_opt2 => 'Games';

  @override
  String get q_flood_6_opt3 => 'Shoes';

  @override
  String get q_flood_6_ans => '1';

  @override
  String get tip_flood_6 =>
      'Keep an emergency kit ready with water, food, torch, batteries, and a first aid box.';

  @override
  String get q_flood_7 => 'What to do if trapped in water?';

  @override
  String get q_flood_7_opt0 => 'Panic';

  @override
  String get q_flood_7_opt1 => 'Stay calm and call for help';

  @override
  String get q_flood_7_opt2 => 'Run fast';

  @override
  String get q_flood_7_opt3 => 'Sleep';

  @override
  String get q_flood_7_ans => '1';

  @override
  String get tip_flood_7 =>
      'Stay calm and try to reach a safe spot. Call out for help or signal others. Do not panic.';

  @override
  String get q_flood_8 => 'Where should you avoid driving?';

  @override
  String get q_flood_8_opt0 => 'Road';

  @override
  String get q_flood_8_opt1 => 'Flood water';

  @override
  String get q_flood_8_opt2 => 'Bridge';

  @override
  String get q_flood_8_opt3 => 'Highway';

  @override
  String get q_flood_8_ans => '1';

  @override
  String get tip_flood_8 =>
      'Never drive on flooded roads. Water can be deeper than it looks and can sweep vehicles away.';

  @override
  String get q_flood_9 => 'What should you drink during a flood?';

  @override
  String get q_flood_9_opt0 => 'Flood water';

  @override
  String get q_flood_9_opt1 => 'Dirty water';

  @override
  String get q_flood_9_opt2 => 'Clean and safe water';

  @override
  String get q_flood_9_opt3 => 'River water';

  @override
  String get q_flood_9_ans => '2';

  @override
  String get tip_flood_9 =>
      'Only drink clean and safe water. Flood water may be contaminated and spread disease.';

  @override
  String get q_flood_10 => 'What should you listen to during a flood?';

  @override
  String get q_flood_10_opt0 => 'Music';

  @override
  String get q_flood_10_opt1 => 'Rumors';

  @override
  String get q_flood_10_opt2 => 'Official warnings';

  @override
  String get q_flood_10_opt3 => 'Games';

  @override
  String get q_flood_10_ans => '2';

  @override
  String get tip_flood_10 =>
      'Listen to official announcements from the administration. They give correct safety instructions.';

  @override
  String get q_flood_11 => 'What to do with important documents?';

  @override
  String get q_flood_11_opt0 => 'Throw them away';

  @override
  String get q_flood_11_opt1 => 'Keep safe and dry';

  @override
  String get q_flood_11_opt2 => 'Ignore';

  @override
  String get q_flood_11_opt3 => 'Burn them';

  @override
  String get q_flood_11_ans => '1';

  @override
  String get tip_flood_11 =>
      'Keep IDs, certificates, and documents in a waterproof bag to protect them from water.';

  @override
  String get q_flood_12 => 'What should you avoid touching?';

  @override
  String get q_flood_12_opt0 => 'Water';

  @override
  String get q_flood_12_opt1 => 'Electric wires';

  @override
  String get q_flood_12_opt2 => 'Food';

  @override
  String get q_flood_12_opt3 => 'Clothes';

  @override
  String get q_flood_12_ans => '1';

  @override
  String get tip_flood_12 =>
      'Avoid touching electric wires in water. They can give a severe electric shock.';

  @override
  String get q_flood_13 => 'What to do after flood water recedes?';

  @override
  String get q_flood_13_opt0 => 'Go inside immediately';

  @override
  String get q_flood_13_opt1 => 'Check safety first';

  @override
  String get q_flood_13_opt2 => 'Run fast';

  @override
  String get q_flood_13_opt3 => 'Ignore damage';

  @override
  String get q_flood_13_ans => '1';

  @override
  String get tip_flood_13 =>
      'After the flood, inspect the area for safety. Watch out for damage, broken wires, and unsafe buildings.';

  @override
  String get q_flood_14 => 'Where should you NOT go during a flood?';

  @override
  String get q_flood_14_opt0 => 'High ground';

  @override
  String get q_flood_14_opt1 => 'Shelter home';

  @override
  String get q_flood_14_opt2 => 'Low-lying area';

  @override
  String get q_flood_14_opt3 => 'Safe place';

  @override
  String get q_flood_14_ans => '2';

  @override
  String get tip_flood_14 =>
      'Avoid low-lying areas as water collects there quickly and you could get trapped.';

  @override
  String get q_flood_15 => 'What helps to see in a flood at night?';

  @override
  String get q_flood_15_opt0 => 'Only phone';

  @override
  String get q_flood_15_opt1 => 'Torch';

  @override
  String get q_flood_15_opt2 => 'Book';

  @override
  String get q_flood_15_opt3 => 'Clothes';

  @override
  String get q_flood_15_ans => '1';

  @override
  String get tip_flood_15 =>
      'Keep a torch with you. It helps you see clearly in the dark or when there is no power.';

  @override
  String get q_flood_16 => 'What should you do about food?';

  @override
  String get q_flood_16_opt0 => 'Eat spoiled food';

  @override
  String get q_flood_16_opt1 => 'Eat clean food';

  @override
  String get q_flood_16_opt2 => 'Ignore it';

  @override
  String get q_flood_16_opt3 => 'Throw everything';

  @override
  String get q_flood_16_ans => '1';

  @override
  String get tip_flood_16 =>
      'Eat only clean and safe food. Flood water can make food spoiled and unsafe.';

  @override
  String get q_flood_17 => 'What should children do during a flood?';

  @override
  String get q_flood_17_opt0 => 'Play in water';

  @override
  String get q_flood_17_opt1 => 'Stay with adults';

  @override
  String get q_flood_17_opt2 => 'Run alone';

  @override
  String get q_flood_17_opt3 => 'Swim outside';

  @override
  String get q_flood_17_ans => '1';

  @override
  String get tip_flood_17 =>
      'Always stay with parents or adults. Do not go near water alone.';

  @override
  String get q_flood_18 => 'What to do if water rises quickly?';

  @override
  String get q_flood_18_opt0 => 'Stay there';

  @override
  String get q_flood_18_opt1 => 'Move to a higher place';

  @override
  String get q_flood_18_opt2 => 'Sleep';

  @override
  String get q_flood_18_opt3 => 'Ignore it';

  @override
  String get q_flood_18_ans => '1';

  @override
  String get tip_flood_18 =>
      'If water levels rise, move to a higher place immediately. Do not wait.';

  @override
  String get q_flood_19 => 'Why avoid flood water?';

  @override
  String get q_flood_19_opt0 => 'It is fun';

  @override
  String get q_flood_19_opt1 => 'It is clean';

  @override
  String get q_flood_19_opt2 => 'It is dangerous';

  @override
  String get q_flood_19_opt3 => 'It is cold';

  @override
  String get q_flood_19_ans => '2';

  @override
  String get tip_flood_19 =>
      'Flood water can be deep, fast, and dirty. it can carry harmful objects and cause injury.';

  @override
  String get q_flood_20 => 'Who helps during a flood?';

  @override
  String get q_flood_20_opt0 => 'Friends';

  @override
  String get q_flood_20_opt1 => 'Rescue teams';

  @override
  String get q_flood_20_opt2 => 'Driver';

  @override
  String get q_flood_20_opt3 => 'Shopkeeper';

  @override
  String get q_flood_20_ans => '1';

  @override
  String get tip_flood_20 =>
      'Rescue teams and emergency services help people during floods. Follow their instructions for safety.';
}
