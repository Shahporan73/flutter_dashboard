import 'package:react_hub/app/model/healt_model.dart';

class HealtDetails {
  final healtData = const [
    HealtModel(icon: 'assets/icons/burn.png', value: "305", title: "Calories Burned"),
    HealtModel(icon: 'assets/icons/steps.png', value: "10,983", title: "Steps"),
    HealtModel(icon: 'assets/icons/distance.png', value: "7km", title: "Distance"),
    HealtModel(icon: 'assets/icons/sleep.png', value: "7h48m", title: "Sleep"),
  ];
}