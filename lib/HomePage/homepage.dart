import 'package:flutter/material.dart';
import 'package:rentcar/carscreen.dart';
//import 'package:rentcar/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 200),
        //color: Colors.amber,
        //height: 500,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/mainpic.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enjoy the freedom",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text(
              "with Environmental",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text(
              "awareness",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Quickly choose your vehicle, rent it",
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "and enjoy the freedom",
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 11),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                //padding: EdgeInsets.fromLTRB(30, 15, 40, 15),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CarScreen()));
              },
              child: Text(
                "Find Partner",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
