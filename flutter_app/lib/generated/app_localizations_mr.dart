// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'सुरक्षा कवच';

  @override
  String get learningModules => 'शिक्षण मॉड्यूल';

  @override
  String get emergencySos => 'आणीबाणी SOS';

  @override
  String get points => 'गुण';

  @override
  String get streak => 'सातत्य';

  @override
  String get badges => 'बॅजेस';

  @override
  String get safetyReadiness => 'सुरक्षा सज्जता';

  @override
  String get preparedStatus => 'आपत्तीसाठी तयार';

  @override
  String get fireSafety => 'अग्नि सुरक्षा';

  @override
  String get earthquake => 'भूकंप';

  @override
  String get floodAlert => 'पूर इशारा';

  @override
  String get interactive => 'इंटरअक्टीव';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get logoutConfirm => 'आपण नक्की बाहेर पडू इच्छिता?';

  @override
  String get cancel => 'रद्द करा';

  @override
  String preparednessTitle(String disaster) {
    return '$disaster सज्जता';
  }

  @override
  String get interactiveGames => 'इंटरअॅक्टिव्ह गेम्स';

  @override
  String get learnWatch => 'पहा आणि शिका';

  @override
  String get testYourQuiz => 'तुमची प्रश्नमंजुषा तपासा';

  @override
  String get liveRegionAlerts => 'प्रादेशिक अलर्ट';

  @override
  String get realTimeUpdates => 'रिअल-टाइम अपडेट्स';

  @override
  String resourcesTitle(String disaster) {
    return '$disaster संसाधने';
  }

  @override
  String get chooseHowLearn => 'तुम्हाला कसे शिकायचे आहे ते निवडा';

  @override
  String get readSafetyTips => 'सुरक्षा टिप्स वाचा';

  @override
  String get flashcardsGuidelines =>
      'फ्लॅशकार्ड्स आणि आवश्यक मार्गदर्शक तत्त्वे';

  @override
  String get watchVideos => 'व्हिडिओ पहा';

  @override
  String get visualSurvivalGuides =>
      'दृश्य सुरक्षा मार्गदर्शक आणि ट्यूटोरियल्स';

  @override
  String modulesTitle(String disaster) {
    return '$disaster मॉड्युल';
  }

  @override
  String get theBasics => 'मूलभूत गोष्टी';

  @override
  String get levelsFundamental => 'मूलभूत सुरक्षा कव्हर करणारे 20 स्तर';

  @override
  String get duringEvent => 'घटनेच्या वेळी';

  @override
  String get immediateSteps => 'तातडीची सुरक्षा पावले';

  @override
  String get recovery => 'पुनर्प्राप्ती';

  @override
  String get safeCleanup => 'सुरक्षित स्वच्छता';

  @override
  String get moduleBasics => 'मूलभूत गोष्टी';

  @override
  String moduleBasicsDesc(String disaster) {
    return 'मूलभूत $disaster सुरक्षा कव्हर करणारे २० स्तर.';
  }

  @override
  String get selectLevel => 'स्तर निवडा';

  @override
  String get startQuiz => 'प्रश्नमंजुषा सुरू करा';

  @override
  String get yourProgress => 'तुमची प्रगती';

  @override
  String levelNumber(int number) {
    return 'स्तर $number';
  }

  @override
  String get moduleDuring => 'घटनेच्या वेळी';

  @override
  String get moduleDuringDesc => 'तातडीची सुरक्षा पावले.';

  @override
  String get moduleRecovery => 'पुनर्प्राप्ती';

  @override
  String get moduleRecoveryDesc => 'सुरक्षित स्वच्छता आणि पुनर्निर्माण.';

  @override
  String videoGuidesTitle(Object disaster) {
    return '$disaster व्हिडिओ मार्गदर्शक';
  }

  @override
  String lessonCount(Object number) {
    return 'धडा $number';
  }

  @override
  String get v_flood_1 => 'पूर सुरक्षा मार्गदर्शक';

  @override
  String get v_flood_2 => 'मागे फिरा, बुडू नका';

  @override
  String get v_flood_3 => 'पाण्यातील सुरक्षा';

  @override
  String get v_flood_4 => 'तुमच्या घराचे संरक्षण';

  @override
  String get v_flood_5 => 'पुरानंतरचे आरोग्य';

  @override
  String get v_fire_song => 'अग्नी सुरक्षा गीत';

  @override
  String get v_fire_1 => 'घरातील आगीपासून बचाव';

  @override
  String get v_fire_2 => 'अग्निशामक यंत्राचा वापर';

  @override
  String get v_fire_3 => 'निकासी सराव (Evacuation Drill)';

  @override
  String get v_fire_4 => 'स्वयंपाकघरातील सुरक्षा';

  @override
  String get v_earth_song => 'भूकंप सुरक्षा गीत';

  @override
  String get v_earth_1 => 'झुका, झाका आणि पकडून ठेवा';

  @override
  String get v_earth_2 => 'घराच्या आतील सुरक्षा';

  @override
  String get v_earth_3 => 'इमारतीची मजबूती';

  @override
  String get v_earth_4 => 'सुरक्षा किट';

  @override
  String get q_fire_1 => 'जर तुम्हाला आग लागलेली दिसली तर तुम्ही काय ओरडाल?';

  @override
  String get q_fire_1_opt0 => 'वाचवा (Help)';

  @override
  String get q_fire_1_opt1 => 'आग (Fire)';

  @override
  String get q_fire_1_opt2 => 'पळा (Run)';

  @override
  String get q_fire_1_opt3 => 'थांबा (Stop)';

  @override
  String get q_fire_1_ans => '1';

  @override
  String get tip_fire_1 =>
      'जर तुम्हाला आग दिसली तर इतरांना सावध करण्यासाठी जोरात \'आग!\' असे ओरडा. यामुळे लोक धोक्याबद्दल लवकर सावध होतात. कधीही गप्प बसू नका. जवळच्या लोकांना सांगा आणि सुरक्षित ठिकाणी जा.';

  @override
  String get q_fire_2 => 'अग्निशमन आपत्कालीन क्रमांक कोणता?';

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
      'अग्निशमन दलाला बोलावण्यासाठी १०१ डायल करा. स्पष्ट बोला आणि खुणांसह नेमके ठिकाण सांगा. शांत रहा आणि कॉलवर दिलेल्या सूचनांचे पालन करा.';

  @override
  String get q_fire_3 => 'जर कपड्यांना आग लागली तर काय करावे?';

  @override
  String get q_fire_3_opt0 => 'पळणे';

  @override
  String get q_fire_3_opt1 => 'लपून बसणे';

  @override
  String get q_fire_3_opt2 => 'थांबा, खाली पडणे, लोळणे (Stop Drop Roll)';

  @override
  String get q_fire_3_opt3 => 'उडी मारणे';

  @override
  String get q_fire_3_ans => '2';

  @override
  String get tip_fire_3 =>
      'जर तुमच्या कपड्यांना आग लागली तर पळणे थांबवा (STOP), जमिनीवर पडा (DROP) आणि आग विझवण्यासाठी लोळा (ROLL). पळाल्यामुळे आग अधिक वेगाने पसरते.';

  @override
  String get q_fire_4 =>
      'आग लागलेल्या इमारतीतून बाहेर पडण्याचा सर्वोत्तम मार्ग कोणता?';

  @override
  String get q_fire_4_opt0 => 'लिफ्ट (Lift)';

  @override
  String get q_fire_4_opt1 => 'जिने (Stairs)';

  @override
  String get q_fire_4_opt2 => 'उडी मारणे';

  @override
  String get q_fire_4_opt3 => 'लपून बसणे';

  @override
  String get q_fire_4_ans => '1';

  @override
  String get tip_fire_4 =>
      'आग लागल्यावर नेहमी जिन्याचा वापर करा. वीज गेल्यामुळे लिफ्ट थांबून धुराने भरू शकते. \'एक्झिट\' चिन्हांचे पालन करा आणि शांत रहा.';

  @override
  String get q_fire_5 => 'आग लागल्यावर खाली झुकून का चालावे?';

  @override
  String get q_fire_5_opt0 => 'हवा थंड होते';

  @override
  String get q_fire_5_opt1 => 'धूर वरच्या दिशेला जातो';

  @override
  String get q_fire_5_opt2 => 'उष्णता वाढते';

  @override
  String get q_fire_5_opt3 => 'काहीही नाही';

  @override
  String get q_fire_5_ans => '1';

  @override
  String get tip_fire_5 =>
      'धूर वरच्या दिशेने जातो, त्यामुळे स्वच्छ हवा जमिनीजवळ असते. खाली वाकून रांगत जा आणि सुरक्षितपणे श्वास घेण्यासाठी नाकावर कापड धरा.';

  @override
  String get q_fire_6 =>
      'विद्युत (इलेक्ट्रिकल) आगीसाठी कोणते अग्निशामक वापरावे?';

  @override
  String get q_fire_6_opt0 => 'पाणी (Water)';

  @override
  String get q_fire_6_opt1 => 'फेस (Foam)';

  @override
  String get q_fire_6_opt2 => 'CO2';

  @override
  String get q_fire_6_opt3 => 'तेल (Oil)';

  @override
  String get q_fire_6_ans => '2';

  @override
  String get tip_fire_6 =>
      'विद्युत आगीसाठी CO2 अग्निशामक वापरा. पाण्याचा वापर कधीही करू नका कारण त्यामुळे विजेचा धक्का बसू शकतो.';

  @override
  String get q_fire_7 => 'आगीच्या वेळी दरवाजा उघडण्यापूर्वी काय करावे?';

  @override
  String get q_fire_7_opt0 => 'दुर्लक्ष करा';

  @override
  String get q_fire_7_opt1 => 'त्याला स्पर्श करा';

  @override
  String get q_fire_7_opt2 => 'वेगाने उघडा';

  @override
  String get q_fire_7_opt3 => 'लाथ मारा';

  @override
  String get q_fire_7_ans => '1';

  @override
  String get tip_fire_7 =>
      'प्रथम दरवाजाला स्पर्श करून पहा. जर तो गरम असेल तर तो उघडू नका कारण दुसऱ्या बाजूला आग असू शकते. दुसरा सुरक्षित मार्ग शोधा.';

  @override
  String get q_fire_8 => 'आग कशामुळे वेगाने पसरते?';

  @override
  String get q_fire_8_opt0 => 'पाणी';

  @override
  String get q_fire_8_opt1 => 'वारा';

  @override
  String get q_fire_8_opt2 => 'वाळू';

  @override
  String get q_fire_8_opt3 => 'कापड';

  @override
  String get q_fire_8_ans => '1';

  @override
  String get tip_fire_8 =>
      'वारा जास्त ऑक्सिजन देऊन आग अधिक वेगाने पसरवतो. आगीच्या वेळी मोकळ्या वाऱ्याच्या ठिकाणांपासून दूर रहा.';

  @override
  String get q_fire_9 => 'आगीच्या वेळी काय टाळले पाहिजे?';

  @override
  String get q_fire_9_opt0 => 'जिने';

  @override
  String get q_fire_9_opt1 => 'बाहेर पडण्याचा मार्ग (Exit)';

  @override
  String get q_fire_9_opt2 => 'लिफ्ट';

  @override
  String get q_fire_9_opt3 => 'अलार्म';

  @override
  String get q_fire_9_ans => '2';

  @override
  String get tip_fire_9 =>
      'आगीच्या वेळी कधीही लिफ्ट वापरू नका. त्या बंद पडू शकतात आणि तुम्ही अडकू शकता. बाहेर पडण्यासाठी नेहमी जिन्याचा वापर करा.';

  @override
  String get q_fire_10 => 'फायर अलार्म काय करतो?';

  @override
  String get q_fire_10_opt0 => 'हवा थंड करतो';

  @override
  String get q_fire_10_opt1 => 'लोकांना सावध करतो';

  @override
  String get q_fire_10_opt2 => 'गाणी वाजवतो';

  @override
  String get q_fire_10_opt3 => 'खोलीत प्रकाश देतो';

  @override
  String get q_fire_10_ans => '1';

  @override
  String get tip_fire_10 =>
      'फायर अलार्म लोकांना धोक्याची पूर्वसूचना देतात. जेव्हा तो वाजतो, तेव्हा लगेच बाहेर पडा आणि सुरक्षित ठिकाणी जा.';

  @override
  String get q_fire_11 => 'स्वयंपाकघरातील छोटी आग कशी थांबवायची?';

  @override
  String get q_fire_11_opt0 => 'कागद';

  @override
  String get q_fire_11_opt1 => 'कापडाने झाकणे';

  @override
  String get q_fire_11_opt2 => 'तेल';

  @override
  String get q_fire_11_opt3 => 'पाणी';

  @override
  String get q_fire_11_ans => '1';

  @override
  String get tip_fire_11 =>
      'ऑक्सिजनचा पुरवठा खंडित करण्यासाठी आग झाकण किंवा कापडाने झाकून टाका. तेलाच्या आगीवर कधीही पाणी टाकू नका कारण त्यामुळे ज्वाला पसरतात.';

  @override
  String get q_fire_12 => 'धुरामुळे काय होऊ शकते?';

  @override
  String get q_fire_12_opt0 => 'ऊर्जा मिळते';

  @override
  String get q_fire_12_opt1 => 'श्वसनाचा त्रास';

  @override
  String get q_fire_12_opt2 => 'झोप येते';

  @override
  String get q_fire_12_opt3 => 'आनंद होतो';

  @override
  String get q_fire_12_ans => '1';

  @override
  String get tip_fire_12 =>
      'धुरामध्ये हानिकारक वायू असतात आणि त्यामुळं श्वास घेण्यास त्रास होऊ शकतो किंवा शुद्ध हरपू शकते. नेहमी पटकन ताज्या हवेच्या ठिकाणी जा.';

  @override
  String get q_fire_13 => 'आगीतून बाहेर पडल्यावर सुरक्षित ठिकाण कोणते?';

  @override
  String get q_fire_13_opt0 => 'इमारतीमध्ये';

  @override
  String get q_fire_13_opt1 => 'मोकळे मैदान';

  @override
  String get q_fire_13_opt2 => 'बेसमेंट';

  @override
  String get q_fire_13_opt3 => 'लिफ्ट';

  @override
  String get q_fire_13_ans => '1';

  @override
  String get tip_fire_13 =>
      'बाहेर पडल्यानंतर मोकळ्या सुरक्षित जागेत जा. तिथेच थांबा आणि पुन्हा आत जाऊ नका.';

  @override
  String get q_fire_14 => 'गॅस गळती (Gas leak) दरम्यान काय करावे?';

  @override
  String get q_fire_14_opt0 => 'लाईट चालू करा';

  @override
  String get q_fire_14_opt1 => 'गॅस बंद करा';

  @override
  String get q_fire_14_opt2 => 'आग वापरा';

  @override
  String get q_fire_14_opt3 => 'AC चालवा';

  @override
  String get q_fire_14_ans => '1';

  @override
  String get tip_fire_14 =>
      'गॅस पुरवठा बंद करा आणि बटणे (Switches) किंवा विस्तव वापरणे टाळा. तो भाग सोडा आणि इतरांना माहिती द्या.';

  @override
  String get q_fire_15 => 'आग जळण्यासाठी कशाची गरज असते?';

  @override
  String get q_fire_15_opt0 => 'पाणी';

  @override
  String get q_fire_15_opt1 => 'उष्णता, इंधन, ऑक्सिजन';

  @override
  String get q_fire_15_opt2 => 'फक्त हवा';

  @override
  String get q_fire_15_opt3 => 'काहीही नाही';

  @override
  String get q_fire_15_ans => '1';

  @override
  String get tip_fire_15 =>
      'आग लागण्यासाठी उष्णता, इंधन आणि ऑक्सिजनची आवश्यकता असते. यापैकी एक जरी कमी झाला तरी आग विझते.';

  @override
  String get q_fire_16 => 'ओले कापड का वापरावे?';

  @override
  String get q_fire_16_opt0 => 'खेळण्यासाठी';

  @override
  String get q_fire_16_opt1 => 'सुरक्षित श्वास घेण्यासाठी';

  @override
  String get q_fire_16_opt2 => 'झोपण्यासाठी';

  @override
  String get q_fire_16_opt3 => 'स्वच्छतेसाठी';

  @override
  String get q_fire_16_ans => '1';

  @override
  String get tip_fire_16 =>
      'ओले कापड धूर गाळण्यास मदत करते आणि आगीतून बाहेर पडताना श्वास घेणे सोपे करते.';

  @override
  String get q_fire_17 => 'कोणती वस्तू धोकादायक आहे?';

  @override
  String get q_fire_17_opt0 => 'पुस्तके';

  @override
  String get q_fire_17_opt1 => 'इंधन (Fuel)';

  @override
  String get q_fire_17_opt2 => 'शूज';

  @override
  String get q_fire_17_opt3 => 'खेळणी';

  @override
  String get q_fire_17_ans => '1';

  @override
  String get tip_fire_17 =>
      'इंधन अत्यंत ज्वलनशील असते. ते उष्णता आणि आगीच्या स्रोतांपासून दूर सुरक्षितपणे साठवा.';

  @override
  String get q_fire_18 => 'फायर ड्रिलचा सराव का करावा?';

  @override
  String get q_fire_18_opt0 => 'मजेसाठी';

  @override
  String get q_fire_18_opt1 => 'सुरक्षेच्या सरावासाठी';

  @override
  String get q_fire_18_opt2 => 'झोपण्यासाठी';

  @override
  String get q_fire_18_opt3 => 'वेळ घालवण्यासाठी';

  @override
  String get q_fire_18_ans => '1';

  @override
  String get tip_fire_18 =>
      'फायर ड्रिल तुम्हाला आपत्कालीन परिस्थितीत कसे वागावे हे शिकवतात. ते तुम्हाला तयार आणि आत्मविश्वासी बनवतात.';

  @override
  String get q_fire_19 => 'अलार्म वाजल्यावर काय करावे?';

  @override
  String get q_fire_19_opt0 => 'दुर्लक्ष करा';

  @override
  String get q_fire_19_opt1 => 'लपून बसा';

  @override
  String get q_fire_19_opt2 => 'बाहेर जा';

  @override
  String get q_fire_19_opt3 => 'झोपा';

  @override
  String get q_fire_19_ans => '2';

  @override
  String get tip_fire_19 =>
      'अलार्म वाजल्यावर लगेच बाहेर पडा. शांत राहा, धक्कादायक वागू नका आणि बाहेर पडण्याच्या मार्गांचे अनुसरण करा.';

  @override
  String get q_fire_20 => 'आगीच्या आपत्कालीन परिस्थितीत कोण मदत करते?';

  @override
  String get q_fire_20_opt0 => 'मित्र';

  @override
  String get q_fire_20_opt1 => 'अग्निशामक (Firefighters)';

  @override
  String get q_fire_20_opt2 => 'ड्रायव्हर';

  @override
  String get q_fire_20_opt3 => 'दुकानदार';

  @override
  String get q_fire_20_ans => '1';

  @override
  String get tip_fire_20 =>
      'अग्निशामकांना आग नियंत्रित करण्यासाठी आणि लोकांची सुटका करण्यासाठी प्रशिक्षित केले जाते. नेहमी त्यांच्या सूचनांचे पालन करा.';

  @override
  String get q_earthquake_1 => 'भूकंपाच्या वेळी तुम्ही काय केले पाहिजे?';

  @override
  String get q_earthquake_1_opt0 => 'बाहेर पळा';

  @override
  String get q_earthquake_1_opt1 => 'उडी मारा';

  @override
  String get q_earthquake_1_opt2 =>
      'खाली वाका, स्वतःला झाकून घ्या आणि धरून ठेवा (Drop Cover Hold)';

  @override
  String get q_earthquake_1_opt3 => 'लिफ्टमध्ये लपा';

  @override
  String get q_earthquake_1_ans => '2';

  @override
  String get tip_earthquake_1 =>
      '\'खाली वाका, झाकून घ्या आणि धरून ठेवा\' या नियमाचे पालन करा. जमिनीवर खाली बसा, मजबूत फर्निचरखाली आश्रय घ्या आणि त्याला घट्ट धरून ठेवा. हे तुम्हाला पडणाऱ्या वस्तूंपासून वाचवते.';

  @override
  String get q_earthquake_2 => 'इमारतीच्या आत सर्वात सुरक्षित जागा कोणती?';

  @override
  String get q_earthquake_2_opt0 => 'खिडकीजवळ';

  @override
  String get q_earthquake_2_opt1 => 'मजबूत टेबलाखाली';

  @override
  String get q_earthquake_2_opt2 => 'गॅलरी (Balcony)';

  @override
  String get q_earthquake_2_opt3 => 'लिफ्ट';

  @override
  String get q_earthquake_2_ans => '1';

  @override
  String get tip_earthquake_2 =>
      'एखाद्या मजबूत टेबलाखाली बसा. हे तुम्हाला पंखे, काच आणि छताच्या पडणाऱ्या भागांपासून वाचवते.';

  @override
  String get q_earthquake_3 => 'भूकंपाच्या वेळी काय टाळले पाहिजे?';

  @override
  String get q_earthquake_3_opt0 => 'डोके झाकणे';

  @override
  String get q_earthquake_3_opt1 => 'बाहेर पळणे';

  @override
  String get q_earthquake_3_opt2 => 'खाली वाकणे';

  @override
  String get q_earthquake_3_opt3 => 'टेबल पकडणे';

  @override
  String get q_earthquake_3_ans => '1';

  @override
  String get tip_earthquake_3 =>
      'धक्के बसत असताना बाहेर पळू नका. पडणाऱ्या वस्तू आणि ढिगारा तुम्हाला जखमी करू शकतो. आधी आतच राहा आणि स्वतःचे संरक्षण करा.';

  @override
  String get q_earthquake_4 => 'जर तुम्ही बाहेर असाल तर काय करावे?';

  @override
  String get q_earthquake_4_opt0 => 'इमारतीजवळ उभे राहा';

  @override
  String get q_earthquake_4_opt1 => 'मोकळ्या जागेत जा';

  @override
  String get q_earthquake_4_opt2 => 'घरात पळा';

  @override
  String get q_earthquake_4_opt3 => 'झाडाखाली उभे राहा';

  @override
  String get q_earthquake_4_ans => '1';

  @override
  String get tip_earthquake_4 =>
      'इमारती, झाडे आणि खांबांपासून दूर मोकळ्या जागेत जा. धक्के थांबेपर्यंत तिथेच थांबा.';

  @override
  String get q_earthquake_5 => 'भूकंपाच्या वेळी कशाचे रक्षण केले पाहिजे?';

  @override
  String get q_earthquake_5_opt0 => 'पाय';

  @override
  String get q_earthquake_5_opt1 => 'हात';

  @override
  String get q_earthquake_5_opt2 => 'डोके आणि मान';

  @override
  String get q_earthquake_5_opt3 => 'केस';

  @override
  String get q_earthquake_5_ans => '2';

  @override
  String get tip_earthquake_5 =>
      'तुमचे हात किंवा उशी वापरून डोके आणि मानेचे रक्षण करा. या भागांना दुखापत होण्याचा धोका सर्वाधिक असतो.';

  @override
  String get q_earthquake_6 => 'जर तुम्ही बेडवर असाल तर काय करावे?';

  @override
  String get q_earthquake_6_opt0 => 'बाहेर पळा';

  @override
  String get q_earthquake_6_opt1 => 'तिथेच राहा आणि डोके झाकून घ्या';

  @override
  String get q_earthquake_6_opt2 => 'उडी मारा';

  @override
  String get q_earthquake_6_opt3 => 'बेडखाली लपा';

  @override
  String get q_earthquake_6_ans => '1';

  @override
  String get tip_earthquake_6 =>
      'बेडवरच राहा आणि उशीने डोके झाकून घ्या. पळू नका, कारण वस्तू पडून तुम्ही जखमी होऊ शकता.';

  @override
  String get q_earthquake_7 => 'तुम्ही कशाचा वापर टाळला पाहिजे?';

  @override
  String get q_earthquake_7_opt0 => 'जिने';

  @override
  String get q_earthquake_7_opt1 => 'लिफ्ट';

  @override
  String get q_earthquake_7_opt2 => 'दरवाजा';

  @override
  String get q_earthquake_7_opt3 => 'टेबल';

  @override
  String get q_earthquake_7_ans => '1';

  @override
  String get tip_earthquake_7 =>
      'भूकंपाच्या वेळी कधीही लिफ्ट वापरू नका. वीज खंडित होऊ शकते आणि तुम्ही अडकू शकता.';

  @override
  String get q_earthquake_8 => 'भूकंपानंतर काय तपासावे?';

  @override
  String get q_earthquake_8_opt0 => 'कपडे';

  @override
  String get q_earthquake_8_opt1 => 'मोबाईल';

  @override
  String get q_earthquake_8_opt2 => 'दुखापत आणि नुकसान';

  @override
  String get q_earthquake_8_opt3 => 'टीव्ही';

  @override
  String get q_earthquake_8_ans => '2';

  @override
  String get tip_earthquake_8 =>
      'स्वतःची आणि इतरांची दुखापत तपासा. गॅस गळती किंवा तुटलेल्या तारांसारखे नुकसान झाले आहे का ते पहा.';

  @override
  String get q_earthquake_9 => 'भूकंपाच्या वेळी काय पडू शकते?';

  @override
  String get q_earthquake_9_opt0 => 'हवा';

  @override
  String get q_earthquake_9_opt1 => 'फर्निचर';

  @override
  String get q_earthquake_9_opt2 => 'पाणी';

  @override
  String get q_earthquake_9_opt3 => 'जमीन';

  @override
  String get q_earthquake_9_ans => '1';

  @override
  String get tip_earthquake_9 =>
      'जड फर्निचर, पंखे आणि कपाटे पडू शकतात. त्यांच्यापासून दूर राहा आणि आश्रय घ्या.';

  @override
  String get q_earthquake_10 => 'खिडक्यांजवळ असताना काय करावे?';

  @override
  String get q_earthquake_10_opt0 => 'जवळ उभे राहा';

  @override
  String get q_earthquake_10_opt1 => 'काच फोडा';

  @override
  String get q_earthquake_10_opt2 => 'दूर राहा';

  @override
  String get q_earthquake_10_opt3 => 'त्या उघडा';

  @override
  String get q_earthquake_10_ans => '2';

  @override
  String get tip_earthquake_10 =>
      'काच फुटून दुखापत होऊ शकते. धक्के बसत असताना खिडक्यांपासून नेहमी दूर राहा.';

  @override
  String get q_earthquake_11 => 'धक्के थांबल्यानंतर काय करावे?';

  @override
  String get q_earthquake_11_opt0 => 'आंधळेपणाने पळा';

  @override
  String get q_earthquake_11_opt1 => 'सुरक्षितता तपासा';

  @override
  String get q_earthquake_11_opt2 => 'झोपा';

  @override
  String get q_earthquake_11_opt3 => 'दुर्लक्ष करा';

  @override
  String get q_earthquake_11_ans => '1';

  @override
  String get tip_earthquake_11 =>
      'धक्के थांबल्यानंतर, काळजीपूर्वक हालचाल करा आणि बाहेर पडण्यापूर्वी धोके तपासा.';

  @override
  String get q_earthquake_12 => 'आफ्टरशॉक (Aftershock) म्हणजे काय?';

  @override
  String get q_earthquake_12_opt0 => 'मुसळधार पाऊस';

  @override
  String get q_earthquake_12_opt1 => 'सौम्य धक्के';

  @override
  String get q_earthquake_12_opt2 => 'आग';

  @override
  String get q_earthquake_12_opt3 => 'वारा';

  @override
  String get q_earthquake_12_ans => '1';

  @override
  String get tip_earthquake_12 =>
      'मुख्य भूकंपानंतर येणाऱ्या लहान भूकंपांना \'आफ्टरशॉक्स\' म्हणतात. सतर्क आणि तयार राहा.';

  @override
  String get q_earthquake_13 => 'बाहेर कुठे उभे राहू नये?';

  @override
  String get q_earthquake_13_opt0 => 'मोकळे मैदान';

  @override
  String get q_earthquake_13_opt1 => 'इमारतींजवळ';

  @override
  String get q_earthquake_13_opt2 => 'रिकामे शेत';

  @override
  String get q_earthquake_13_opt3 => 'खेळाचे मैदान';

  @override
  String get q_earthquake_13_ans => '1';

  @override
  String get tip_earthquake_13 =>
      'इमारतींपासून दूर राहा कारण त्यांचे भाग पडून दुखापत होऊ शकते.';

  @override
  String get q_earthquake_14 => 'जर तुम्ही अडकलात तर काय करावे?';

  @override
  String get q_earthquake_14_opt0 => 'मोठ्याने ओरडा';

  @override
  String get q_earthquake_14_opt1 => 'शांत राहा आणि आवाज करा';

  @override
  String get q_earthquake_14_opt2 => 'पळा';

  @override
  String get q_earthquake_14_opt3 => 'झोपा';

  @override
  String get q_earthquake_14_ans => '1';

  @override
  String get tip_earthquake_14 =>
      'शांत राहा आणि वस्तूंवर थाप मारून आवाज करा. यामुळे मदत पथकाला तुम्हाला शोधणे सोपे जाते.';

  @override
  String get q_earthquake_15 => 'तुम्ही काय तयार ठेवले पाहिजे?';

  @override
  String get q_earthquake_15_opt0 => 'खेळणी';

  @override
  String get q_earthquake_15_opt1 => 'आपत्कालीन किट (Emergency kit)';

  @override
  String get q_earthquake_15_opt2 => 'खेळ';

  @override
  String get q_earthquake_15_opt3 => 'पुस्तके';

  @override
  String get q_earthquake_15_ans => '1';

  @override
  String get tip_earthquake_15 =>
      'घरात पाणी, अन्न, टॉर्च आणि प्रथमोपचार (First aid) पेटीसह आपत्कालीन किट तयार ठेवा.';

  @override
  String get q_earthquake_16 => 'शाळेत काय करावे?';

  @override
  String get q_earthquake_16_opt0 => 'पळा';

  @override
  String get q_earthquake_16_opt1 => 'शिक्षकांचे ऐका';

  @override
  String get q_earthquake_16_opt2 => 'एकटे लपा';

  @override
  String get q_earthquake_16_opt3 => 'उडी मारा';

  @override
  String get q_earthquake_16_ans => '1';

  @override
  String get tip_earthquake_16 =>
      'नेहमी तुमच्या शिक्षकांचे ऐका. सुरक्षा सूचनांचे पालन करा आणि शांत राहा.';

  @override
  String get q_earthquake_17 => 'विजेच्या जवळ असताना काय करावे?';

  @override
  String get q_earthquake_17_opt0 => 'तारांना हात लावा';

  @override
  String get q_earthquake_17_opt1 => 'दूर राहा';

  @override
  String get q_earthquake_17_opt2 => 'खेळा';

  @override
  String get q_earthquake_17_opt3 => 'तारा तोडा';

  @override
  String get q_earthquake_17_ans => '1';

  @override
  String get tip_earthquake_17 =>
      'खराब झालेल्या विजेच्या तारांपासून दूर राहा. त्यातून विजेचा धक्का (Electric shock) बसू शकतो.';

  @override
  String get q_earthquake_18 => 'गॅस पुरवठ्याबाबत काय करावे?';

  @override
  String get q_earthquake_18_opt0 => 'बंद करा';

  @override
  String get q_earthquake_18_opt1 => 'सुरू करा';

  @override
  String get q_earthquake_18_opt2 => 'दुर्लक्ष करा';

  @override
  String get q_earthquake_18_opt3 => 'पाईप तोडा';

  @override
  String get q_earthquake_18_ans => '0';

  @override
  String get tip_earthquake_18 =>
      'आग किंवा स्फोट टाळण्यासाठी भूकंपानंतर गॅस पुरवठा बंद करा.';

  @override
  String get q_earthquake_19 => 'शांत का राहावे?';

  @override
  String get q_earthquake_19_opt0 => 'मजेसाठी';

  @override
  String get q_earthquake_19_opt1 => 'स्पष्ट विचार करण्यासाठी';

  @override
  String get q_earthquake_19_opt2 => 'झोपण्यासाठी';

  @override
  String get q_earthquake_19_opt3 => 'दुर्लक्ष करण्यासाठी';

  @override
  String get q_earthquake_19_ans => '1';

  @override
  String get tip_earthquake_19 =>
      'शांत राहिल्याने तुम्हाला नीट विचार करण्यास आणि सुरक्षित निर्णय घेण्यास मदत होते.';

  @override
  String get q_earthquake_20 => 'भूकंपानंतर कोण मदत करते?';

  @override
  String get q_earthquake_20_opt0 => 'मित्र';

  @override
  String get q_earthquake_20_opt1 => 'मदत पथके (Rescue teams)';

  @override
  String get q_earthquake_20_opt2 => 'ड्रायव्हर';

  @override
  String get q_earthquake_20_opt3 => 'दुकानदार';

  @override
  String get q_earthquake_20_ans => '1';

  @override
  String get tip_earthquake_20 =>
      'मदत पथके आणि आपत्कालीन सेवा आपत्तीच्या वेळी लोकांना मदत करतात. त्यांच्या सूचनांचे पालन करा.';

  @override
  String get q_flood_1 => 'पुराची चेतावणी मिळाल्यावर तुम्ही काय केले पाहिजे?';

  @override
  String get q_flood_1_opt0 => 'दुर्लक्ष करा';

  @override
  String get q_flood_1_opt1 => 'तयारी करा आणि सुरक्षित जागी जा';

  @override
  String get q_flood_1_opt2 => 'झोपा';

  @override
  String get q_flood_1_opt3 => 'बाहेर खेळा';

  @override
  String get q_flood_1_ans => '1';

  @override
  String get tip_flood_1 =>
      'जेव्हा तुम्ही पुराची चेतावणी ऐकता, तेव्हा त्वरित तयारी करा. अन्न, पाणी, औषधे आणि कागदपत्रे यांसारख्या आवश्यक वस्तू सोबत घ्या. सुरक्षित उंचावरच्या ठिकाणी जा.';

  @override
  String get q_flood_2 => 'पुराच्या वेळी तुम्ही कुठे गेले पाहिजे?';

  @override
  String get q_flood_2_opt0 => 'बेसमेंट (तळघर)';

  @override
  String get q_flood_2_opt1 => 'सखल भाग';

  @override
  String get q_flood_2_opt2 => 'उंचावरची जागा';

  @override
  String get q_flood_2_opt3 => 'नाला';

  @override
  String get q_flood_2_ans => '2';

  @override
  String get tip_flood_2 =>
      'पुराच्या वेळी नेहमी उंचावरच्या ठिकाणी जा. पाणी सखल भागात जमा होते आणि वेगाने वाढू शकते, ज्यामुळे धोका निर्माण होतो.';

  @override
  String get q_flood_3 => 'तुम्ही कुठून चालणे टाळले पाहिजे?';

  @override
  String get q_flood_3_opt0 => 'स्वच्छ रस्ता';

  @override
  String get q_flood_3_opt1 => 'पुराचे पाणी';

  @override
  String get q_flood_3_opt2 => 'कोरडी जमीन';

  @override
  String get q_flood_3_opt3 => 'पूल';

  @override
  String get q_flood_3_ans => '1';

  @override
  String get tip_flood_3 =>
      'पुराच्या पाण्यातून कधीही चालत जाऊ नका. ते खोल आणि वेगवान असू शकते आणि त्यात धोकादायक वस्तू किंवा उघडे नाले असू शकतात.';

  @override
  String get q_flood_4 => 'पुराचे पाणी धोकादायक का असते?';

  @override
  String get q_flood_4_opt0 => 'ते स्वच्छ असते';

  @override
  String get q_flood_4_opt1 => 'ते थंड असते';

  @override
  String get q_flood_4_opt2 => 'त्यात जंतू असू शकतात';

  @override
  String get q_flood_4_opt3 => 'ती मजा असते';

  @override
  String get q_flood_4_ans => '2';

  @override
  String get tip_flood_4 =>
      'पुराच्या पाण्यात जंतू, रसायने आणि घाण असू शकते. यामुळे आजार आणि संसर्ग होऊ शकतात.';

  @override
  String get q_flood_5 => 'पुराच्या वेळी तुम्ही काय बंद केले पाहिजे?';

  @override
  String get q_flood_5_opt0 => 'पंखा';

  @override
  String get q_flood_5_opt1 => 'गॅस आणि वीज';

  @override
  String get q_flood_5_opt2 => 'फक्त टीव्ही';

  @override
  String get q_flood_5_opt3 => 'फक्त लाईट';

  @override
  String get q_flood_5_ans => '1';

  @override
  String get tip_flood_5 =>
      'पुराच्या वेळी विजेचा धक्का आणि आगीच्या दुर्घटना टाळण्यासाठी वीज आणि गॅस बंद करा.';

  @override
  String get q_flood_6 => 'आणीबाणीच्या काळात तुम्ही सोबत काय ठेवावे?';

  @override
  String get q_flood_6_opt0 => 'खेळणी';

  @override
  String get q_flood_6_opt1 => 'आपत्कालीन किट (Emergency kit)';

  @override
  String get q_flood_6_opt2 => 'खेळ';

  @override
  String get q_flood_6_opt3 => 'शूज';

  @override
  String get q_flood_6_ans => '1';

  @override
  String get tip_flood_6 =>
      'पाणी, अन्न, टॉर्च, बॅटरी आणि प्रथमोपचार (First aid) पेटीसह आपत्कालीन किट तयार ठेवा.';

  @override
  String get q_flood_7 => 'पाण्यात अडकल्यास काय करावे?';

  @override
  String get q_flood_7_opt0 => 'घाबरून जा';

  @override
  String get q_flood_7_opt1 => 'शांत राहा आणि मदतीसाठी हाक मारा';

  @override
  String get q_flood_7_opt2 => 'वेगाने पळा';

  @override
  String get q_flood_7_opt3 => 'झोपा';

  @override
  String get q_flood_7_ans => '1';

  @override
  String get tip_flood_7 =>
      'शांत राहा आणि सुरक्षित ठिकाणी पोहोचण्याचा प्रयत्न करा. मदतीसाठी हाक मारा किंवा इतरांना इशारा द्या. घाबरू नका.';

  @override
  String get q_flood_8 => 'कुठून गाडी चालवणे टाळले पाहिजे?';

  @override
  String get q_flood_8_opt0 => 'रस्ता';

  @override
  String get q_flood_8_opt1 => 'पुराचे पाणी';

  @override
  String get q_flood_8_opt2 => 'पूल';

  @override
  String get q_flood_8_opt3 => 'हायवे';

  @override
  String get q_flood_8_ans => '1';

  @override
  String get tip_flood_8 =>
      'पूर आलेल्या रस्त्यांवरून कधीही गाडी चालवू नका. पाणी दिसते त्यापेक्षा खोल असू शकते आणि वाहने वाहून नेऊ शकते.';

  @override
  String get q_flood_9 => 'पुराच्या वेळी काय प्यावे?';

  @override
  String get q_flood_9_opt0 => 'पुराचे पाणी';

  @override
  String get q_flood_9_opt1 => 'घाणेरडे पाणी';

  @override
  String get q_flood_9_opt2 => 'स्वच्छ आणि सुरक्षित पाणी';

  @override
  String get q_flood_9_opt3 => 'नदीचे पाणी';

  @override
  String get q_flood_9_ans => '2';

  @override
  String get tip_flood_9 =>
      'फक्त स्वच्छ आणि सुरक्षित पाणीच प्या. पुराचे पाणी दूषित असू शकते आणि आजार पसरवू शकते.';

  @override
  String get q_flood_10 => 'पुराच्या वेळी तुम्ही काय ऐकले पाहिजे?';

  @override
  String get q_flood_10_opt0 => 'संगीत';

  @override
  String get q_flood_10_opt1 => 'अफवा';

  @override
  String get q_flood_10_opt2 => 'अधिकृत सूचना (Official warnings)';

  @override
  String get q_flood_10_opt3 => 'खेळ';

  @override
  String get q_flood_10_ans => '2';

  @override
  String get tip_flood_10 =>
      'प्रशासनाच्या अधिकृत घोषणा ऐका. ते योग्य सुरक्षा सूचना देतात.';

  @override
  String get q_flood_11 => 'महत्वाच्या कागदपत्रांचे काय करावे?';

  @override
  String get q_flood_11_opt0 => 'फेकून द्या';

  @override
  String get q_flood_11_opt1 => 'सुरक्षित आणि कोरडे ठेवा';

  @override
  String get q_flood_11_opt2 => 'दुर्लक्ष करा';

  @override
  String get q_flood_11_opt3 => 'जाळून टाका';

  @override
  String get q_flood_11_ans => '1';

  @override
  String get tip_flood_11 =>
      'ओळखपत्र, प्रमाणपत्रे यांसारखी कागदपत्रे पाण्यापासून वाचवण्यासाठी वॉटरप्रूफ बॅगेत ठेवा.';

  @override
  String get q_flood_12 => 'कशाला स्पर्श करणे टाळले पाहिजे?';

  @override
  String get q_flood_12_opt0 => 'पाणी';

  @override
  String get q_flood_12_opt1 => 'विजेच्या तारा';

  @override
  String get q_flood_12_opt2 => 'अन्न';

  @override
  String get q_flood_12_opt3 => 'कपडे';

  @override
  String get q_flood_12_ans => '1';

  @override
  String get tip_flood_12 =>
      'पाण्यातील विजेच्या तारांना स्पर्श करणे टाळा. त्यातून गंभीर विजेचा धक्का बसू शकतो.';

  @override
  String get q_flood_13 => 'पूर ओसरल्यानंतर काय करावे?';

  @override
  String get q_flood_13_opt0 => 'लगेच आत जा';

  @override
  String get q_flood_13_opt1 => 'आधी सुरक्षा तपासा';

  @override
  String get q_flood_13_opt2 => 'वेगाने पळा';

  @override
  String get q_flood_13_opt3 => 'नुकसानाकडे दुर्लक्ष करा';

  @override
  String get q_flood_13_ans => '1';

  @override
  String get tip_flood_13 =>
      'पूर ओसरल्यानंतर, सुरक्षिततेसाठी परिसराची पाहणी करा. नुकसान, तुटलेल्या तारा आणि असुरक्षित इमारतींकडे लक्ष द्या.';

  @override
  String get q_flood_14 => 'पुराच्या वेळी तुम्ही कुठे जाऊ नये?';

  @override
  String get q_flood_14_opt0 => 'उंचावरची जागा';

  @override
  String get q_flood_14_opt1 => 'निवारा केंद्र';

  @override
  String get q_flood_14_opt2 => 'सखल भाग';

  @override
  String get q_flood_14_opt3 => 'सुरक्षित जागा';

  @override
  String get q_flood_14_ans => '2';

  @override
  String get tip_flood_14 =>
      'सखल भागात जाणे टाळा कारण तिथे पाणी लवकर साचते आणि तुम्ही अडकू शकता.';

  @override
  String get q_flood_15 => 'अंधारात पुराच्या स्थितीत पाहण्यासाठी काय मदत करते?';

  @override
  String get q_flood_15_opt0 => 'फक्त फोन';

  @override
  String get q_flood_15_opt1 => 'टॉर्च';

  @override
  String get q_flood_15_opt2 => 'पुस्तक';

  @override
  String get q_flood_15_opt3 => 'कपडे';

  @override
  String get q_flood_15_ans => '1';

  @override
  String get tip_flood_15 =>
      'सोबत टॉर्च ठेवा. अंधारात किंवा वीज नसताना स्पष्ट पाहण्यासाठी याची मदत होते.';

  @override
  String get q_flood_16 => 'अन्नाचे काय करावे?';

  @override
  String get q_flood_16_opt0 => 'खराब झालेले अन्न खा';

  @override
  String get q_flood_16_opt1 => 'स्वच्छ अन्न खा';

  @override
  String get q_flood_16_opt2 => 'दुर्लक्ष करा';

  @override
  String get q_flood_16_opt3 => 'सर्व फेकून द्या';

  @override
  String get q_flood_16_ans => '1';

  @override
  String get tip_flood_16 =>
      'फक्त स्वच्छ आणि सुरक्षित अन्नच खा. पुराच्या पाण्यामुळे अन्न खराब आणि असुरक्षित होऊ शकते.';

  @override
  String get q_flood_17 => 'मुलांनी पुराच्या वेळी काय करावे?';

  @override
  String get q_flood_17_opt0 => 'पाण्यात खेळा';

  @override
  String get q_flood_17_opt1 => 'मोठ्यांसोबत राहा';

  @override
  String get q_flood_17_opt2 => 'एकटे पळा';

  @override
  String get q_flood_17_opt3 => 'बाहेर पोहा';

  @override
  String get q_flood_17_ans => '1';

  @override
  String get tip_flood_17 =>
      'नेहमी पालकांसोबत किंवा मोठ्या माणसांसोबत राहा. पाण्याजवळ एकटे जाऊ नका.';

  @override
  String get q_flood_18 => 'पाणी वेगाने वाढल्यास काय करावे?';

  @override
  String get q_flood_18_opt0 => 'तिथेच थांबा';

  @override
  String get q_flood_18_opt1 => 'उंचावरच्या ठिकाणी जा';

  @override
  String get q_flood_18_opt2 => 'झोपा';

  @override
  String get q_flood_18_opt3 => 'दुर्लक्ष करा';

  @override
  String get q_flood_18_ans => '1';

  @override
  String get tip_flood_18 =>
      'जर पाण्याची पातळी वाढली तर लगेच उंचावरच्या ठिकाणी जा. वाट पाहू नका.';

  @override
  String get q_flood_19 => 'पुराचे पाणी का टाळावे?';

  @override
  String get q_flood_19_opt0 => 'ती मजा असते';

  @override
  String get q_flood_19_opt1 => 'ते स्वच्छ असते';

  @override
  String get q_flood_19_opt2 => 'ते धोकादायक असते';

  @override
  String get q_flood_19_opt3 => 'ते थंड असते';

  @override
  String get q_flood_19_ans => '2';

  @override
  String get tip_flood_19 =>
      'पुराचे पाणी खोल, वेगवान आणि घाणेरडे असू शकते. ते हानिकारक वस्तू वाहून आणू शकते आणि इजा पोहोचवू शकते.';

  @override
  String get q_flood_20 => 'पुराच्या वेळी कोण मदत करते?';

  @override
  String get q_flood_20_opt0 => 'मित्र';

  @override
  String get q_flood_20_opt1 => 'मदत पथके (Rescue teams)';

  @override
  String get q_flood_20_opt2 => 'ड्रायव्हर';

  @override
  String get q_flood_20_opt3 => 'दुकानदार';

  @override
  String get q_flood_20_ans => '1';

  @override
  String get tip_flood_20 =>
      'मदत पथके आणि आपत्कालीन सेवा पुराच्या वेळी लोकांना मदत करतात. सुरक्षेसाठी त्यांच्या सूचनांचे पालन करा.';
}
