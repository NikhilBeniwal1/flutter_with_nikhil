class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}
List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/projects/meetmeat.jpg',
    icons: 'assets/imgs/flutter.png',
    titles: "Meet Me At - Meet Nearby People for Social and Professional Networking",
    description:
    'A geo-location based Flutter app to help users connect with like-minded people nearby. Integrated with Firebase, Firestore, AdMob, and geohashing.',
    links: 'https://play.google.com/store/apps/details?id=com.meetmeat',
  ),
  ProjectUtils(
    banners: 'assets/imgs/ludo_ai_banner.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Ludo Best Move Finder AI',
    description:
    "Offline Flutter-based Ludo game that predicts the best move using custom AI scoring logic, risk evaluation, and token prioritization.",
    links: 'https://github.com/nikhilbeniwal/Ludo-AI-Best-Move-Finder',
  ),
  ProjectUtils(
    banners: 'assets/imgs/random_chat_banner.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Random Chat App',
    description:
    "Anonymous real-time chat app with Firebase backend, Firestore messaging, and room management using Riverpod.",
    links: 'https://github.com/nikhilbeniwal/Random-Chat-App',
  ),
  ProjectUtils(
    banners: 'assets/imgs/manage_property_banner.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Manage Property App',
    description: 'A smart property management system built with Flutter, allowing landlords and tenants to manage rent, requests, and documents.',
    links: 'https://github.com/nikhilbeniwal/manage-property-app', // 🔁 Replace with actual URL
  ),
 /* ProjectUtils(
    banners: 'assets/imgs/manage_property_banner.png',
    icons: 'assets/imgs/kewi_logo.png', // 🔁 Use company logo for quick recognition
    titles: 'Manage Property App - Kewi Solutionary',
    description:
    'Built under Kewi Solutionary, this Property Management app streamlines rental operations between tenants and landlords. Core features include complaint tracking, rent logs, and lease document handling. Built with Flutter, REST APIs, and MobX.',
    links: 'https://github.com/nikhilbeniwal/manage-property-app', // 🔁 Add real repo if public
  ),*/

];

