import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeslaCard extends StatelessWidget {
  const TeslaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
          ),
          Text("Select or search your",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold)),
          Text(
            "Favorite vehicle",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none, // For removing border color
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                hintText: "Tesla",
                filled: true,
                fillColor: Colors.grey.withOpacity(0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
