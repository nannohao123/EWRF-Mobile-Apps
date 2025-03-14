import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "Events",
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //button search

          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 25.0),
            child: Container(
              width: 372.0,
              height: 257.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/image/Events.png")),
                borderRadius: BorderRadius.circular(9)
              ),
            ),
          ),
          SizedBox(height: 12.0,),
          TextTittle(tittle: "Upcoming Event"),

          SizedBox(height: 12.0,),
          Eventss(place: "Don’t Let Depression Win", address: "Zoom", route: "/eventss",poster: "assets/image/Poster1.png",),

          SizedBox(height: 12.0,),
          Eventss(place: "Fundrising Gala Dinner", address: "Zoom", route: "/eventss",poster: "assets/image/Poster2.png",),

          SizedBox(height: 12.0,),
          Eventss(place: "Growing Confidence in Digital Era", address: "Zoom", route: "/eventss",poster: "assets/image/Poster3.png",)
        ],
      ),
    );
  }
}