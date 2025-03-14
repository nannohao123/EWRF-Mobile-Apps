import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Membership extends StatefulWidget {
  const Membership({super.key});
  @override
  _MembershipState createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  final TextEditingController icnumberController = TextEditingController();
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  Future<void> _submitData() async {
    if (icnumberController.text.isEmpty ||
        fnameController.text.isEmpty ||
        lnameController.text.isEmpty ||
        addressController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill the form before go to next page")),
      );
      return;
    }

    try {
      await FirebaseFirestore.instance.collection("membership").add({
        "Ic Number": icnumberController.text,
        "First Name": fnameController.text,
        "Last Name": lnameController.text,
        "Address": addressController.text,
        "Email": emailController.text,
        "Phone Number": phoneController.text,
        "created_at": Timestamp.now(),
      });

      icnumberController.clear();
      fnameController.clear();
      lnameController.clear();
      addressController.clear();
      phoneController.clear();
      emailController.clear();

      _showSuccesDialog();
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Gagal menyimpan data: $e")));
    }
  }

  void _showSuccesDialog(){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Registration success"),
          content: Text("You have been successfully registered."),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
                Navigator.pushReplacementNamed(context, "/Homepage");
              },
              child: Text("OK"),
              )
          ],
        );
      }
      
      );
  }

  // FUNGSI UNTUK MENGATUR DECORATION TEXTFIELD
  InputDecoration inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        color: const Color.fromRGBO(31, 121, 148, 1),
      ), // Warna teks label
      //prefixIcon: Icon(icon, color: Colors.blue), // Icon di dalam TextField
      filled: true,
      fillColor: Colors.white, // Background putih
      contentPadding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 20.0,
      ), // Padding dalam input
      // Default border (saat tidak fokus)
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), // Sudut melengkung
        borderSide: BorderSide(color: Colors.white, width: 1.5),
      ),

      // Border saat di klik / fokus
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: const Color.fromRGBO(31, 121, 148, 1),
          width: 2.0,
        ),
      ),

      // Border saat error
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red, width: 1.5),
      ),

      // Border saat sedang mengetik & error
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
          "Membership Registration",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(31, 121, 148, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(229, 249, 255, 1),
      ),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ic Number
            TextField(
              controller: icnumberController,
              decoration: inputDecoration("IC Number", Icons.person),
            ),

            SizedBox(height: 30),

            // First Name
            TextField(
              controller: fnameController,
              decoration: inputDecoration("First Name", Icons.email),
            ),

            SizedBox(height: 30),

            // Last Name
            TextField(
              controller: lnameController,
              decoration: inputDecoration("Last Name", Icons.phone),
            ),

            SizedBox(height: 30),

            TextField(
              controller: addressController,
              decoration: inputDecoration("Address", Icons.stacked_bar_chart),
              maxLines: 4,
            ),

            SizedBox(height: 30),

            TextField(
              controller: emailController,
              decoration: inputDecoration("Email", Icons.abc),
              keyboardType: TextInputType.emailAddress,
            ),

            SizedBox(height: 30),

            TextField(
              controller: phoneController,
              decoration: inputDecoration(
                "Phone Number",
                Icons.stacked_bar_chart,
              ),
              keyboardType: TextInputType.phone,
            ),

            SizedBox(height: 40),

            // Tombol Submit
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
    );
  }
}
