import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentcar/colors.dart';

class TeslaModel extends StatelessWidget {
  const TeslaModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      //margin: EdgeInsets.only(top: 200),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/images/mainpic.png",
            width: 110,
            height: 110,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Tesla Model S",
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            r"20$/hour",
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
              color: mainColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.location,
                size: 16,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "Permbroke Pines",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
