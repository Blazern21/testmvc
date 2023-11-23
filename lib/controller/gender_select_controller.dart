import '../models/gender_select_model.dart';


class GenderSelectController {
  final GenderSelectModel model;

  GenderSelectController(this.model);

  void setGender(String value) {
    model.gender = value;
  }
}
