import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';

class OurProjects extends StatelessWidget {
  const OurProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Our Projects",
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
      body: Container(
        color: const Color.fromRGBO(229, 249, 255, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: TextTittle(tittle: "English for Junior"),
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/e4j");
                },
                child: Container(
                  width: 373.0,
                  height: 134.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/E4J.png"),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: TextTittle(tittle: "Civil Society Intervention"),
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/csi");
                },
                child: Container(
                  width: 373.0,
                  height: 134.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/CSI.png"),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: TextTittle(tittle: "Counseling"),
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/Counseling");
                },
                child: Container(
                  width: 373.0,
                  height: 134.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/CNSLING.png"),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: TextTittle(tittle: "Centre for Career Coaching & Guidance"),
            ),

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/c3g");
                },
                child: Container(
                  width: 373.0,
                  height: 134.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/C3G.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
