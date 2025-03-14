import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'AboutUs.dart';
import 'OurProjects.dart';
import 'Branches.dart';
import 'Events.dart';
import 'Membership.dart';
import 'Volunteer.dart';
import 'Counseling.dart';
import 'Donation.dart';

import 'NewsNPaper.dart';

import 'Projects/E4J.dart';
import 'Projects/CSI.dart';
import 'Projects/CNSLING.dart';
import 'Projects/C3G.dart';

import 'Branchess/ttdi.dart';

import 'Eventss/Eventittle.dart';

import 'package:flutter_application_1/modular.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EWRF Application",
      home: Homepage(), // Halaman utama langsung OurProjects()
      routes: {
        "/AboutUs": (context) => AboutUs(),
        "/OurProjects": (context) => OurProjects(),
        "/Branches": (context) => Branches(),
        "/Events": (context) => Events(),
        "/Membership": (context) => Membership(),
        "/Volunteer": (context) => Volunteer(),
        "/Counseling": (context) => Counseling(),
        "/Donation": (context) => Donation(),
        "/Homepage": (context) => Homepage(),

        "/e4j": (context) => E4J(),
        "/csi": (context) => CSI(),
        "/counseling": (context) => CNSLING(),
        "/c3g": (context) => C3G(),

        "/ttdi": (context) => TTDI(),

        "/eventss": (context) => Eventittle(),

        "/NewsNPaper": (context) => NewsPaper(),
      },
    ),
  );
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "EWRF Aplication",
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
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              width: 372.0,
              height: 253.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                image: DecorationImage(
                  image: AssetImage("assets/image/Banner.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 18.0),
            TextTittle(tittle: "Our Service"),

            SizedBox(height: 18.0),
            Row(
              children: [
                SizedBox(width: 19.0),
                Services(ikon: Icons.people, route: "/AboutUs"),

                SizedBox(width: 27.0),
                Services(ikon: Icons.menu_book_rounded, route: "/OurProjects"),

                SizedBox(width: 27.0),
                Services(ikon: Icons.map_rounded, route: "/Branches"),

                SizedBox(width: 27.0),
                Services(ikon: Icons.date_range_rounded, route: "/Events"),
              ],
            ),
            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                children: [
                  Text(
                    "About us",
                    style: TextStyle(
                      color: const Color.fromRGBO(30, 180, 226, 1),
                    ),
                  ),

                  SizedBox(width: 32.0),
                  Text(
                    "Our Projects",
                    style: TextStyle(
                      color: const Color.fromRGBO(30, 180, 226, 1),
                    ),
                  ),

                  SizedBox(width: 30.0),
                  Text(
                    "Branches",
                    style: TextStyle(
                      color: const Color.fromRGBO(30, 180, 226, 1),
                    ),
                  ),

                  SizedBox(width: 49.0),
                  Text(
                    "Events",
                    style: TextStyle(
                      color: const Color.fromRGBO(30, 180, 226, 1),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 18.0),
            Row(
              children: [
                SizedBox(width: 19.0),
                ServicesMembership(
                  ikon: Icons.star_rounded,
                  route: "/Membership",
                ),

                SizedBox(width: 27.0),
                ServicesVolunteer(
                  ikon: Icons.handshake_rounded,
                  route: "/Volunteer",
                ),

                SizedBox(width: 27.0),
                Services(
                  ikon: Icons.health_and_safety_rounded,
                  route: "/Counseling",
                ),

                SizedBox(width: 27.0),
                ServicesDonation(
                  ikon: Icons.wallet_giftcard_rounded,
                  route: "/Donation",
                ),
              ],
            ),

            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    "Membership",
                    style: TextStyle(
                      color: const Color.fromRGBO(30, 180, 226, 1),
                    ),
                  ),

                  SizedBox(width: 29.0),
                  Text(
                    "Volunteer",
                    style: TextStyle(
                      color: const Color.fromRGBO(30, 180, 226, 1),
                    ),
                  ),

                  SizedBox(width: 33.0),
                  Text(
                    "Counseling",
                    style: TextStyle(
                      color: const Color.fromRGBO(30, 180, 226, 1),
                    ),
                  ),

                  SizedBox(width: 35.0),
                  Text(
                    "Donation",
                    style: TextStyle(
                      color: const Color.fromRGBO(30, 180, 226, 1),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 18.0),
            TextTittle(tittle: "News and Paper"),

            SizedBox(height: 18.0),
            NewsNPaper(
              ImagePath: "assets/image/News1.png",
              Subhead: "Printed Media Cover",
              MainTittle: "Agreement signed to develop and popularise Kabbadi",
              Source: "Source: The Star",
              route: "/NewsNPaper",
            ),

            SizedBox(height: 18.0),
            NewsNPaper(
              ImagePath: "assets/image/News2.png",
              Subhead: "Printed Media Cover",
              MainTittle: "Kajang EWRF's Fund Raising Dinner",
              Source: "Source: Vanakam Malaysia News",
              route: "/NewsNPaper",
            ),

            SizedBox(height: 18.0),
            NewsNPaper(
              ImagePath: "assets/image/News3.png",
              Subhead: "Printed Media Cover",
              MainTittle: "Kajang EWRF's Fund Raising Dinner",
              Source: "Source: Vanakam Malaysia News",
              route: "/NewsNPaper",
            ),

            SizedBox(height: 18.0),
            NewsNPaper(
              ImagePath: "assets/image/News4.png",
              Subhead: "Printed Media Cover",
              MainTittle: "Kajang EWRF's Fund Raising Dinner",
              Source: "Source: Vanakam Malaysia News",
              route: "/NewsNPaper",
            ),

            SizedBox(height: 18.0),
            NewsNPaper(
              ImagePath: "assets/image/News5.png",
              Subhead: "Printed Media Cover",
              MainTittle: "Kajang EWRF's Fund Raising Dinner",
              Source: "Source: Vanakam Malaysia News",
              route: "/NewsNPaper",
            ),

            SizedBox(height: 25.0),
          ],
        ),
      ),
    );
  }
}

class TextTittle extends StatelessWidget {
  @override
  final String tittle;

  const TextTittle({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          tittle,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: "",
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(31, 121, 148, 1),
          ),
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
  @override
  final IconData ikon;
  final String route;

  const Services({super.key, required this.ikon, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Row(
        children: [
          Container(
            height: 73.0,
            width: 73.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: const Color.fromRGBO(173, 229, 246, 1),
            ),
            child: Icon(
              ikon,
              size: 42.0,
              color: const Color.fromRGBO(30, 180, 226, 1),
            ),
          ),
        ],
      ),
    );
  }
}

class NewsNPaper extends StatelessWidget {
  @override
  final String ImagePath;
  final String Subhead;
  final String MainTittle;
  final String Source;
  final String route;

  const NewsNPaper({
    super.key,
    required this.ImagePath,
    required this.Subhead,
    required this.MainTittle,
    required this.Source,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Row(
        children: [
          SizedBox(width: 19.0),
          Container(
            width: 123.0,
            height: 104.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              image: DecorationImage(
                image: AssetImage(ImagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(width: 10.0),
          Container(
            width: 239.0,
            height: 104.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      Subhead,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: const Color.fromRGBO(173, 229, 246, 1),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 3.0),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      MainTittle,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: const Color.fromRGBO(31, 121, 148, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 8.0),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      Source,
                      style: TextStyle(
                        fontSize: 10.0,
                        color: const Color.fromARGB(255, 131, 131, 131),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ServicesMembership extends StatelessWidget {
  @override
  final IconData ikon;
  final String route;

  const ServicesMembership({
    super.key,
    required this.ikon,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showMembershipDialog(context, route);
      },
      child: Container(
        height: 73.0,
        width: 73.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: const Color.fromRGBO(173, 229, 246, 1),
        ),
        child: Icon(
          ikon,
          size: 42.0,
          color: const Color.fromRGBO(30, 180, 226, 1),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan AlertDialog sebelum pindah ke halaman lain
  void _showMembershipDialog(BuildContext context, String route) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
          contentPadding: EdgeInsets.zero, // Menghilangkan padding default
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          content: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Column(
                  mainAxisSize:
                      MainAxisSize.min, // Agar dialog tidak terlalu besar
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // **Container untuk konten utama**
                    SizedBox(height: 30),
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.0),

                    // **Icon dan teks dalam Row**
                    benefits(
                      ikons: Icons.star_rounded,
                      textbenefit:
                          "Get access to exclusive content, special events, and more!",
                    ),

                    SizedBox(height: 14.0),
                    benefits(
                      ikons: Icons.account_box_rounded,
                      textbenefit:
                          "Get access to exclusive content, special events, and more!",
                    ),

                    SizedBox(height: 14.0),
                    benefits(
                      ikons: Icons.check_box_rounded,
                      textbenefit:
                          "Get access to exclusive content, special events, and more!",
                    ),

                    SizedBox(height: 70.0),

                    // **Tombol Join dan Cancel**
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // **Tombol Join**
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.pushNamed(context, route);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(
                              31,
                              121,
                              148,
                              1,
                            ),
                            minimumSize: Size(290, 51),
                            padding: EdgeInsets.symmetric(
                              horizontal: 90,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text(
                            "Join",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // **Tombol Close di kanan atas**
              Positioned(
                right: 5.0,
                top: 5.0,
                child: IconButton(
                  icon: Icon(
                    Icons.close_rounded,
                    color: const Color.fromRGBO(121, 204, 229, 1),
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ServicesVolunteer extends StatelessWidget {
  @override
  final IconData ikon;
  final String route;

  const ServicesVolunteer({super.key, required this.ikon, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showVolunteerDialog(context, route);
      },
      child: Container(
        height: 73.0,
        width: 73.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: const Color.fromRGBO(173, 229, 246, 1),
        ),
        child: Icon(
          ikon,
          size: 42.0,
          color: const Color.fromRGBO(30, 180, 226, 1),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan AlertDialog sebelum pindah ke halaman lain
  void _showVolunteerDialog(BuildContext context, String route) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
          contentPadding: EdgeInsets.zero, // Menghilangkan padding default
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          content: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Column(
                  mainAxisSize:
                      MainAxisSize.min, // Agar dialog tidak terlalu besar
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // **Container untuk konten utama**
                    SizedBox(height: 30),
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.0),

                    // **Icon dan teks dalam Row**
                    benefits(
                      ikons: Icons.star_rounded,
                      textbenefit:
                          "Get access to exclusive content, special events, and more!",
                    ),

                    SizedBox(height: 14.0),
                    benefits(
                      ikons: Icons.account_box_rounded,
                      textbenefit:
                          "Get access to exclusive content, special events, and more!",
                    ),

                    SizedBox(height: 14.0),
                    benefits(
                      ikons: Icons.check_box_rounded,
                      textbenefit:
                          "Get access to exclusive content, special events, and more!",
                    ),

                    SizedBox(height: 70.0),

                    // **Tombol Join dan Cancel**
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // **Tombol Join**
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.pushNamed(context, route);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(
                              31,
                              121,
                              148,
                              1,
                            ),
                            minimumSize: Size(290, 51),
                            padding: EdgeInsets.symmetric(
                              horizontal: 90,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text(
                            "Join",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // **Tombol Close di kanan atas**
              Positioned(
                right: 5.0,
                top: 5.0,
                child: IconButton(
                  icon: Icon(
                    Icons.close_rounded,
                    color: const Color.fromRGBO(121, 204, 229, 1),
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
