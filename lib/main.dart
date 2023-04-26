
import 'package:flutter/material.dart';
import 'package:weather_test/weather/presentation/pages/my_home_page.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  //await setUp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.blueAccent.shade400
        )
      ),
      home:  MyHomePage(),
    );
  }
}

