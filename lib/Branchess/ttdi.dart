import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';

class TTDI extends StatelessWidget {
  const TTDI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "TTDI",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 12.0),
                  child: Container(
                    width: 186.0,
                    height: 142.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      image: DecorationImage(
                        image: AssetImage("assets/image/LogoTTDI.png"),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    Details(
                      ikon: Icons.location_pin,
                      subhead: "Location",
                      title: "TTDI",
                    ),
                    SizedBox(height: 5.0),
                    Details(ikon: Icons.people, subhead: "Employee", title: "20"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.0),
            TextTittle(tittle: "Branches Details"),
        
            SizedBox(height: 12.0),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 372.0,
                height: 145.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 18.0,
                  ),
                  child: SizedBox(
                    width: 329.0,
                    child: Text(
                      "Centre for Career Coaching and Guidance (C3G) aims to provide career guidance and counseling for students and job seekers to assist them in developing an action plan and setting goals in their chosen careers.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: const Color.fromRGBO(31, 121, 148, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            TextTittle(tittle: "Images"),
        
            SizedBox(height: 12.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  picture(pic: "assets/image/Old1.png"),
                  SizedBox(width: 19.0),
                  picture(pic: "assets/image/Old2.png"),
                ],
              ),
            ),
        
            SizedBox(height: 18.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  picture(pic: "assets/image/Old3.png"),
                  SizedBox(width: 19.0),
                  picture(pic: "assets/image/Old4.png"),
                ],
              ),
            ),
        
            SizedBox(height: 18.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  picture(pic: "assets/image/Old5.png"),
                  SizedBox(width: 19.0),
                  picture(pic: "assets/image/Old6.png"),
                ],
              ),
            ),
        
            SizedBox(height: 25.0),
            SocialMedia(),
        
            SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
