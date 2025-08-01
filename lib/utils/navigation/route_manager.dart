import 'package:donation_management/Features/grisma/view/grisma.dart';
import 'package:donation_management/Features/hemant/view/hemnta.dart';
import 'package:donation_management/Features/sharad/view/sharad.dart';
import 'package:donation_management/Features/shashira/widget/shashiraContainer.dart';
import 'package:donation_management/feature/Dincharya/widgets/container_dincharya_widget.dart';
import 'package:donation_management/feature/Health%20Tips/controller/HelthTipController.dart';
import 'package:donation_management/feature/Health%20Tips/view/HealthTips_Screen.dart';
import 'package:donation_management/feature/Home/controller/homeController.dart';
import 'package:donation_management/feature/Home/view/homeScreen.dart';
import 'package:donation_management/feature/Udavartanascreen/view/udavartanamain.dart';
import 'package:donation_management/feature/What%20to%20Eat/controller/WhattoeatController.dart';
import 'package:donation_management/feature/What%20to%20Eat/view/FeaturesofProperScreen.dart';
import 'package:donation_management/feature/food/controller/food_controller.dart';
import 'package:donation_management/feature/food/controller/pathyaahara-controller.dart';
import 'package:donation_management/feature/food/view/food_screen.dart';
import 'package:donation_management/feature/food/view/pathyaahara_screen.dart';
import 'package:donation_management/feature/food/view/pathyakaralldoshas_screen.dart';
import 'package:donation_management/feature/food/view/virudhaahaar_screen.dart';
import 'package:donation_management/feature/oralhygiene/view/oralhygienescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Rutucharya/controller/rutucharya_controller.dart';
import '../../Features/Rutucharya/view/rutucharya.dart';
import '../../Features/shashira/view/shashira.dart';
import '../../feature/Dantdhawan/controller/dantdhawan_controller.dart';
import '../../feature/Dantdhawan/view/dantdhawan_home_screen.dart';
import '../../feature/Dincharya/controller/dincharyacontroller.dart';
import '../../feature/Vyayamascreen/view/mainvyayama.dart';
import '../../feature/What to Eat/controller/IdealtimeController.dart';
import '../../feature/What to Eat/view/DietandWaterScreen.dart';
import '../../feature/What to Eat/view/HealthyDietPlansScreen.dart';
import '../../feature/What to Eat/view/IdealTimeScreen.dart';
import '../../feature/What to Eat/view/TheIdealFood.dart';
import '../../feature/What to Eat/view/WhatNottoDoScreen.dart';
import '../../feature/What to Eat/view/WhatToEatScreen.dart';
import '../../feature/auth/start_screen.dart';
import '../../feature/chat/view/chatbot_screen.dart';
import '../../feature/food/view/apathya_screen.dart';
import '../../feature/food/view/seasonal_pathy_screen.dart';
import '../../feature/food/view/apathya_according_screen.dart';
import '../../feature/food/view/apathya_ahara_screen.dart';
import '../../feature/food/view/benefits_apthya_screen.dart';
import '../../feature/food/view/common_virudha_screen.dart';
import '../../feature/food/view/generalapathya_screen.dart';
import '../../feature/food/view/seasonal_apathya_screen.dart';
import '../../feature/Prataruthana_screen/view/mainprataruthana.dart';
import '../../feature/food/controller/pathyakaralldoshas_controller.dart';
import '../../feature/food/view/pathyaaccording_screen.dart';
import '../../feature/oralhygiene/controller/oralhygienecontroller.dart';
import '../../feature/rule_of_dantadhavana/controller/rulecontroller.dart';
import '../../feature/rule_of_dantadhavana/view/rule_of_dantadhava.dart';
import '../constants/app_strings/local_storage_key_strings.dart';
import '../../Features/varsha/view/varsha.dart';
import '../../Features/vasant/view/vasant.dart';
import '../../feature/Prataruthana_screen/view/benefits_wakeup_early_screen.dart';
import '../../feature/Prataruthana_screen/view/how_to_wakeup_early_screen.dart';
import '../../feature/Vyayamascreen/view/benefits_vyayama_screen.dart';
import '../../feature/Vyayamascreen/view/guidelines_vyayama_screen.dart';
import '../../feature/Abhyanga/view/abhyanga_screen.dart';
import '../../feature/Abhyanga/view/benefits_abhyanga_screen.dart';
import '../../feature/Abhyanga/view/recommended_oils_abhyanga_screen.dart';
import '../../feature/Udavartanascreen/view/benefits_udavartana_screen.dart';
import '../../feature/Udavartanascreen/view/guidelines_udavartana_screen.dart';
import '../../feature/BathSnana/view/bath_snana_screen.dart';
import '../../feature/BathSnana/view/benefits_bath_snana_screen.dart';
import '../../feature/BathSnana/view/guidelines_bath_snana_screen.dart';
import '../../feature/method_of _application/view/method_home.dart';
import '../../feature/jivha_nirlekhana/view/benefits_screen.dart';
import '../../feature/jivha_nirlekhana/view/materials_screen.dart';
import '../../feature/gandusha/view/gandusha_screen.dart';
import '../../feature/gandusha/view/benefits_screen.dart';
import '../../feature/gandusha/view/liquids_screen.dart';
import '../../feature/pratimarsha_nasya/view/pratimarsha_screen.dart';
import '../../feature/pratimarsha_nasya/view/pratimarsha_method_screen.dart';
import '../../feature/pratimarsha_nasya/view/pratimarsha_rules_screen.dart';
import '../../feature/anjana/view/anjana_screen.dart';
import '../../feature/anjana/view/anjana_method_screen.dart';
import '../../feature/anjana/view/anjana_rules_screen.dart';
import '../../feature/Dincharya/view/personalized_dincharya_screen.dart';
import '../../feature/Dincharya/view/dincharya_screen.dart';

class AppRouter {
  static const String defaultLocation = "/";


  /// Auth
  static const String login = "/login";
  static const String signUp = "/signup";
  static const String connectDiscover = "/connectdiscover-screen";

  /// dincharya
  static const String dincharya = "/dincharya";

  static const String rutucharya = "/rutucharya";

  /// Home
  static const String home = "/home";

  ///Dantdhawan
  static const String dantdhawan = "/dantdhawan";

  /// methodHome

  static const String method = "/method";

  /// fodd
  static const String food = "/food";

  ///oralhygiene
  static const String oralhygiene = "/oralhygiene";

  ///Prataruthana
  static const String prataruthana = "/prataruthana";

  /// Notification
  static const String notification = "/notification";

  /// Profile
  static const String profile = "/profile";

  /// shashira
  static const String shashira = "/shashira";

  /// hemnat
  static const String hemanta = "/hemanta";

  /// ruleofdantadhava
  static const String ruleofdantadhava = "/ruleofdantadhava";

  /// ruleofdantadhava

  /// Profile
  static const String healthTips = "/healthTips";

  /// Whattoeat
  static const String whattoeat = "/Whattoeat";

  /// PathyaAharaW
  static const String pathyaAharaW = "/pathyaAharaW";

  /// PathyaAll
  static const String pathyaAll = "/pathyaAll";
  static const String pathyaAcco = "/pathyaAco";

  static const String seasonalpath = "/seasonalpath";

  static const String apathya = "/apathya";

  ///  idealtime
  static const String idealtime = "/idealtime";

  ///  dietandwater
  static const String dietandwater = "/dietandwater";

 ///  udavartana
  static const String udavartana = "/udavartana";

  
  ///  theidealfood
  static const String theidealfood = "/theidealfood";

  ///  whatnottodo
  static const String whatnottodo = "/whatnottodo";

  ///  vyayama
  static const String vyayama = "/vyayama";

  ///  featuresofproper
  static const String featuresofproper = "/featuresofproper";

  ///  healthydietplan
  static const String healthydietplan = "/healthydietplan";
  // grisma
  static const String grisma = "/grisma";

  /// apathyaaharaScreen
  static const String apathyaaharaScreen = "/apathyaaharaScreen";

  /// apathyaahara
  static const String genralapatya = "/genralapatya";

   static const String pathyaaherscreen = "/pathyaaherscreen";

  /// ApathyaAccordingScreen
  static const String apathyaacco = "/apathyaacco";
   static const String seasonalapathya = "/seasonalapathya";
    static const String benefitsapthya = "/benefitsapthya";

  static const String  sharad= "/sharad";

  
  // virudhaahaaar
  static const String virudhaahaaar = "/virudhaahaaar";

  // commonvirudha
  static const String commonvirudha = "/commonvirudha";


  static const String apathyawidget = "/apathyawidget";

  static const String chatbot = "/chatbot";

  static const String varsha = "/varsha";

  static const String vasant = "/vasant";

  static const String benefitsWakeupEarly = "/benefits_wakeup_early";

  static const String howToWakeupEarly = "/how_to_wakeup_early";

  static const String benefitsVyayama = "/benefits_vyayama";

  static const String guidelinesVyayama = "/guidelines_vyayama";

  static const String abhyanga = "/abhyanga";

  static const String benefitsAbhyanga = "/benefits_abhyanga";

  static const String recommendedOilsAbhyanga = "/recommended_oils_abhyanga";

  static const String benefitsUdavartana = "/benefits_udavartana";

  static const String guidelinesUdavartana = "/guidelines_udavartana";

  static const String bathSnana = "/bath_snana";

  static const String benefitsBathSnana = "/benefits_bath_snana";

  static const String guidelinesBathSnana = '/guidelines_bath_snana';

  /// jivha nirlekhana
  static const String jivhaBenefits = "/jivha_benefits";
  static const String jivhaMaterials = "/jivha_materials";

  /// gandusha
  static const String gandusha = "/gandusha";
  static const String gandushaBenefits = "/gandusha_benefits";
  static const String gandushaLiquids = "/gandusha_liquids";

  /// pratimarsha nasya
  static const String pratimarsha = "/pratimarsha";
  static const String pratimarshaMethod = "/pratimarsha_method";
  static const String pratimarshaRules = "/pratimarsha_rules";

  static const String anjana = '/anjana';
  static const String anjanaMethod = '/anjana_method';
  static const String anjanaRules = '/anjana_rules';

  /// personalizedDincharya
  static const String personalizedDincharya = '/personalized-dincharya';

  // Define routes
  static final GoRouter router = GoRouter(
    navigatorKey: LocalStorageKeyStrings.appNavKey,
    initialLocation: defaultLocation,
  
    routes: [
      /// Prataruthana
      GoRoute(
          path: prataruthana,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<Prataruthanacontroller>(() => Prataruthanacontroller());
            return hcCustomTransitionPage(const Mainprataruthana());
          }),

 GoRoute(
          path: udavartana,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<Udavartanacontroller>(() => Udavartanacontroller());
            return hcCustomTransitionPage( const Udavartanamain());
          }),



           /// Prataruthana
      /// Prataruthana
     
      GoRoute(
          path: defaultLocation,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<Vyayamacontroller>(() => Vyayamacontroller());
            return hcCustomTransitionPage(const StartScreen());
          }),

      /// Food
      GoRoute(
          path: food,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<FoodController>(() => FoodController());
            return hcCustomTransitionPage(const FoodScreen());
          }),
      //// home
      GoRoute(
          path: home,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<HomeController>(() => HomeController());
            return hcCustomTransitionPage(const Homescreen());
          }),

      GoRoute(
          path: ruleofdantadhava,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<Rulecontroller>(() => Rulecontroller());
            return hcCustomTransitionPage(RuleOfDantadhava());
          }),

      /////  healthTips
      GoRoute(
          path: healthTips,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<Helthtipcontroller>(() => Helthtipcontroller());
            return hcCustomTransitionPage(const HealthtipsScreen());
          }),

      GoRoute(
          path: oralhygiene,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<Oralhygienecontroller>(() => Oralhygienecontroller());
            return hcCustomTransitionPage(const Oralhygienescreen());
          }),
//shahira

      GoRoute(
          path: shashira,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<ShashiraContainer>(() => const ShashiraContainer());
            return hcCustomTransitionPage(const Shashira());
          }),
//hemnta

      GoRoute(
          path: hemanta,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<Hemantacontainer>(() => Hemantacontainer());
            return hcCustomTransitionPage(const Hemnta());
          }),

      //grisma
      GoRoute(
          path: grisma,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<Hemantacontainer>(() => Hemantacontainer());
            return hcCustomTransitionPage(const Grisma());
          }),
           GoRoute(
          path: sharad,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<Hemantacontainer>(() => Hemantacontainer());
            return hcCustomTransitionPage(const Sharad());
          }),
      /// Auth

      /// Home
      GoRoute(
          path: rutucharya,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<RutucharyaController>(() => RutucharyaController());
            return hcCustomTransitionPage(const Rutucharya());
          }),
      // / Home
      GoRoute(
          path: dincharya,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const DincharyaScreen());
          }),

      /// dantdhawan
      GoRoute(
          path: dantdhawan,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<DantdhawanController>(() => DantdhawanController());
            return hcCustomTransitionPage(const DantdhawanHomeScreen());
          }),

      /// method
      GoRoute(
          path: method,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const MethodHome());
          }),

      ///  Whattoeat
      GoRoute(
          path: whattoeat,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<Whattoeatcontroller>(() => Whattoeatcontroller());
            return hcCustomTransitionPage(const Whattoeatscreen());
          }),

      GoRoute(
        path: pathyaAharaW,
        pageBuilder: (BuildContext context, GoRouterState state) {
          Get.lazyPut<PathyaaharaController>(() => PathyaaharaController());
          return hcCustomTransitionPage(const PathyaaharaScreen());
        },
      ),

      GoRoute(
          path: pathyaAll,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<PathyakaralldoshasController>(
                () => PathyakaralldoshasController());
            return hcCustomTransitionPage(const PathyakarAharForAllDoshas());
          }),
      GoRoute(
          path: idealtime,
          pageBuilder: (BuildContext context, GoRouterState state) {
            Get.lazyPut<Idealtimecontroller>(() => Idealtimecontroller());
            return hcCustomTransitionPage(Idealtimescreen());
          }),
      GoRoute(
          path: dietandwater,
          pageBuilder: (BuildContext context, GoRouterState state) {
            //Get.lazyPut<Dietandwatercontroller>(() => Dietandwatercontroller());
            return hcCustomTransitionPage(Dietandwaterscreen());
          }),
        
      GoRoute(
          path: theidealfood,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<DantdhawanController>(() => DantdhawanController());
            return hcCustomTransitionPage(Theidealfood());
          }),
          GoRoute(
          path: chatbot,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<ChatbotController>(() => ChatbotController());
            return hcCustomTransitionPage(const ChatBotScreen());
          }),
      GoRoute(
          path: whatnottodo,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<DantdhawanController>(() => DantdhawanController());
            return hcCustomTransitionPage(Whatnottodoscreen());
          }),
      GoRoute(
          path: featuresofproper,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<DantdhawanController>(() => DantdhawanController());
            return hcCustomTransitionPage(Featuresofproperscreen());
          }),
      GoRoute(
          path: healthydietplan,
          pageBuilder: (BuildContext context, GoRouterState state) {
            // Get.lazyPut<DantdhawanController>(() => DantdhawanController());
            return hcCustomTransitionPage(Healthydietplansscreen());
          }),
      GoRoute(
          path: benefitsWakeupEarly,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const BenefitsWakeupEarlyScreen());
          }),
      GoRoute(
          path: howToWakeupEarly,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const HowToWakeupEarlyScreen());
          }),
      GoRoute(
          path: pathyaAcco,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const PathyaaccordingScreen());
          }),

      GoRoute(
          path: seasonalpath,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const SeasonalPathyScreen());
          }),

      GoRoute(
          path: apathya,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const ApathyaScreen());
          }),

      GoRoute(
          path: apathyaaharaScreen,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const ApathyaAharaScreen());
          }),

      GoRoute(
          path: genralapatya,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const GeneralapathyaScreen());
          }),

      GoRoute(
          path: apathyaacco,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const ApathyaAccordingScreen());
          }),

      GoRoute(
          path: seasonalapathya,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const SeasonalApathyaScreen());
          }),
      GoRoute(
          path: benefitsapthya,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const BenefitsApthyaScreen());
          }),
           GoRoute(
          path: virudhaahaaar,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const VirudhaahaarScreen());
          }),
           GoRoute(
          path: commonvirudha,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const CommonVirudhaScreen());
          }),
      GoRoute(
          path: varsha,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const Varsha());
          }),
      GoRoute(
          path: vasant,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const Vasant());
          }),
      GoRoute(
          path: benefitsVyayama,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const BenefitsVyayamaScreen());
          }),
      GoRoute(
          path: guidelinesVyayama,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const GuidelinesVyayamaScreen());
          }),
      GoRoute(
          path: abhyanga,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const AbhyangaScreen());
          }),
      GoRoute(
          path: benefitsAbhyanga,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const BenefitsAbhyangaScreen());
          }),
      GoRoute(
          path: recommendedOilsAbhyanga,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const RecommendedOilsAbhyangaScreen());
          }),
      GoRoute(
          path: benefitsUdavartana,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const BenefitsUdavartanaScreen());
          }),
      GoRoute(
          path: guidelinesUdavartana,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const GuidelinesUdavartanaScreen());
          }),
      GoRoute(
          path: bathSnana,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const BathSnanaScreen());
          }),
      GoRoute(
          path: benefitsBathSnana,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const BenefitsBathSnanaScreen());
          }),
      GoRoute(
          path: guidelinesBathSnana,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const GuidelinesBathSnanaScreen());
          }),

      /// jivha benefits
      GoRoute(
          path: jivhaBenefits,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const BenefitsScreen());
          }),

      /// jivha materials
      GoRoute(
          path: jivhaMaterials,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const MaterialsScreen());
          }),

      /// gandusha
      GoRoute(
          path: gandusha,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const GandushaScreen());
          }),

      /// gandusha benefits
      GoRoute(
          path: gandushaBenefits,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const GandushaBenefitsScreen());
          }),

      /// gandusha liquids
      GoRoute(
          path: gandushaLiquids,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const GandushaLiquidsScreen());
          }),

      /// pratimarsha nasya
      GoRoute(
          path: pratimarsha,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const PratimarshaScreen());
          }),
      
      /// pratimarsha method
      GoRoute(
          path: pratimarshaMethod,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const PratimarshaMethodScreen());
          }),
      
      /// pratimarsha rules
      GoRoute(
          path: pratimarshaRules,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const PratimarshaRulesScreen());
          }),

      GoRoute(
          path: anjana,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const AnjanaScreen());
          }),
      GoRoute(
          path: anjanaMethod,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const AnjanaMethodScreen());
          }),
      GoRoute(
          path: anjanaRules,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const AnjanaRulesScreen());
          }),
      GoRoute(
          path: personalizedDincharya,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return hcCustomTransitionPage(const PersonalizedDincharyaScreen());
          }),
    ],
  );

  // static String ayurvedaMain;

  // static String benefitsOfBathing;

  // static String guidelinesForBathing;
}

CustomTransitionPage<dynamic> hcCustomTransitionPage(Widget widget) {
  return CustomTransitionPage(
    child: widget,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
