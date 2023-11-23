import 'package:flutter/material.dart';
import 'package:testmvcdio/views/gender_select_view.dart';
import 'controller/gender_select_controller.dart';
import 'models/gender_select_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize GenderSelectController and GenderSelectModel
    GenderSelectModel genderSelectModel = GenderSelectModel();
    GenderSelectController genderSelectController = GenderSelectController(genderSelectModel);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        unselectedWidgetColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
        body: GenderSelectView(genderSelectController, genderSelectModel),
      )
    );
  }
}
