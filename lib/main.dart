import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:apni_gaadi_driver/theme/theme_helper.dart';
import 'package:apni_gaadi_driver/routes/app_routes.dart';

GlobalKey<NavigatorState> navRealKey = GlobalKey<NavigatorState>();

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navRealKey,
      theme: theme,
      title: 'apni_gaadi_driver',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.iphone1415ProMaxOneScreen,
      routes: AppRoutes.routes,
    );
  }
}
