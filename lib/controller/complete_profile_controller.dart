import 'package:flutter/material.dart';
import 'package:testmvcdio/views/edit_profile_view.dart';
import '../models/complete_profile_model.dart';
import 'package:flutter/cupertino.dart';
import '../models/genre_select_model.dart';
import '../views/genre_select_view.dart';
import 'genre_select_controller.dart';


class CompleteProfileController {
  final CompleteProfileModel model;

  CompleteProfileController(this.model);

  void navigatetoGenreSelect(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) =>
        GenreSelectView(
            GenreSelectController(GenreSelectModel()), GenreSelectModel())));
  }

  void navigatetoEditProfile(BuildContext context) { // ini nanti diganti toHome
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EditProfileView()));

  }
}

