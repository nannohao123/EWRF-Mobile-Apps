import 'package:flutter/material.dart';
import 'package:flutter_application_1/modular.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Counseling extends StatefulWidget {
  const Counseling({super.key});

  @override
  _Counseling createState() => _Counseling();
}

class _Counseling extends State<Counseling> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _reason = TextEditingController();

  Future<void> _submitData() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('Counseling').add({
          'name': _name.text,
          'email': _email.text,
          'reason': _reason.text,
          'created_at': Timestamp.now(),
        });

        _name.clear();
        _email.clear();
        _reason.clear();

        _showSuccessDialog();
      } catch (e) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Terjadi kesalahan: $e')));
      }
    }
  }

  void _showSuccessDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Success"),
        content: Text("Your data has been successfully submitted! we will contact you"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}

  InputDecoration inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: const Color.fromRGBO(31, 121, 148, 1)),
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), // Sudut melengkung
        borderSide: BorderSide(color: Colors.white, width: 1.5),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(
          color: const Color.fromRGBO(31, 121, 148, 1),
          width: 2.0,
        ),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red, width: 1.5),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      appBar: AppBar(
        title: Text(
          "Counseling",
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
            TextTittle(tittle: "Our Counselor"),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Scroll ke samping
                child: Row(
                  children: [
                    ConselorPhoto(Photo: "assets/image/Conselor.jpeg"),
                    ConselorPhoto(Photo: "assets/image/Conselor.jpeg"),
                    ConselorPhoto(Photo: "assets/image/Conselor.jpeg"),
                    ConselorPhoto(Photo: "assets/image/Conselor.jpeg"),
                    ConselorPhoto(Photo: "assets/image/Conselor.jpeg"),
                    ConselorPhoto(Photo: "assets/image/Conselor.jpeg"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Container(
                width: 380.0,
                height: 173.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/CNSLINGG.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),

            SizedBox(height: 18.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Container(
                height: 140.0,
                width: 373.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start, // Pastikan teks dimulai dari kiri
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 60.0),
                        Padding(
                          padding: EdgeInsets.only(left: 17.0),
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color.fromRGBO(173, 229, 246, 1),
                            ),
                            child: Icon(
                              Icons.star,
                              size: 18.0,
                              color: const Color.fromRGBO(30, 180, 226, 1),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          "Free Tele-Counselling",
                          style: TextStyle(
                            color: const Color.fromRGBO(31, 121, 148, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        top: 0.0,
                      ), // Beri padding kiri agar tidak mepet
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily : Monday to Friday",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: const Color.fromRGBO(121, 204, 229, 1),
                            ),
                          ),
                          Text(
                            "Time : BM, ENG & Tamil 10.00 AM - 5.00 PM",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: const Color.fromRGBO(121, 204, 229, 1),
                            ),
                          ),

                          SizedBox(height: 12.0),
                          Text(
                            "+603 7498 7140",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: const Color.fromRGBO(196, 196, 196, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 18.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Container(
                height: 158.0,
                width: 373.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start, // Pastikan teks dimulai dari kiri
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 60.0),
                        Padding(
                          padding: EdgeInsets.only(left: 17.0),
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color.fromRGBO(173, 229, 246, 1),
                            ),
                            child: Icon(
                              Icons.star,
                              size: 18.0,
                              color: const Color.fromRGBO(30, 180, 226, 1),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          "Free Walk-In-Counselling",
                          style: TextStyle(
                            color: const Color.fromRGBO(31, 121, 148, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        top: 0.0,
                      ), // Beri padding kiri agar tidak mepet
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily : Eng, BM, Tamil",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: const Color.fromRGBO(121, 204, 229, 1),
                            ),
                          ),
                          Text(
                            "Time : 1.00PM - 5.00 PM",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: const Color.fromRGBO(121, 204, 229, 1),
                            ),
                          ),

                          SizedBox(height: 12.0),
                          SizedBox(
                            width: 300,
                            child: Text(
                              "4B, Persiaran Zaaba, Taman Tun Dr Ismail, 60000 Kuala Lumpur",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: const Color.fromRGBO(196, 196, 196, 1),
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

            SizedBox(height: 14.0),
            TextTittle(tittle: "Let us help you"),

            SizedBox(height: 0.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                width: 350,
                child: Text(
                  "Fill in your details here and our para-counselors will get in touch with you soonest.",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: const Color.fromRGBO(196, 196, 196, 1),
                  ),
                ),
              ),
            ),
            Container(),

            Center(
              child: SizedBox(
                width: 378.0,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 14),
                      TextFormField(
                        controller: _name,
                        decoration: inputDecoration("Name"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Fill your name";
                          }
                          return null;
                        },
                      ),
                
                      SizedBox(height: 14),
                      TextFormField(
                        controller: _email,
                        decoration: inputDecoration("Email"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Fill your Email";
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return "Fill your valid email";
                          }
                          return null;
                        },
                      ),
                
                      SizedBox(height: 14),
                      TextFormField(
                        controller: _reason,
                        decoration: inputDecoration("Explain yourself"),
                        maxLines: 5,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Fill yourself";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 14),
            Center(
              child: ElevatedButton(
                onPressed: _submitData,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(31, 121, 148, 1),
                  minimumSize: Size(370, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(height: 30.0),
            SocialMedia(),

            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
