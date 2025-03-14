import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';

class Eventittle extends StatelessWidget {
  const Eventittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "Event Tittle",
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
            Image(image: AssetImage("assets/image/EventPosters.png")),

            SizedBox(height: 10.0),
            TextTittle(tittle: "Event now!"),

            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                width: 65,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 10.0),
            Eventss(
              place: "Fundrising Gala Dinner",
              address:
                  "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",
              route: "route",
              poster: "assets/image/Poster2.png",
            ),

            SizedBox(height: 10.0),
            Eventss(
              place: "Growing Confidence in Digital Era",
              address:
                  "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",

              route: "route", //belum di inisialisasi
              
              poster: "assets/image/Poster3.png",
            ),
          ],
        ),
      ),
    );
  }
}
