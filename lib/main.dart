import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_nikhil/home_screen.dart';
import 'package:flutter_with_nikhil/provider/theme_provider.dart';
import 'package:flutter_with_nikhil/screens/admin_screen.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyPortfolioApp(),
    ),
  );

}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Nikhil Beniwal | Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
        darkTheme: ThemeData.dark(useMaterial3: true),

        themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      routes: {
    '/': (context) => const HomeScreen(),
    '/admin': (context) => const AdminScreen(), // secure later
    }
    );
  }

}


