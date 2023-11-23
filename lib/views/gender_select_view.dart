// gender_select_view.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/age_select_controller.dart';
import '../models/age_select_model.dart';
import '../styles/button.dart';
import '../controller/gender_select_controller.dart';
import '../models/gender_select_model.dart';
import 'age_select_view.dart';


class GenderSelectView extends StatefulWidget {
  final GenderSelectController controller;
  final GenderSelectModel model;

  GenderSelectView(this.controller, this.model);

  @override
  State createState() => GenderSelectViewState();
}

class GenderSelectViewState extends State<GenderSelectView> {
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
                  SizedBox(
                    width: 18,
                    height: 100,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20, left: 40),
                child: Text(
                  'What Is Your Gender?',
                  style: GoogleFonts.inter(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: Text(
                  'Select gender for better content',
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
                        title: Text("I am male",
                            style: GoogleFonts.inter(
                                fontSize: 17, color: Colors.black)),
                        value: "male",
                        groupValue: widget.model.gender,
                        onChanged: (value) {
                          setState(() {
                            widget.controller.setGender(value.toString());
                          });
                        },
                      ),
                      SizedBox(height: 15),
                      RadioListTile(
                        title: Text("I am female",
                            style: GoogleFonts.inter(
                                fontSize: 17, color: Colors.black)),
                        value: "female",
                        groupValue: widget.model.gender,
                        onChanged: (value) {
                          setState(() {
                            widget.controller.setGender(value.toString());
                          });
                        },
                      ),
                      SizedBox(height: 15),
                      RadioListTile(
                        title: Text("Rather not to say",
                            style: GoogleFonts.inter(
                                fontSize: 17, color: Colors.black)),
                        value: "other",
                        groupValue: widget.model.gender,
                        onChanged: (value) {
                          setState(() {
                            widget.controller.setGender(value.toString());
                          });
                        },
                      )
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 300, left: 40),
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: buttonPrimary,
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => AgeSelectView(AgeSelectController(AgeSelectModel()) , AgeSelectModel()))),
                        child: Text('CONTINUE',
                            style: GoogleFonts.inter(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
