class ExperienceUtils {
  final String companyName;
  final String role;
  final String duration;
  final String description;
  final String logoAsset; // path to the company logo

  ExperienceUtils({
    required this.companyName,
    required this.role,
    required this.duration,
    required this.description,
    required this.logoAsset,
  });
}


List<ExperienceUtils> experienceList = [ExperienceUtils(
companyName: 'Kewi Solutionary',
role: 'Flutter Developer Intern',
duration: '1 Year (2023 – 2024)',
description: '''
• Collaborated with a dynamic team to develop a full-featured Property Management App.
• Integrated REST APIs for real-time updates and data syncing.
• Used MobX and Provider for scalable and reactive state management.
• Contributed to UI/UX enhancements and bug fixes for production deployment.
  ''',
logoAsset: 'assets/logos/kewi_logo.png', // 🔁 Replace with actual logo path
),];
