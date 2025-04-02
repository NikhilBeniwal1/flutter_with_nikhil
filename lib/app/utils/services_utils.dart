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
    name: 'CHEGG Inc.',
    icon: 'assets/imgs/chegg.png',
    description:
        "Solving problems related to Data Structures and Algorithms, OOPS, OS, and DBMS.",
    tool: ['Data Structures and Algorithms', 'OOPS and OS', 'DBMS'],
  ),
  ServicesUtils(
    name: 'Canyfix',
    icon: 'assets/imgs/canyfix.png',
    description:
        "Building a mobile repair booking app using Dart, Flutter, and integrating REST APIs.",
    tool: ['Dart', 'Flutter', 'REST APIs'],
  ),
  ServicesUtils(
    name: 'Food-Pe',
    icon: 'assets/imgs/foodpe.jpg',
    description:
        "Building a food delivery mobile app with Flutter, Dart, and integrating REST APIs.",
    tool: ['Dart', 'Flutter', 'REST APIs'],
  ),
];
