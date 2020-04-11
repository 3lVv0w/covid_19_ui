import 'package:covid_19/views/constant.dart';
import 'package:covid_19/views/home_screen.dart';
import 'package:covid_19/views/widgets/header.dart';
import 'package:covid_19/views/widgets/prevent_card.dart';
import 'package:covid_19/views/widgets/symptom_card.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(
              image: "assets/icons/coronadr.svg",
              textTop: "Get to know",
              textBottom: "About Covid-19.",
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  // TODO: change to Horizontal Scroll list view with fetch data from firestore
                  Container(
                    color: Colors.white,
                    height: 133.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SymptomCard(
                          image: "assets/images/headache.png",
                          title: "Headache",
                          isActive: true,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                        ),
                        SymptomCard(
                          image: "assets/images/caugh.png",
                          title: "Caugh",
                        ),
                        Container(
                          height: 10,
                          width: 10,
                        ),
                        SymptomCard(
                          image: "assets/images/fever.png",
                          title: "Fever",
                        ),
                        Container(
                          height: 10,
                          width: 10,
                        ),
                        SymptomCard(
                          image: "assets/images/headache.png",
                          title: "Headache",
                          isActive: true,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                        ),
                        SymptomCard(
                          image: "assets/images/caugh.png",
                          title: "Caugh",
                        ),
                        Container(
                          height: 10,
                          width: 10,
                        ),
                        SymptomCard(
                          image: "assets/images/fever.png",
                          title: "Fever",
                        ),
                        Container(
                          height: 10,
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Prevention", style: kTitleTextstyle),
                  SizedBox(height: 10),
                  // TODO: change to Vertical Scroll list view with fetch data from firestore
                  Container(
                    color: Colors.white,
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        PreventCard(
                          text:
                              "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                          image: "assets/images/wear_mask.png",
                          title: "Wear face mask",
                        ),
                        PreventCard(
                          text:
                              "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                          image: "assets/images/wash_hands.png",
                          title: "Wash your hands",
                        ),
                        PreventCard(
                          text:
                              "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                          image: "assets/images/wear_mask.png",
                          title: "Wear face mask",
                        ),
                        PreventCard(
                          text:
                              "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                          image: "assets/images/wash_hands.png",
                          title: "Wash your hands",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
