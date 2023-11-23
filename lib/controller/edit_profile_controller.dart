
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../models/edit_profile_model.dart';
import '../models/genre_select_model.dart';
import '../views/genre_select_view.dart';
import 'genre_select_controller.dart';


class EditProfileController {
  final EditProfileModel model;

  EditProfileController(this.model);

  void navigatetoMenu(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GenreSelectView(GenreSelectController(GenreSelectModel()) , GenreSelectModel() ) )); // ini nanti diganti ke menu

  }
}

