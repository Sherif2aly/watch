import 'package:watcher/pages/category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watcher/pages/home_page.dart';
import 'package:watcher/pages/movie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Enable immersive sticky mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F111D),
      ),
      routes: {
        '/': (context) => const HomePage(),
        'categoryPage': (context) => const CategoryPage(),
        'moviePage': (context) => const MoviePage(),
      },
    );
  }
}
