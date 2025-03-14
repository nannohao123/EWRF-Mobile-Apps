import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';

class C3G extends StatelessWidget {
  const C3G({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "Centre for Career Coaching & Guidance",
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
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0),
            Container(
              width: 372,
              height: 215,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/C3GG.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 10.0),
            Container(
              height: 145.0,
              width: 372.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 18.0),
              child: Text(
                "Centre for Career Coaching and Guidance (C3G) aims to provide career guidance and counseling for students and job seekers to assist them in developing an action plan and setting goals in their chosen careers.",
                style: TextStyle(fontSize: 14, color: const Color.fromRGBO(31, 121, 148, 1),),
              ),
            ),

            SizedBox(height: 10.0),
            TextTittle(tittle: "Student’s Particular"),

            //button

            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
