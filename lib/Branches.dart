import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';

class Branches extends StatelessWidget {
  const Branches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "Branches",
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
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 25.0),
              child: Container(
                height: 288.12,
                width: 338,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/Maps.png"),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0),
            TextTittle(tittle: "Branches"),

            SizedBox(height: 10.0),
            BranchesPlace(
              place: "EWRF Taman Tun Dr Ismail",
              address:
                  "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",
              route: "/ttdi",
            ),

            SizedBox(height: 10.0),
            BranchesPlace(
              place: "EWRF Taman Tun Dr Ismail",
              address:
                  "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",
              route: "/ttdi",
            ),

            SizedBox(height: 10.0),
            BranchesPlace(
              place: "EWRF Taman Tun Dr Ismail",
              address:
                  "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",
              route: "/ttdi",
            ),

            SizedBox(height: 10.0),
            BranchesPlace(
              place: "EWRF Taman Tun Dr Ismail",
              address:
                  "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",
              route: "/ttdi",
            ),

            SizedBox(height: 10.0),
            BranchesPlace(
              place: "EWRF Taman Tun Dr Ismail",
              address:
                  "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",
              route: "/ttdi",
            ),

            SizedBox(height: 10.0),
            BranchesPlace(
              place: "EWRF Taman Tun Dr Ismail",
              address:
                  "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",
              route: "/ttdi",
            ),

            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
