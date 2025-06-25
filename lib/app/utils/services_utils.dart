class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Meet Me At',
    icon: 'assets/icons/meetmeat_icon.png',
    description:
    "Location-based networking app to connect users nearby. Integrated with Firebase, real-time geolocation, AdMob rewards, and Firestore.",
    tool: ['Flutter', 'Firebase', 'Geolocation', 'AdMob',],
  ),
  ServicesUtils(
    name: 'Ludo Win Ai',
    icon: 'assets/imgs/ludo_ai.png',
    description:
    "An offline Ludo app using AI to predict the best token move based on smart scoring and risk evaluation.",
    tool: ['Flutter', 'AI Evaluator', 'Game Logic', 'Offline Mode'],
  ),
  // ServicesUtils(
  //   name: 'Random Chat App',
  //   icon: 'assets/imgs/random_chat.png',
  //   description:
  //   "Real-time anonymous chat application using Firebase Auth, Firestore, and state management.",
  //   tool: ['Flutter', 'Firebase Auth', 'Firestore', 'State Management'],
  // ),
  ServicesUtils(
    name: 'Manage Property - Kewi Solutionary',
    icon: 'assets/imgs/kewi_logo.png', // 🔁 Add your Kewi logo here
    description:
    "Developed the 'Manage Property' mobile app at Kewi Solutionary. Focused on rental listings, tenant-landlord issue tracking, and document management using Flutter, MobX, and REST APIs.",
    tool: ['Flutter', 'Dart', 'REST APIs', 'MobX', 'Provider'],
  ),
/*
  ServicesUtils(
    name: 'Manage Property',
    icon: 'assets/imgs/manage_property_icon.png',
    description: "Managing rental properties, complaints, and leases through a Flutter-based mobile app integrated with REST APIs.",
    tool: ['Flutter', 'Dart', 'REST APIs'],
  ),*/

  /*
  ServicesUtils(
    name: 'Flutter With Nikhil',
    icon: 'assets/imgs/youtube.png',
    description:
    "Educational content on Flutter development, Firebase integration, and monetization strategies via YouTube.",
    tool: ['YouTube', 'Flutter', 'Firebase', 'Monetization'],
  ),*/
];

