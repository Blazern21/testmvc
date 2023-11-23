// age_select_view.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testmvcdio/controller/gender_select_controller.dart';
import 'package:testmvcdio/models/gender_select_model.dart';
import '../controller/genre_select_controller.dart';
import '../models/genre_select_model.dart';
import '../styles/button.dart';
import '../controller/age_select_controller.dart';
import '../models/age_select_model.dart';
import 'gender_select_view.dart';
import 'genre_select_view.dart';


class AgeSelectView extends StatefulWidget {
  final AgeSelectController controller;
  final AgeSelectModel model;

  AgeSelectView(this.controller, this.model);

  @override
  State createState() => AgeSelectViewState();
}

class AgeSelectViewState extends State<AgeSelectView> {
  String selectedAge = "";
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 18, height: 100,),
                  TextButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => GenderSelectView(GenderSelectController(GenderSelectModel()) , GenderSelectModel() ) )),
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  'Choose Your Age',
                  style: GoogleFonts.inter(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: Text(
                  'Select age range for better content',
                  style: GoogleFonts.inter(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text("14 - 17"),
                        value: "14-17",
                        groupValue: selectedAge,
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value.toString();
                            widget.controller.setAge(selectedAge);
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text("18 - 24"),
                        value: "18-24",
                        groupValue: selectedAge,
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value.toString();
                            widget.controller.setAge(selectedAge);
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text("25 - 29"),
                        value: "25-29",
                        groupValue: selectedAge,
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value.toString();
                            widget.controller.setAge(selectedAge);
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text("30 - 34"),
                        value: "30-34",
                        groupValue: selectedAge,
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value.toString();
                            widget.controller.setAge(selectedAge);
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text("35 - 39"),
                        value: "35-39",
                        groupValue: selectedAge,
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value.toString();
                            widget.controller.setAge(selectedAge);
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text("40 - 44"),
                        value: "40-44",
                        groupValue: selectedAge,
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value.toString();
                            widget.controller.setAge(selectedAge);
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text("45 - 49"),
                        value: "45-49",
                        groupValue: selectedAge,
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value.toString();
                            widget.controller.setAge(selectedAge);
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text(">= 50"),
                        value: ">= 50",
                        groupValue: selectedAge,
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value.toString();
                            widget.controller.setAge(selectedAge);
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 50, left: 50),
                  child: Column (
                    children: [
                      ElevatedButton(
                        style: buttonPrimary,
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => GenreSelectView(GenreSelectController(GenreSelectModel()) , GenreSelectModel() ) )),
                        child: Text('CONTINUE', style: GoogleFonts.inter(fontSize: 17
                            , color: Colors.white, fontWeight: FontWeight.bold)),
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
