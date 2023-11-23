// age_select_controller.dart
import '../models/age_select_model.dart';

class AgeSelectController {
  final AgeSelectModel model;

  AgeSelectController(this.model);

  void setAge(String value) {
    model.age = value;
  }
}
