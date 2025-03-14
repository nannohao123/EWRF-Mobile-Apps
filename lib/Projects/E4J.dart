import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';

class E4J extends StatelessWidget {
  const E4J({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "English for Junior",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(31, 121, 148, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/Logo.png"),
                ),
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Details(
                    ikon: Icons.calendar_month_outlined,
                    subhead: "Duration",
                    title: "20 Weeks",
                  ),

                  SizedBox(width: 15.0),
                  Details(
                    ikon: Icons.location_pin,
                    subhead: "Duration",
                    title: "All Malaysia",
                  ),
                ],
              ),
            ),

            SizedBox(height: 18.0),
            Container(
              child: Row(
                children: [
                  Details(
                    ikon: Icons.people_alt_rounded,
                    subhead: "Participants ",
                    title: "Primary School",
                  ),

                  SizedBox(width: 15.0),
                  Details(
                    ikon: Icons.people_alt_rounded,
                    subhead: "No. Participants",
                    title: "20",
                  ),
                ],
              ),
            ),

            SizedBox(height: 18.0),
            Container(
              width: 380.0,
              height: 173.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/E4JJ.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 10.0),
            TextTittle(tittle: "Project and Overview"),

            SizedBox(height: 15.0),
            ProjectNoverview(
              fillDetails:
                  "English is a vital tool for children from low-income households to build confidence and succeed.",
            ),

            SizedBox(height: 15.0),
            ProjectNoverview(
              fillDetails:
                  "We believe every child is born equal, and all they need is a fair chance to unlock their potential",
            ),

            SizedBox(height: 15.0),
            ProjectNoverview(
              fillDetails:
                  "As a key part of the English for Juniors program, weekly 3-hour classes are conducted for up to 20 students per session, running for 20 weeks.",
            ),
          ],
        ),
      ),
    );
  }
}
