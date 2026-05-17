// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'सुरक्षा कवच';

  @override
  String get learningModules => 'सीखने के मॉड्यूल';

  @override
  String get emergencySos => 'आपातकालीन SOS';

  @override
  String get points => 'अंक';

  @override
  String get streak => 'लगातार दिन';

  @override
  String get badges => 'बैज';

  @override
  String get safetyReadiness => 'सुरक्षा तैयारी';

  @override
  String get preparedStatus => 'आपदा के लिए तैयार';

  @override
  String get fireSafety => 'अग्नि सुरक्षा';

  @override
  String get earthquake => 'भूकंप';

  @override
  String get floodAlert => 'बाढ़ अलर्ट';

  @override
  String get interactive => 'इंटरएक्टिव';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get logoutConfirm => 'क्या आप वाकई बाहर निकलना चाहते हैं?';

  @override
  String get cancel => 'रद्द करें';

  @override
  String preparednessTitle(String disaster) {
    return '$disaster की तैयारी';
  }

  @override
  String get interactiveGames => 'इंटरएक्टिव गेम्स';

  @override
  String get learnWatch => 'देखें और सीखें';

  @override
  String get testYourQuiz => 'अपनी प्रश्नोत्तरी जांचें';

  @override
  String get liveRegionAlerts => 'क्षेत्रीय अलर्ट';

  @override
  String get realTimeUpdates => 'रीयल-टाइम अपडेट';

  @override
  String resourcesTitle(String disaster) {
    return '$disaster संसाधन';
  }

  @override
  String get chooseHowLearn => 'चुनें कि आप कैसे सीखना चाहते हैं';

  @override
  String get readSafetyTips => 'सुरक्षा टिप्स पढ़ें';

  @override
  String get flashcardsGuidelines => 'फ्लैशकार्ड और आवश्यक दिशानिर्देश';

  @override
  String get watchVideos => 'वीडियो देखें';

  @override
  String get visualSurvivalGuides => 'दृश्य उत्तरजीविता गाइड और ट्यूटोरियल';

  @override
  String modulesTitle(String disaster) {
    return '$disaster मॉड्यूल';
  }

  @override
  String get theBasics => 'बुनियादी बातें';

  @override
  String get levelsFundamental => 'बुनियादी सुरक्षा को कवर करने वाले 20 स्तर';

  @override
  String get duringEvent => 'घटना के दौरान';

  @override
  String get immediateSteps => 'तत्काल सुरक्षा कदम';

  @override
  String get recovery => 'रिकवरी';

  @override
  String get safeCleanup => 'सुरक्षित सफाई और पुनर्निर्माण';

  @override
  String get moduleBasics => 'बुनियादी बातें';

  @override
  String moduleBasicsDesc(String disaster) {
    return 'मौलिक $disaster सुरक्षा को कवर करने वाले 20 स्तर।';
  }

  @override
  String get selectLevel => 'स्तर चुनें';

  @override
  String get startQuiz => 'प्रश्नमंजुषा शुरू करें';

  @override
  String get yourProgress => 'आपकी प्रगति';

  @override
  String levelNumber(int number) {
    return 'स्तर $number';
  }

  @override
  String get moduleDuring => 'घटना के दौरान';

  @override
  String get moduleDuringDesc => 'तत्काल सुरक्षा कदम।';

  @override
  String get moduleRecovery => 'रिकवरी';

  @override
  String get moduleRecoveryDesc => 'सुरक्षित सफाई और पुनर्निर्माण।';

  @override
  String videoGuidesTitle(Object disaster) {
    return '$disaster वीडियो गाइड';
  }

  @override
  String lessonCount(Object number) {
    return 'पाठ $number';
  }

  @override
  String get v_flood_1 => 'बाढ़ उत्तरजीविता गाइड';

  @override
  String get v_flood_2 => 'पीछे मुड़ें, डूबें नहीं';

  @override
  String get v_flood_3 => 'जल सुरक्षा';

  @override
  String get v_flood_4 => 'अपने घर की सुरक्षा';

  @override
  String get v_flood_5 => 'बाढ़ के बाद का स्वास्थ्य';

  @override
  String get v_fire_song => 'अग्नि सुरक्षा गीत';

  @override
  String get v_fire_1 => 'घर में आग से बचाव';

  @override
  String get v_fire_2 => 'अग्निशामक यंत्र का उपयोग';

  @override
  String get v_fire_3 => 'निकासी अभ्यास';

  @override
  String get v_fire_4 => 'रसोई घर की सुरक्षा';

  @override
  String get v_earth_song => 'भूकंप सुरक्षा गीत';

  @override
  String get v_earth_1 => 'झुकें, ढकें और पकड़ें';

  @override
  String get v_earth_2 => 'भीतर की सुरक्षा';

  @override
  String get v_earth_3 => 'भवन मजबूती';

  @override
  String get v_earth_4 => 'सुरक्षा किट';

  @override
  String get q_fire_1 => 'यदि आप आग देखते हैं तो आपको क्या चिल्लाना चाहिए?';

  @override
  String get q_fire_1_opt0 => 'बचाओ (Help)';

  @override
  String get q_fire_1_opt1 => 'आग (Fire)';

  @override
  String get q_fire_1_opt2 => 'भागो (Run)';

  @override
  String get q_fire_1_opt3 => 'रुको (Stop)';

  @override
  String get q_fire_1_ans => '1';

  @override
  String get tip_fire_1 =>
      'यदि आप आग देखते हैं, तो दूसरों को सचेत करने के लिए जोर से \'आग!\' चिल्लाएं। इससे लोगों को खतरे के बारे में जल्दी पता चल जाता है। कभी चुप न रहें। पास के लोगों को सूचित करें और सुरक्षित स्थान पर जाएं।';

  @override
  String get q_fire_2 => 'फायर इमरजेंसी नंबर क्या है?';

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
      'दमकल विभाग (Fire Brigade) को बुलाने के लिए 101 डायल करें। साफ बोलें और लैंडमार्क के साथ सटीक स्थान बताएं। शांत रहें और कॉल पर दिए गए निर्देशों का पालन करें।';

  @override
  String get q_fire_3 => 'यदि कपड़ों में आग लग जाए तो क्या करें?';

  @override
  String get q_fire_3_opt0 => 'भागें';

  @override
  String get q_fire_3_opt1 => 'छिप जाएं';

  @override
  String get q_fire_3_opt2 => 'रुकें, झुकें और लुढ़कें (Stop Drop Roll)';

  @override
  String get q_fire_3_opt3 => 'कूदें';

  @override
  String get q_fire_3_ans => '2';

  @override
  String get tip_fire_3 =>
      'यदि आपके कपड़ों में आग लग जाती है, तो भागना बंद करें (STOP), जमीन पर गिरें (DROP), और आग बुझाने के लिए लुढ़कें (ROLL)। भागने से आग तेजी से फैलती है।';

  @override
  String get q_fire_4 => 'आग लगी इमारत से बाहर निकलने का सबसे अच्छा तरीका?';

  @override
  String get q_fire_4_opt0 => 'लिफ्ट (Lift)';

  @override
  String get q_fire_4_opt1 => 'सीढ़ियाँ (Stairs)';

  @override
  String get q_fire_4_opt2 => 'कूदना';

  @override
  String get q_fire_4_opt3 => 'छिपना';

  @override
  String get q_fire_4_ans => '1';

  @override
  String get tip_fire_4 =>
      'आग के दौरान हमेशा सीढ़ियों का उपयोग करें। बिजली कटने के कारण लिफ्ट रुक सकती है और धुएं से भर सकती है। निकास (Exit) संकेतों का पालन करें और शांत रहें।';

  @override
  String get q_fire_5 => 'आग में नीचे झुककर क्यों रहना चाहिए?';

  @override
  String get q_fire_5_opt0 => 'हवा ठंडी होती है';

  @override
  String get q_fire_5_opt1 => 'धुआं ऊपर उठता है';

  @override
  String get q_fire_5_opt2 => 'गर्मी बढ़ती है';

  @override
  String get q_fire_5_opt3 => 'कोई नहीं';

  @override
  String get q_fire_5_ans => '1';

  @override
  String get tip_fire_5 =>
      'धुआं ऊपर की ओर उठता है, इसलिए साफ हवा जमीन के पास होती है। नीचे झुककर रेंगें और सुरक्षित रूप से सांस लेने के लिए अपनी नाक को कपड़े से ढक लें।';

  @override
  String get q_fire_6 =>
      'बिजली की आग के लिए कौन सा अग्निशामक (Extinguisher) उपयोग करें?';

  @override
  String get q_fire_6_opt0 => 'पानी (Water)';

  @override
  String get q_fire_6_opt1 => 'झाग (Foam)';

  @override
  String get q_fire_6_opt2 => 'CO2';

  @override
  String get q_fire_6_opt3 => 'तेल (Oil)';

  @override
  String get q_fire_6_ans => '2';

  @override
  String get tip_fire_6 =>
      'बिजली की आग के लिए CO2 अग्निशामक का उपयोग करें। कभी भी पानी का उपयोग न करें क्योंकि इससे बिजली का झटका लग सकता है।';

  @override
  String get q_fire_7 => 'आग में दरवाजा खोलने से पहले क्या करना चाहिए?';

  @override
  String get q_fire_7_opt0 => 'अनदेखा करें';

  @override
  String get q_fire_7_opt1 => 'उसे छुएं';

  @override
  String get q_fire_7_opt2 => 'जल्दी खोलें';

  @override
  String get q_fire_7_opt3 => 'लात मारें';

  @override
  String get q_fire_7_ans => '1';

  @override
  String get tip_fire_7 =>
      'दरवाजे को पहले छुएं। यदि यह गर्म है, तो इसे न खोलें क्योंकि दूसरी तरफ आग हो सकती है। कोई दूसरा सुरक्षित निकास खोजें।';

  @override
  String get q_fire_8 => 'आग क्या चीज़ तेजी से फैलाती है?';

  @override
  String get q_fire_8_opt0 => 'पानी';

  @override
  String get q_fire_8_opt1 => 'हवा (Wind)';

  @override
  String get q_fire_8_opt2 => 'रेत';

  @override
  String get q_fire_8_opt3 => 'कपड़ा';

  @override
  String get q_fire_8_ans => '1';

  @override
  String get tip_fire_8 =>
      'हवा अधिक ऑक्सीजन देकर आग को तेजी से फैलाती है। आग के दौरान खुली हवा वाले क्षेत्रों से दूर रहें।';

  @override
  String get q_fire_9 => 'आग में क्या करने से बचना चाहिए?';

  @override
  String get q_fire_9_opt0 => 'सीढ़ियाँ';

  @override
  String get q_fire_9_opt1 => 'निकास (Exit)';

  @override
  String get q_fire_9_opt2 => 'लिफ्ट';

  @override
  String get q_fire_9_opt3 => 'अलार्म';

  @override
  String get q_fire_9_ans => '2';

  @override
  String get tip_fire_9 =>
      'आग के दौरान कभी भी लिफ्ट का उपयोग न करें। वे काम करना बंद कर सकती हैं और आप फंस सकते हैं। बचने के लिए हमेशा सीढ़ियों का उपयोग करें।';

  @override
  String get q_fire_10 => 'फायर अलार्म क्या करता है?';

  @override
  String get q_fire_10_opt0 => 'हवा ठंडी करता है';

  @override
  String get q_fire_10_opt1 => 'लोगों को सचेत करता है';

  @override
  String get q_fire_10_opt2 => 'संगीत बजाता है';

  @override
  String get q_fire_10_opt3 => 'कमरे में रोशनी करता है';

  @override
  String get q_fire_10_ans => '1';

  @override
  String get tip_fire_10 =>
      'फायर अलार्म लोगों को खतरे के बारे में चेतावनी देते हैं। जब आप इसे सुनें, तो तुरंत बाहर निकलें और सुरक्षित स्थान पर जाएं।';

  @override
  String get q_fire_11 => 'रसोई की छोटी आग को कैसे रोकें?';

  @override
  String get q_fire_11_opt0 => 'कागज';

  @override
  String get q_fire_11_opt1 => 'कपड़े से ढकना';

  @override
  String get q_fire_11_opt2 => 'तेल';

  @override
  String get q_fire_11_opt3 => 'पानी';

  @override
  String get q_fire_11_ans => '1';

  @override
  String get tip_fire_11 =>
      'ऑक्सीजन काटने के लिए आग को ढक्कन या कपड़े से ढक दें। तेल की आग पर कभी भी पानी का उपयोग न करें क्योंकि यह लपटों को फैलाता है।';

  @override
  String get q_fire_12 => 'धुआं क्या कारण बन सकता है?';

  @override
  String get q_fire_12_opt0 => 'ऊर्जा';

  @override
  String get q_fire_12_opt1 => 'सांस लेने में समस्या';

  @override
  String get q_fire_12_opt2 => 'नींद';

  @override
  String get q_fire_12_opt3 => 'खुशी';

  @override
  String get q_fire_12_ans => '1';

  @override
  String get tip_fire_12 =>
      'धुएं में हानिकारक गैसें होती हैं और इससे सांस लेने में समस्या या बेहोशी हो सकती है। हमेशा जल्दी से ताजी हवा की ओर बढ़ें।';

  @override
  String get q_fire_13 => 'आग के बाद सुरक्षित स्थान कौन सा है?';

  @override
  String get q_fire_13_opt0 => 'अंदर';

  @override
  String get q_fire_13_opt1 => 'खुला मैदान';

  @override
  String get q_fire_13_opt2 => 'बेसमेंट';

  @override
  String get q_fire_13_opt3 => 'लिफ्ट';

  @override
  String get q_fire_13_ans => '1';

  @override
  String get tip_fire_13 =>
      'बचने के बाद खुले सुरक्षित क्षेत्र में जाएं। वहीं रहें और वापस अंदर न जाएं।';

  @override
  String get q_fire_14 => 'गैस रिसाव के दौरान क्या करें?';

  @override
  String get q_fire_14_opt0 => 'लाइट चालू करें';

  @override
  String get q_fire_14_opt1 => 'गैस बंद करें';

  @override
  String get q_fire_14_opt2 => 'आग का उपयोग करें';

  @override
  String get q_fire_14_opt3 => 'एसी चलाएं';

  @override
  String get q_fire_14_ans => '1';

  @override
  String get tip_fire_14 =>
      'गैस की आपूर्ति बंद करें और स्विच या आग के उपयोग से बचें। क्षेत्र छोड़ दें और दूसरों को सूचित करें।';

  @override
  String get q_fire_15 => 'आग जलने के लिए किसकी आवश्यकता होती है?';

  @override
  String get q_fire_15_opt0 => 'पानी';

  @override
  String get q_fire_15_opt1 => 'गर्मी, ईंधन, ऑक्सीजन';

  @override
  String get q_fire_15_opt2 => 'केवल हवा';

  @override
  String get q_fire_15_opt3 => 'कुछ नहीं';

  @override
  String get q_fire_15_ans => '1';

  @override
  String get tip_fire_15 =>
      'आग को गर्मी, ईंधन और ऑक्सीजन की आवश्यकता होती है। इनमें से किसी एक को हटाने से आग रुक जाएगी।';

  @override
  String get q_fire_16 => 'गीले कपड़े का उपयोग क्यों करें?';

  @override
  String get q_fire_16_opt0 => 'खेलने के लिए';

  @override
  String get q_fire_16_opt1 => 'सुरक्षित सांस लेने के लिए';

  @override
  String get q_fire_16_opt2 => 'सोने के लिए';

  @override
  String get q_fire_16_opt3 => 'सफाई के लिए';

  @override
  String get q_fire_16_ans => '1';

  @override
  String get tip_fire_16 =>
      'गीला कपड़ा धुएं को छानने में मदद करता है और आग से बचने के दौरान सांस लेना आसान बनाता है।';

  @override
  String get q_fire_17 => 'कौन सी वस्तु जोखिम भरी है?';

  @override
  String get q_fire_17_opt0 => 'किताबें';

  @override
  String get q_fire_17_opt1 => 'ईंधन (Fuel)';

  @override
  String get q_fire_17_opt2 => 'जूते';

  @override
  String get q_fire_17_opt3 => 'खिलौने';

  @override
  String get q_fire_17_ans => '1';

  @override
  String get tip_fire_17 =>
      'ईंधन अत्यधिक ज्वलनशील होता है। इसे गर्मी और आग के स्रोतों से दूर सुरक्षित रूप से स्टोर करें।';

  @override
  String get q_fire_18 => 'फायर ड्रिल का अभ्यास क्यों करें?';

  @override
  String get q_fire_18_opt0 => 'मस्ती';

  @override
  String get q_fire_18_opt1 => 'सुरक्षा अभ्यास';

  @override
  String get q_fire_18_opt2 => 'नींद';

  @override
  String get q_fire_18_opt3 => 'समय पास';

  @override
  String get q_fire_18_ans => '1';

  @override
  String get tip_fire_18 =>
      'फायर ड्रिल आपको आपातकालीन स्थितियों में कार्य करना सीखने में मदद करती हैं। वे आपको तैयार और आत्मविश्वासी बनाती हैं।';

  @override
  String get q_fire_19 => 'अलार्म बजने पर क्या करें?';

  @override
  String get q_fire_19_opt0 => 'अनदेखा करें';

  @override
  String get q_fire_19_opt1 => 'छिप जाएं';

  @override
  String get q_fire_19_opt2 => 'बाहर जाएं';

  @override
  String get q_fire_19_opt3 => 'सोएं';

  @override
  String get q_fire_19_ans => '2';

  @override
  String get tip_fire_19 =>
      'अलार्म बजते ही तुरंत निकल जाएं। शांत रहें, धक्का-मुक्की न करें और निकास मार्गों का पालन करें।';

  @override
  String get q_fire_20 => 'फायर इमरजेंसी में कौन मदद करता है?';

  @override
  String get q_fire_20_opt0 => 'दोस्त';

  @override
  String get q_fire_20_opt1 => 'दमकलकर्मी (Firefighters)';

  @override
  String get q_fire_20_opt2 => 'ड्राइवर';

  @override
  String get q_fire_20_opt3 => 'दुकानदार';

  @override
  String get q_fire_20_ans => '1';

  @override
  String get tip_fire_20 =>
      'दमकलकर्मियों को आग पर काबू पाने और लोगों को बचाने के लिए प्रशिक्षित किया जाता है। हमेशा उनके निर्देशों का पालन करें।';

  @override
  String get q_earthquake_1 => 'भूकंप के दौरान आपको क्या करना चाहिए?';

  @override
  String get q_earthquake_1_opt0 => 'बाहर भागें';

  @override
  String get q_earthquake_1_opt1 => 'कूदें';

  @override
  String get q_earthquake_1_opt2 => 'झुकें, ढकें और पकड़ें (Drop Cover Hold)';

  @override
  String get q_earthquake_1_opt3 => 'लिफ्ट में छिपें';

  @override
  String get q_earthquake_1_ans => '2';

  @override
  String get tip_earthquake_1 =>
      '\'झुकें, ढकें और पकड़ें\' नियम का पालन करें। जमीन पर झुकें, मजबूत फर्नीचर के नीचे शरण लें और उसे कसकर पकड़ें। यह आपको गिरने वाली वस्तुओं से बचाता है।';

  @override
  String get q_earthquake_2 => 'इमारत के अंदर सबसे सुरक्षित जगह कहाँ है?';

  @override
  String get q_earthquake_2_opt0 => 'खिड़की के पास';

  @override
  String get q_earthquake_2_opt1 => 'मजबूत मेज के नीचे';

  @override
  String get q_earthquake_2_opt2 => 'बालकनी';

  @override
  String get q_earthquake_2_opt3 => 'लिफ्ट';

  @override
  String get q_earthquake_2_ans => '1';

  @override
  String get tip_earthquake_2 =>
      'किसी मजबूत मेज या डेस्क के नीचे बैठें। यह आपको पंखे, कांच और छत के गिरते हिस्सों से बचाता है।';

  @override
  String get q_earthquake_3 => 'भूकंप के दौरान किससे बचना चाहिए?';

  @override
  String get q_earthquake_3_opt0 => 'सिर ढकने से';

  @override
  String get q_earthquake_3_opt1 => 'बाहर भागने से';

  @override
  String get q_earthquake_3_opt2 => 'नीचे झुकने से';

  @override
  String get q_earthquake_3_opt3 => 'मेज पकड़ने से';

  @override
  String get q_earthquake_3_ans => '1';

  @override
  String get tip_earthquake_3 =>
      'कंपन के दौरान बाहर न भागें। गिरती हुई वस्तुएं और मलबा आपको चोट पहुँचा सकता है। पहले अंदर रहें और अपनी रक्षा करें।';

  @override
  String get q_earthquake_4 => 'यदि आप बाहर हैं, तो आपको क्या करना चाहिए?';

  @override
  String get q_earthquake_4_opt0 => 'इमारत के पास खड़े रहें';

  @override
  String get q_earthquake_4_opt1 => 'खुले क्षेत्र में जाएं';

  @override
  String get q_earthquake_4_opt2 => 'घर के अंदर भागें';

  @override
  String get q_earthquake_4_opt3 => 'पेड़ के नीचे खड़े रहें';

  @override
  String get q_earthquake_4_ans => '1';

  @override
  String get tip_earthquake_4 =>
      'इमारतों, पेड़ों और खंभों से दूर किसी खुले क्षेत्र में चले जाएं। कंपन रुकने तक वहीं रहें।';

  @override
  String get q_earthquake_5 => 'भूकंप के दौरान आपको किसकी रक्षा करनी चाहिए?';

  @override
  String get q_earthquake_5_opt0 => 'पैर';

  @override
  String get q_earthquake_5_opt1 => 'हाथ';

  @override
  String get q_earthquake_5_opt2 => 'सिर और गर्दन';

  @override
  String get q_earthquake_5_opt3 => 'बाल';

  @override
  String get q_earthquake_5_ans => '2';

  @override
  String get tip_earthquake_5 =>
      'अपनी बाहों या तकिए का उपयोग करके अपने सिर और गर्दन की रक्षा करें। इन अंगों में चोट लगने का खतरा सबसे अधिक होता है।';

  @override
  String get q_earthquake_6 => 'यदि आप बिस्तर पर हैं तो क्या करें?';

  @override
  String get q_earthquake_6_opt0 => 'बाहर भागें';

  @override
  String get q_earthquake_6_opt1 => 'वहीं रहें और सिर ढकें';

  @override
  String get q_earthquake_6_opt2 => 'कूदें';

  @override
  String get q_earthquake_6_opt3 => 'बिस्तर के नीचे छिपें';

  @override
  String get q_earthquake_6_ans => '1';

  @override
  String get tip_earthquake_6 =>
      'बिस्तर पर ही रहें और तकिए से अपना सिर ढक लें। भागें नहीं, क्योंकि चीजें गिर सकती हैं और आपको घायल कर सकती हैं।';

  @override
  String get q_earthquake_7 => 'आपको किसके उपयोग से बचना चाहिए?';

  @override
  String get q_earthquake_7_opt0 => 'सीढ़ियाँ';

  @override
  String get q_earthquake_7_opt1 => 'लिफ्ट';

  @override
  String get q_earthquake_7_opt2 => 'दरवाजा';

  @override
  String get q_earthquake_7_opt3 => 'मेज';

  @override
  String get q_earthquake_7_ans => '1';

  @override
  String get tip_earthquake_7 =>
      'भूकंप के दौरान कभी भी लिफ्ट का उपयोग न करें। बिजली जा सकती है और आप फंस सकते हैं।';

  @override
  String get q_earthquake_8 => 'भूकंप के बाद क्या जाँच करनी चाहिए?';

  @override
  String get q_earthquake_8_opt0 => 'कपड़े';

  @override
  String get q_earthquake_8_opt1 => 'मोबाइल';

  @override
  String get q_earthquake_8_opt2 => 'चोट और नुकसान';

  @override
  String get q_earthquake_8_opt3 => 'टीवी';

  @override
  String get q_earthquake_8_ans => '2';

  @override
  String get tip_earthquake_8 =>
      'अपनी और दूसरों की चोटों की जाँच करें। गैस रिसाव या टूटे हुए तारों जैसे नुकसानों पर नज़र डालें।';

  @override
  String get q_earthquake_9 => 'भूकंप के दौरान क्या गिर सकता है?';

  @override
  String get q_earthquake_9_opt0 => 'हवा';

  @override
  String get q_earthquake_9_opt1 => 'फर्नीचर';

  @override
  String get q_earthquake_9_opt2 => 'पानी';

  @override
  String get q_earthquake_9_opt3 => 'जमीन';

  @override
  String get q_earthquake_9_ans => '1';

  @override
  String get tip_earthquake_9 =>
      'भारी फर्नीचर, पंखे और अलमारियां गिर सकती हैं। उनसे दूर रहें और शरण लें।';

  @override
  String get q_earthquake_10 => 'खिड़कियों के पास आपको क्या करना चाहिए?';

  @override
  String get q_earthquake_10_opt0 => 'पास खड़े रहें';

  @override
  String get q_earthquake_10_opt1 => 'कांच तोड़ें';

  @override
  String get q_earthquake_10_opt2 => 'दूर रहें';

  @override
  String get q_earthquake_10_opt3 => 'उन्हें खोलें';

  @override
  String get q_earthquake_10_ans => '2';

  @override
  String get tip_earthquake_10 =>
      'कांच टूट सकता है और चोट पहुँचा सकता है। कंपन के दौरान हमेशा खिड़कियों से दूर रहें।';

  @override
  String get q_earthquake_11 => 'कंपन रुकने के बाद क्या करें?';

  @override
  String get q_earthquake_11_opt0 => 'बिना देखे भागें';

  @override
  String get q_earthquake_11_opt1 => 'सुरक्षा की जाँच करें';

  @override
  String get q_earthquake_11_opt2 => 'सो जाएं';

  @override
  String get q_earthquake_11_opt3 => 'अनदेखा करें';

  @override
  String get q_earthquake_11_ans => '1';

  @override
  String get tip_earthquake_11 =>
      'कंपन रुकने के बाद, सावधानी से चलें और बाहर निकलने से पहले खतरों की जाँच करें।';

  @override
  String get q_earthquake_12 => 'आफ्टरशॉक (Aftershock) क्या है?';

  @override
  String get q_earthquake_12_opt0 => 'भारी बारिश';

  @override
  String get q_earthquake_12_opt1 => 'हल्के झटके';

  @override
  String get q_earthquake_12_opt2 => 'आग';

  @override
  String get q_earthquake_12_opt3 => 'हवा';

  @override
  String get q_earthquake_12_ans => '1';

  @override
  String get tip_earthquake_12 =>
      'आफ्टरशॉक्स छोटे भूकंप होते हैं जो मुख्य भूकंप के बाद आते हैं। सतर्क और तैयार रहें।';

  @override
  String get q_earthquake_13 => 'बाहर कहाँ खड़ा नहीं होना चाहिए?';

  @override
  String get q_earthquake_13_opt0 => 'खुला मैदान';

  @override
  String get q_earthquake_13_opt1 => 'इमारतों के पास';

  @override
  String get q_earthquake_13_opt2 => 'खाली खेत';

  @override
  String get q_earthquake_13_opt3 => 'खेल का मैदान';

  @override
  String get q_earthquake_13_ans => '1';

  @override
  String get tip_earthquake_13 =>
      'इमारतों से दूर रहें क्योंकि उनके हिस्से गिर सकते हैं और चोट पहुँचा सकते हैं।';

  @override
  String get q_earthquake_14 => 'यदि आप फंस जाएं तो क्या करें?';

  @override
  String get q_earthquake_14_opt0 => 'ज़ोर से चिल्लाएं';

  @override
  String get q_earthquake_14_opt1 => 'शांत रहें और थपथपाएं';

  @override
  String get q_earthquake_14_opt2 => 'भागें';

  @override
  String get q_earthquake_14_opt3 => 'सो जाएं';

  @override
  String get q_earthquake_14_ans => '1';

  @override
  String get tip_earthquake_14 =>
      'शांत रहें और किसी चीज़ को थपथपाकर आवाज़ करें। इससे बचाव दल को आपको ढूँढने में मदद मिलती है।';

  @override
  String get q_earthquake_15 => 'आपको क्या तैयार रखना चाहिए?';

  @override
  String get q_earthquake_15_opt0 => 'खिलौने';

  @override
  String get q_earthquake_15_opt1 => 'आपातकालीन किट (Emergency kit)';

  @override
  String get q_earthquake_15_opt2 => 'खेल';

  @override
  String get q_earthquake_15_opt3 => 'किताबें';

  @override
  String get q_earthquake_15_ans => '1';

  @override
  String get tip_earthquake_15 =>
      'घर पर पानी, भोजन, टॉर्च और प्राथमिक चिकित्सा (First aid) के साथ एक आपातकालीन किट तैयार रखें।';

  @override
  String get q_earthquake_16 => 'स्कूल में क्या करना चाहिए?';

  @override
  String get q_earthquake_16_opt0 => 'भागें';

  @override
  String get q_earthquake_16_opt1 => 'शिक्षक की बात मानें';

  @override
  String get q_earthquake_16_opt2 => 'अकेले छिपें';

  @override
  String get q_earthquake_16_opt3 => 'कूदें';

  @override
  String get q_earthquake_16_ans => '1';

  @override
  String get tip_earthquake_16 =>
      'हमेशा अपने शिक्षक की बात सुनें। सुरक्षा निर्देशों का पालन करें और शांत रहें।';

  @override
  String get q_earthquake_17 => 'बिजली के पास क्या करना चाहिए?';

  @override
  String get q_earthquake_17_opt0 => 'तारों को छुएं';

  @override
  String get q_earthquake_17_opt1 => 'दूर रहें';

  @override
  String get q_earthquake_17_opt2 => 'खेलें';

  @override
  String get q_earthquake_17_opt3 => 'तार काटें';

  @override
  String get q_earthquake_17_ans => '1';

  @override
  String get tip_earthquake_17 =>
      'क्षतिग्रस्त तारों से दूर रहें। वे बिजली का झटका (Electric shock) दे सकते हैं।';

  @override
  String get q_earthquake_18 => 'गैस आपूर्ति के साथ क्या करना चाहिए?';

  @override
  String get q_earthquake_18_opt0 => 'बंद करें';

  @override
  String get q_earthquake_18_opt1 => 'चालू करें';

  @override
  String get q_earthquake_18_opt2 => 'अनदेखा करें';

  @override
  String get q_earthquake_18_opt3 => 'पाइप तोड़ें';

  @override
  String get q_earthquake_18_ans => '0';

  @override
  String get tip_earthquake_18 =>
      'आग या विस्फोट को रोकने के लिए भूकंप के बाद गैस की आपूर्ति बंद कर दें।';

  @override
  String get q_earthquake_19 => 'शांत क्यों रहें?';

  @override
  String get q_earthquake_19_opt0 => 'मज़े के लिए';

  @override
  String get q_earthquake_19_opt1 => 'स्पष्ट सोचने के लिए';

  @override
  String get q_earthquake_19_opt2 => 'सोने के लिए';

  @override
  String get q_earthquake_19_opt3 => 'अनदेखा करने के लिए';

  @override
  String get q_earthquake_19_ans => '1';

  @override
  String get tip_earthquake_19 =>
      'शांत रहने से आपको सही ढंग से सोचने और सुरक्षित निर्णय लेने में मदद मिलती है।';

  @override
  String get q_earthquake_20 => 'भूकंप के बाद कौन मदद करता है?';

  @override
  String get q_earthquake_20_opt0 => 'दोस्त';

  @override
  String get q_earthquake_20_opt1 => 'बचाव दल (Rescue teams)';

  @override
  String get q_earthquake_20_opt2 => 'ड्राइवर';

  @override
  String get q_earthquake_20_opt3 => 'दुकानदार';

  @override
  String get q_earthquake_20_ans => '1';

  @override
  String get tip_earthquake_20 =>
      'बचाव दल और आपातकालीन सेवाएं आपदाओं के दौरान लोगों की मदद करती हैं। उनके निर्देशों का पालन करें।';

  @override
  String get q_flood_1 => 'बाढ़ की चेतावनी मिलने पर आपको क्या करना चाहिए?';

  @override
  String get q_flood_1_opt0 => 'अनदेखा करें';

  @override
  String get q_flood_1_opt1 => 'तैयारी करें और सुरक्षित स्थान पर जाएं';

  @override
  String get q_flood_1_opt2 => 'सो जाएं';

  @override
  String get q_flood_1_opt3 => 'बाहर खेलें';

  @override
  String get q_flood_1_ans => '1';

  @override
  String get tip_flood_1 =>
      'जब आप बाढ़ की चेतावनी सुनें, तो तुरंत तैयारी करें। भोजन, पानी, दवाएं और दस्तावेज़ जैसे ज़रूरी सामान पैक करें। किसी सुरक्षित ऊंचे स्थान पर जाएं।';

  @override
  String get q_flood_2 => 'बाढ़ के दौरान आपको कहाँ जाना चाहिए?';

  @override
  String get q_flood_2_opt0 => 'बेसमेंट (तहखाना)';

  @override
  String get q_flood_2_opt1 => 'निचला इलाका';

  @override
  String get q_flood_2_opt2 => 'ऊंचाई वाला स्थान';

  @override
  String get q_flood_2_opt3 => 'नाला';

  @override
  String get q_flood_2_ans => '2';

  @override
  String get tip_flood_2 =>
      'बाढ़ के दौरान हमेशा ऊंचाई वाले स्थान पर जाएं। पानी निचले इलाकों में जमा होता है और तेजी से बढ़ सकता है, जिससे खतरा हो सकता है।';

  @override
  String get q_flood_3 => 'आपको कहाँ चलने से बचना चाहिए?';

  @override
  String get q_flood_3_opt0 => 'साफ सड़क';

  @override
  String get q_flood_3_opt1 => 'बाढ़ का पानी';

  @override
  String get q_flood_3_opt2 => 'सूखी ज़मीन';

  @override
  String get q_flood_3_opt3 => 'पुल';

  @override
  String get q_flood_3_ans => '1';

  @override
  String get tip_flood_3 =>
      'बाढ़ के पानी में कभी न चलें। यह गहरा और तेज़ हो सकता है, और इसमें खतरनाक वस्तुएं या खुले नाले हो सकते हैं।';

  @override
  String get q_flood_4 => 'बाढ़ का पानी खतरनाक क्यों है?';

  @override
  String get q_flood_4_opt0 => 'यह साफ होता है';

  @override
  String get q_flood_4_opt1 => 'यह ठंडा होता है';

  @override
  String get q_flood_4_opt2 => 'इसमें कीटाणु हो सकते हैं';

  @override
  String get q_flood_4_opt3 => 'यह मज़ेदार होता है';

  @override
  String get q_flood_4_ans => '2';

  @override
  String get tip_flood_4 =>
      'बाढ़ के पानी में कीटाणु, रसायन और गंदगी हो सकती है। इससे बीमारियाँ और संक्रमण हो सकते हैं।';

  @override
  String get q_flood_5 => 'बाढ़ के दौरान आपको क्या बंद कर देना चाहिए?';

  @override
  String get q_flood_5_opt0 => 'पंखा';

  @override
  String get q_flood_5_opt1 => 'गैस और बिजली';

  @override
  String get q_flood_5_opt2 => 'सिर्फ टीवी';

  @override
  String get q_flood_5_opt3 => 'सिर्फ लाइट';

  @override
  String get q_flood_5_ans => '1';

  @override
  String get tip_flood_5 =>
      'बाढ़ के दौरान बिजली के झटके और आग की दुर्घटनाओं से बचने के लिए बिजली और गैस बंद कर दें।';

  @override
  String get q_flood_6 => 'आपात स्थिति में आपको क्या साथ रखना चाहिए?';

  @override
  String get q_flood_6_opt0 => 'खिलौने';

  @override
  String get q_flood_6_opt1 => 'आपातकालीन किट (Emergency kit)';

  @override
  String get q_flood_6_opt2 => 'खेल का सामान';

  @override
  String get q_flood_6_opt3 => 'जूते';

  @override
  String get q_flood_6_ans => '1';

  @override
  String get tip_flood_6 =>
      'पानी, भोजन, टॉर्च, बैटरी और प्राथमिक चिकित्सा (First aid) के साथ एक आपातकालीन किट तैयार रखें।';

  @override
  String get q_flood_7 => 'यदि आप पानी में फंस जाएं तो क्या करें?';

  @override
  String get q_flood_7_opt0 => 'घबराएं';

  @override
  String get q_flood_7_opt1 => 'शांत रहें और मदद के लिए पुकारें';

  @override
  String get q_flood_7_opt2 => 'तेज़ भागें';

  @override
  String get q_flood_7_opt3 => 'सो जाएं';

  @override
  String get q_flood_7_ans => '1';

  @override
  String get tip_flood_7 =>
      'शांत रहें और सुरक्षित स्थान पर पहुँचने की कोशिश करें। मदद के लिए पुकारें या दूसरों को संकेत दें। घबराएं नहीं।';

  @override
  String get q_flood_8 => 'आपको कहाँ गाड़ी चलाने से बचना चाहिए?';

  @override
  String get q_flood_8_opt0 => 'सड़क';

  @override
  String get q_flood_8_opt1 => 'बाढ़ वाला रास्ता';

  @override
  String get q_flood_8_opt2 => 'पुल';

  @override
  String get q_flood_8_opt3 => 'हाइवे';

  @override
  String get q_flood_8_ans => '1';

  @override
  String get tip_flood_8 =>
      'बाढ़ वाली सड़कों पर कभी गाड़ी न चलाएं। पानी दिखने से ज़्यादा गहरा हो सकता है और वाहनों को बहा ले जा सकता है।';

  @override
  String get q_flood_9 => 'बाढ़ के दौरान क्या पीना चाहिए?';

  @override
  String get q_flood_9_opt0 => 'बाढ़ का पानी';

  @override
  String get q_flood_9_opt1 => 'गंदा पानी';

  @override
  String get q_flood_9_opt2 => 'साफ और सुरक्षित पानी';

  @override
  String get q_flood_9_opt3 => 'नदी का पानी';

  @override
  String get q_flood_9_ans => '2';

  @override
  String get tip_flood_9 =>
      'केवल साफ and सुरक्षित पानी ही पिएं। बाढ़ का पानी दूषित हो सकता है and बीमारी का कारण बन सकता है।';

  @override
  String get q_flood_10 => 'बाढ़ के दौरान आपको क्या सुनना चाहिए?';

  @override
  String get q_flood_10_opt0 => 'संगीत';

  @override
  String get q_flood_10_opt1 => 'अफवाहें';

  @override
  String get q_flood_10_opt2 => 'आधिकारिक चेतावनी (Official warnings)';

  @override
  String get q_flood_10_opt3 => 'खेल';

  @override
  String get q_flood_10_ans => '2';

  @override
  String get tip_flood_10 =>
      'अधिकारियों की आधिकारिक घोषणाएं सुनें। वे सही सुरक्षा निर्देश देते हैं।';

  @override
  String get q_flood_11 => 'महत्वपूर्ण दस्तावेजों का क्या करना चाहिए?';

  @override
  String get q_flood_11_opt0 => 'फेंक दें';

  @override
  String get q_flood_11_opt1 => 'सुरक्षित और सूखा रखें';

  @override
  String get q_flood_11_opt2 => 'अनदेखा करें';

  @override
  String get q_flood_11_opt3 => 'जला दें';

  @override
  String get q_flood_11_ans => '1';

  @override
  String get tip_flood_11 =>
      'आईडी, प्रमाणपत्र जैसे दस्तावेजों को पानी से बचाने के लिए वाटरप्रूफ बैग में रखें।';

  @override
  String get q_flood_12 => 'आपको किसे छूने से बचना चाहिए?';

  @override
  String get q_flood_12_opt0 => 'पानी';

  @override
  String get q_flood_12_opt1 => 'बिजली के तार';

  @override
  String get q_flood_12_opt2 => 'भोजन';

  @override
  String get q_flood_12_opt3 => 'कपड़े';

  @override
  String get q_flood_12_ans => '1';

  @override
  String get tip_flood_12 =>
      'पानी में बिजली के तारों को छूने से बचें। उनसे गंभीर बिजली का झटका लग सकता है।';

  @override
  String get q_flood_13 => 'बाढ़ के बाद क्या करना चाहिए?';

  @override
  String get q_flood_13_opt0 => 'तुरंत अंदर जाएं';

  @override
  String get q_flood_13_opt1 => 'पहले सुरक्षा की जाँच करें';

  @override
  String get q_flood_13_opt2 => 'तेज़ भागें';

  @override
  String get q_flood_13_opt3 => 'नुकसान की अनदेखा करें';

  @override
  String get q_flood_13_ans => '1';

  @override
  String get tip_flood_13 =>
      'बाढ़ के बाद, सुरक्षा के लिए अपने आसपास की जाँच करें। नुकसान, टूटे तारों और असुरक्षित ढांचों पर नज़र रखें।';

  @override
  String get q_flood_14 => 'बाढ़ के दौरान आपको कहाँ नहीं जाना चाहिए?';

  @override
  String get q_flood_14_opt0 => 'ऊंचाई वाली जगह';

  @override
  String get q_flood_14_opt1 => 'आश्रय स्थल';

  @override
  String get q_flood_14_opt2 => 'निचले इलाके';

  @override
  String get q_flood_14_opt3 => 'सुरक्षित स्थान';

  @override
  String get q_flood_14_ans => '2';

  @override
  String get tip_flood_14 =>
      'निचले इलाकों से बचें क्योंकि वहां पानी जल्दी जमा हो जाता है और आप फंस सकते हैं।';

  @override
  String get q_flood_15 =>
      'अंधेरे में बाढ़ की स्थिति में देखने में क्या मदद करता है?';

  @override
  String get q_flood_15_opt0 => 'सिर्फ फोन';

  @override
  String get q_flood_15_opt1 => 'टॉर्च';

  @override
  String get q_flood_15_opt2 => 'किताब';

  @override
  String get q_flood_15_opt3 => 'कपड़े';

  @override
  String get q_flood_15_ans => '1';

  @override
  String get tip_flood_15 =>
      'अपने पास एक टॉर्च रखें। यह अंधेरे या बिजली कटने की स्थिति में स्पष्ट देखने में मदद करती है।';

  @override
  String get q_flood_16 => 'भोजन के साथ क्या करना चाहिए?';

  @override
  String get q_flood_16_opt0 => 'खराब भोजन खाएं';

  @override
  String get q_flood_16_opt1 => 'साफ भोजन खाएं';

  @override
  String get q_flood_16_opt2 => 'अनदेखा करें';

  @override
  String get q_flood_16_opt3 => 'सब फेंक दें';

  @override
  String get q_flood_16_ans => '1';

  @override
  String get tip_flood_16 =>
      'केवल साफ and सुरक्षित भोजन ही खाएं। बाढ़ का पानी भोजन को खराब and असुरक्षित बना सकता है।';

  @override
  String get q_flood_17 => 'बाढ़ के दौरान बच्चों को क्या करना चाहिए?';

  @override
  String get q_flood_17_opt0 => 'पानी में खेलें';

  @override
  String get q_flood_17_opt1 => 'बड़ों के साथ रहें';

  @override
  String get q_flood_17_opt2 => 'अकेले भागें';

  @override
  String get q_flood_17_opt3 => 'बाहर तैरें';

  @override
  String get q_flood_17_ans => '1';

  @override
  String get tip_flood_17 =>
      'हमेशा माता-पिता या बड़ों के साथ रहें। पानी के पास अकेले न जाएं।';

  @override
  String get q_flood_18 => 'यदि पानी तेजी से बढ़े तो क्या करें?';

  @override
  String get q_flood_18_opt0 => 'वहीं रुकें';

  @override
  String get q_flood_18_opt1 => 'ऊंची जगह पर जाएं';

  @override
  String get q_flood_18_opt2 => 'सो जाएं';

  @override
  String get q_flood_18_opt3 => 'अनदेखा करें';

  @override
  String get q_flood_18_ans => '1';

  @override
  String get tip_flood_18 =>
      'यदि पानी का स्तर बढ़े, तो तुरंत ऊंचे स्थान पर जाएं। इंतज़ार न करें।';

  @override
  String get q_flood_19 => 'बाढ़ के पानी से क्यों बचें?';

  @override
  String get q_flood_19_opt0 => 'यह मज़ेदार है';

  @override
  String get q_flood_19_opt1 => 'यह साफ है';

  @override
  String get q_flood_19_opt2 => 'यह खतरनाक है';

  @override
  String get q_flood_19_opt3 => 'यह ठंडा है';

  @override
  String get q_flood_19_ans => '2';

  @override
  String get tip_flood_19 =>
      'बाढ़ का पानी गहरा, तेज़ और गंदा हो सकता है। यह हानिकारक चीज़ें ले जा सकता है और चोट का कारण बन सकता है।';

  @override
  String get q_flood_20 => 'बाढ़ के दौरान कौन मदद करता है?';

  @override
  String get q_flood_20_opt0 => 'दोस्त';

  @override
  String get q_flood_20_opt1 => 'बचाव दल (Rescue teams)';

  @override
  String get q_flood_20_opt2 => 'ड्राइवर';

  @override
  String get q_flood_20_opt3 => 'दुकानदार';

  @override
  String get q_flood_20_ans => '1';

  @override
  String get tip_flood_20 =>
      'बचाव दल and आपातकालीन सेवाएं बाढ़ के दौरान लोगों की मदद करती हैं। सुरक्षा के लिए उनके निर्देशों का पालन करें।';
}
