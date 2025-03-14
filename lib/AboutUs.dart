import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';


class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "About Us",
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
            SizedBox(height: 10.0),
            Container(
              child: Center(
                child: Container(
                  height: 150.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/Logo_AU.png"),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "The Educational, Welfare",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            Center(
              child: Text(
                "and Research Foundation Malaysia",
                style: TextStyle(fontSize: 15.0),
              ),
            ),

            Container(
              child: Row(
                children: [
                  SizedBox(width: 8.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: Details(
                      ikon: Icons.business_center_rounded,
                      subhead: "Stand from",
                      title: "Since 1979",
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: Details(
                      ikon: Icons.person,
                      subhead: "Founders",
                      title: "Dr.T.Marimuthu",
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Row(
                children: [
                  SizedBox(width: 8.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: Details(
                      ikon: Icons.people_alt_rounded,
                      subhead: "Facilitators",
                      title: "63",
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    child: Details(
                      ikon: Icons.people_alt_rounded,
                      subhead: "Total Student",
                      title: "727",
                    ),
                  ),
                ],
              ),
            ),

            TextTittle(tittle: "Founder"),

            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 373.0,
                height: 182.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        width: 143.0,
                        height: 143.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage("assets/image/marimuthu.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: SizedBox(
                        height: 190.0,
                        width: 190.0,
                        child: Text(
                          "The Educational, Welfare and Research Foundation (EWRF) is a Malaysian NPO & NGO, founded in 1979, whose mission is to empower marginalised.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: const Color.fromRGBO(31, 121, 148, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 18.0),
            TextTittle(tittle: "Short Story"),

            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 215.0,
                width: 373.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
                child: SizedBox(
                  width: 341,
                  height: 200,
                  child: Text(
                    "The Educational, Welfare and Research Foundation (EWRF) is a Malaysian NPO & NGO, founded in 1979, whose mission is to empower marginalised communities in Malaysia by creating platforms for empowerment through education, psycho-social counseling and welfare for B40* communities so the equity difference between themselves and others can be reduced.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: const Color.fromRGBO(31, 121, 148, 1),
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 18.0),
            TextTittle(tittle: "Image"),

            SizedBox(height: 18.0),
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
