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
    banners: 'assets/imgs/Budgeit.png',
    icons: 'assets/imgs/flutter.png',
    titles: "Budgeit - Budget Tracker App.",
    description: 'Budgeit : Split income into customizable categories needs , expenses and savings.',
    links: 'https://github.com/AnmolSaini28/budgeit',
  ),
  ProjectUtils(
    banners: 'assets/imgs/Canyfix-Customer.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Canyfix Mobile App',
    description: "Canyfix Mobile: App for mobile repair services.",
    links:
        'https://play.google.com/store/apps/details?id=com.canyfix_mobile_app',
  ),
  ProjectUtils(
    banners: 'assets/imgs/Inner-Bhakti.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Inner Bhakti Meditation App',
    description: "InnerBhakti: Devotional app for stress-free living.",
    links: 'https://play.google.com/store/apps/details?id=app.innerbhakti.com',
  ),
  ProjectUtils(
    banners: 'assets/imgs/Canyfix-Partner.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Canyfix Partner App',
    description: "Canyfix Partner: Manage repair requests and clients.",
    links: 'https://play.google.com/store/apps/details?id=com.canyfix.partner',
  ),
  ProjectUtils(
    banners: 'assets/imgs/amazon-clone.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Amazon E-Commerce Clone',
    description: 'Amazon E-Commerce - Shop here , Have Fun , Get Rewards',
    links: 'https://github.com/AnmolSaini28/amazon_clone',
  ),
  ProjectUtils(
    banners: 'assets/imgs/Nijaat.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Nasha Mukt Bharat',
    description: "Nasha Mukt Bharat: Overcome addiction, live healthier.",
    links: 'https://github.com/Keshav-Var/Nasha-Mukt-Bharat-App',
  ),
  ProjectUtils(
    banners: 'assets/imgs/FoodPe.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'FoodPe Delivery App',
    description: "FoodPe Merchant: Manage outlets and restaurants efficiently.",
    links: 'https://food-pe.com/',
  ),
];
