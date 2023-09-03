import 'package:shared_preferences/shared_preferences.dart';
import 'package:sportify_client/sportify_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:sportify_flutter/screen/main/main_screen.dart';
import 'package:sportify_flutter/screen/onboarding_screen.dart';
import 'package:sportify_flutter/theme.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
// var client = Client('http://localhost:8080/')
//   ..connectivityMonitor = FlutterConnectivityMonitor();
var client = Client('http://192.168.1.2:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final skipOnBoarding = prefs.getBool("skipOnBoarding") ?? false;
  runApp(MyApp(skipOnBoarding: skipOnBoarding));
}

class MyApp extends StatelessWidget {
  final bool skipOnBoarding;

  const MyApp({Key? key, required this.skipOnBoarding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sportify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: createMaterialColor(primaryColor500),
          canvasColor: colorWhite),
      home: skipOnBoarding ? MainScreen(currentScreen: 0) : OnboardingScreen(),
    );
  }
}
