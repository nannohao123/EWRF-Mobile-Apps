import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';

class CSI extends StatelessWidget {
  const CSI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "Civil Society Intervention",
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

      body: SingleChildScrollView(
        child: Padding(
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
                    image: AssetImage("assets/image/CSII.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 10.0),
              TextTittle(tittle: "Project and Overview"),

              SizedBox(height: 15.0),
              ProjectNoverview(
                fillDetails:
                    "Low self-esteem causes non-assertive behavior, harming interpersonal relationships during the crucial teenage years.",
              ),

              SizedBox(height: 15.0),
              ProjectNoverview(
                fillDetails:
                    "Behavioral Transformation is a 20-week program that helps teenagers break free from mental barriers like habits, biases, and fear of the unknown.",
              ),

              SizedBox(height: 15.0),
              ProjectNoverview(
                fillDetails:
                    "This 20-week program helps teenagers build self-management, awareness, and emotional intelligence (EQ).",
              ),

              SizedBox(height: 15.0),
              ProjectNoverview(
                fillDetails:
                    "Low self-esteem causes non-assertive behavior, harming interpersonal relationships during the crucial teenage years.",
              ),

              SizedBox(height: 15.0),
              ProjectNoverview(
                fillDetails:
                    "Outdoor activities like football, netball, silambam, and kabaddi engage students in positive, healthy ways while uncovering their talents.",
              ),

              SizedBox(height: 15.0),
              ProjectNoverview(
                fillDetails:
                    "Mentoring is to support and encourage people to manage their own learning so they can maximize their potential",
              ),

              SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
