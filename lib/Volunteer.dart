import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Volunteer extends StatefulWidget {
  const Volunteer({super.key});

  @override
  _VolunteerState createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  final _formKey = GlobalKey<FormState>(); // Key untuk form
  final TextEditingController _IcNumber = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _PhoneNumber = TextEditingController();
  final TextEditingController _reasonController = TextEditingController();

  Future<void> _submitData() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('volunteers').add({
          'IcNumber': _IcNumber.text,
          'name': _nameController.text,
          'email': _emailController.text,
          'Phone Number': _PhoneNumber.text,
          'reason': _reasonController.text,
          'created_at': Timestamp.now(),
        });

        // Kosongkan field setelah submit
        _IcNumber.clear();
        _nameController.clear();
        _emailController.clear();
        _PhoneNumber.clear();
        _reasonController.clear();

        _showdialogsuccess();
      } catch (e) {
        // Jika gagal, tampilkan error
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Terjadi kesalahan: $e')));
      }
    }
  }

  void _showdialogsuccess() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Registration Success"),
          content: Text(
            "You have been successfully registered as a volunteer.",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacementNamed(context, "/Homepage");
              },
              child: Text("ok"),
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
      contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),

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
          "Volunteer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(31, 121, 148, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _IcNumber,
                decoration: inputDecoration("IC Number"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Fill your IC Number";
                  }
                  return null;
                },
              ),

              SizedBox(height: 30),
              TextFormField(
                controller: _nameController,
                decoration: inputDecoration("Full Name"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Fill your name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _emailController,
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

              SizedBox(height: 30),
              TextFormField(
                controller: _PhoneNumber,
                decoration: inputDecoration("Phone Number"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Fill your Phone Number";
                  }
                  return null;
                },
              ),

              SizedBox(height: 30),
              TextFormField(
                controller: _reasonController,
                decoration: inputDecoration("Reason to Join"),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Fill your reason to join";
                  }
                  return null;
                },
              ),
              SizedBox(height: 40),
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
            ],
          ),
        ),
      ),
    );
  }
}
