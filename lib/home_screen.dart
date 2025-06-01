import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_with_nikhil/hero_section.dart';
import 'package:flutter_with_nikhil/provider/theme_provider.dart';
import 'package:flutter_with_nikhil/screens/about_screen.dart';
import 'package:flutter_with_nikhil/screens/contact_section.dart';
import 'package:flutter_with_nikhil/screens/projects_section.dart';
import 'package:flutter_with_nikhil/screens/skill_scection.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //late Map<String, dynamic> portfolioData;
  Map<String, dynamic>? portfolioData;

  @override
  void initState() {
    super.initState();
    loadPortfolioData();
  }

  Future<void> loadPortfolioData() async {
    final String jsonString =
    await rootBundle.loadString('assets/data/portfolio_data.json');
    final data = jsonDecode(jsonString);
    setState(() {
      print("data loaded line 33");
      portfolioData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build method called 40");
    final themeProvider = Provider.of<ThemeProvider>(context);


    if (portfolioData == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       icon: Icon(themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode),
      //       onPressed: () => themeProvider.toggleTheme(),
      //     )
      //
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(data: portfolioData!),
            AboutSection(data: portfolioData!),
            SkillsSection(data: portfolioData!),
            ProjectsSection(data: portfolioData!),
            ContactSection(data: portfolioData!),
          ],
        ),
      ),
    );
  }
}
