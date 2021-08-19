import 'package:flutter/material.dart';
import 'splash.dart';
import 'package:flutter/services.dart';

void main() {
  /// To make the project potrait
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Internship',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Splash(),
    );
  }
}
