import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

class Details extends StatelessWidget {
  final IconData ikon;
  final String subhead;
  final String title; // Perbaiki penamaan dari "tittle" menjadi "title"

  const Details({
    super.key,
    required this.ikon,
    required this.subhead,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Container(
              height: 45.0,
              width: 45.0,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(173, 229, 246, 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(ikon, color: const Color.fromRGBO(30, 180, 226, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:
                  MainAxisAlignment.center, // Posisikan teks di tengah
              children: [
                Text(
                  subhead,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: const Color.fromRGBO(173, 229, 246, 1),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(31, 121, 148, 1),
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

class picture extends StatelessWidget {
  @override
  final String pic;

  const picture({super.key, required this.pic});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.0,
      width: 178.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(image: AssetImage(pic), fit: BoxFit.cover),
      ),
    );
  }
}

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => _launchURL("https://wa.me/+60182064859"),
            child: _buildSocialIcon("assets/image/Whatsapp.png"),
          ),
          SizedBox(width: 30.0),
          GestureDetector(
            onTap: () => _launchURL("https://www.instagram.com/ewrfofficial/"),
            child: _buildSocialIcon("assets/image/Instagram.png"),
          ),
          SizedBox(width: 30.0),
          GestureDetector(
            onTap: () => _launchURL("https://www.facebook.com/EWRFMALAYSIA"),
            child: _buildSocialIcon("assets/image/Facebook.png"),
          ),
          SizedBox(width: 30.0),
          GestureDetector(
            onTap: () => _launchURL("https://ewrf.org.my/"),
            child: _buildSocialIcon("assets/image/Website.png"),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(String imagePath) {
    return Container(
      width: 68.0,
      height: 68.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


class ProjectNoverview extends StatelessWidget {
  @override
  final String fillDetails;

  const ProjectNoverview({super.key, required this.fillDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 87,
            width: 87,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color.fromRGBO(173, 229, 249, 1),
            ),
            child: Icon(
              Icons.menu_book_rounded,
              color: const Color.fromRGBO(30, 180, 226, 1),
              size: 50.0,
            ),
          ),

          SizedBox(width: 10.0),
          Container(
            height: 88,
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
              child: SizedBox(
                width: 252.0,
                height: 60.0,
                child: Text(
                  fillDetails,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: const Color.fromRGBO(31, 121, 148, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ConselorPhoto extends StatelessWidget {
  @override
  final String Photo;

  const ConselorPhoto({super.key, required this.Photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62.0,
      height: 62.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(image: AssetImage(Photo), fit: BoxFit.cover),
      ),
      margin: EdgeInsets.all(8.0),
    );
  }
}

class BranchesPlace extends StatelessWidget {
  @override
  final String place;
  final String address;
  final String route;

  const BranchesPlace({
    super.key,
    required this.place,
    required this.address,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/Place.png"),
              ),
              borderRadius: BorderRadius.circular(9),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, route);
            },
            child: Container(
              width: 268.0,
              height: 104,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                    child: Text(
                      "Branches",
                      style: TextStyle(
                        fontSize: 10,
                        color: const Color.fromRGBO(121, 204, 229, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                    child: Text(
                      place,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(31, 121, 148, 1),
                      ),
                    ),
                  ),

                  SizedBox(height: 1.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 14.0,
                          color: const Color.fromRGBO(196, 196, 196, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: SizedBox(
                            width: 225.0,
                            child: Text(
                              address,
                              style: TextStyle(
                                fontSize: 10.0,
                                color: const Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Eventss extends StatelessWidget {
  @override
  final String place;
  final String address;
  final String route;
  final String poster;

  const Eventss({
    super.key,
    required this.place,
    required this.address,
    required this.route,
    required this.poster,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(poster)),
              borderRadius: BorderRadius.circular(9),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, route);
            },
            child: Container(
              width: 268.0,
              height: 104,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                    child: Text(
                      "Events",
                      style: TextStyle(
                        fontSize: 10,
                        color: const Color.fromRGBO(121, 204, 229, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                    child: Text(
                      place,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(31, 121, 148, 1),
                      ),
                    ),
                  ),

                  SizedBox(height: 1.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 18.0,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 14.0,
                          color: const Color.fromRGBO(196, 196, 196, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: SizedBox(
                            width: 225.0,
                            child: Text(
                              address,
                              style: TextStyle(
                                fontSize: 10.0,
                                color: const Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class benefits extends StatelessWidget {
  @override
  final IconData ikons;
  final String textbenefit;

  const benefits({super.key, required this.ikons, required this.textbenefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromRGBO(121, 204, 229, 1),
          ),
          child: Icon(ikons, color: Colors.white, size: 27),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Text(
            textbenefit,
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
      ],
    );
  }
}

class ServicesDonation extends StatelessWidget {
  final IconData ikon;
  final String route;

  const ServicesDonation({super.key, required this.ikon, required this.route});

  // Fungsi untuk membuka URL
  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      print("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route == "/Donation") {
          _launchURL("https://ewrf.org.my/donation/");
        } else {
          Navigator.pushNamed(context, route);
        }
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
}
