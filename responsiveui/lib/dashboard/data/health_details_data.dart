import 'package:responsiveui/dashboard/models/health_models.dart';

class HealthDetailsData {
  final healthData = [
    HealthModel(
        icon: 'assets/icons/burn.png', title: 'Calories Burned', value: '305'),
    HealthModel(icon: 'assets/icons/steps.png', title: 'Steps', value: '10983'),
    HealthModel(
        icon: 'assets/icons/distance.png', title: 'Distance', value: '7Km'),
    HealthModel(icon: 'assets/icons/sleep.png', title: 'Sleep', value: '7h48m')
  ];
}
