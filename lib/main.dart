import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'utils/constants/app_colors.dart';
import 'utils/dependency_locator.dart';
import 'utils/navigation/route_manager.dart';

Future<void> main() async {
  await GetStorage.init();
  await _preInit();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
} 

Future<void> _preInit() async {
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initDependencyLocator();

  ///This will remove by default status bar color from Android OS
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.transparent,
  ));
  await getIt.allReady();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
          splashColor: AppColors.transparent, // Removes splash effect
          highlightColor: AppColors.transparent, // Removes highlight effect
          bottomNavigationBarTheme:
              const BottomNavigationBarThemeData(elevation: 8.0),
          bottomSheetTheme: const BottomSheetThemeData(
            surfaceTintColor: AppColors.white,
            backgroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(26.0),
              ),
            ),
          ),
        ),
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routeInformationProvider: AppRouter.router.routeInformationProvider);
  }
}
