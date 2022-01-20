import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentcar/Card/Teslamodel.dart';
//import 'package:rentcar/Card/carcards.dart';
import 'package:rentcar/Card/teslacard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentcar/HomePage/homepage.dart';
import 'package:rentcar/colors.dart';
//import 'package:rentcar/locations.dart';
import 'package:rentcar/navbar.dart';
import 'package:rentcar/navbar1.dart';

//import 'package:rentcar/colors.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 35),
            //padding: EdgeInsets.only(top: 40),
            height: 100,
            //color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 34,
                ),
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    CupertinoIcons.location,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  alignment: Alignment.center,
                ),
                // First Row Container
                SizedBox(
                  width: 10,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Location",
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 13),
                    ),
                    Text(
                      "Wellington, Canada",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),

                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/profilepic.png",
                  ),
                  //backgroundColor: mainColor,

                  //backgroundColor: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          // DESIGN SEARCH CARD
          TeslaCard(),
          // SEARCH CARD COMPLETED
          SizedBox(
            height: 8,
          ),
          Container(
            height: 20,
            margin: EdgeInsets.fromLTRB(34, 5, 34, 5),
            width: double.infinity,
            //color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Brands",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    "View All",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // done with Text TOP BRAND & VIEW ALL

          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 120,
            width: double.infinity,
            //color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  //margin: EdgeInsets.all(10),
                  height: 94,
                  width: 94,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.8,
                      image: NetworkImage(tesla),
                    ),
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),

                //1st
                Container(
                  //margin: EdgeInsets.all(10),
                  height: 94,
                  width: 94,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.8,
                      image: NetworkImage(tesla),
                    ),
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                // 2nd
                Container(
                  //margin: EdgeInsets.all(10),
                  height: 94,
                  width: 94,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.8,
                      image: NetworkImage(tesla),
                    ),
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                // 3rd
              ],
            ),
          ),

          Container(
            height: 20,
            margin: EdgeInsets.fromLTRB(34, 0, 34, 0),
            width: double.infinity,
            //color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Cars",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Navbar()));
                  },
                  child: Text(
                    "View All",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // done with Text Best Cars & VIEW ALL
          SizedBox(
            height: 6,
          ),
          //TeslaModel(),
          //CarCards(),
          Container(
            margin: EdgeInsets.fromLTRB(30, 5, 30, 0),
            //color: Colors.amber,
            height: 200,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [TeslaModel(), TeslaModel()],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          NavbarUse(),
        ],
      ),
    );
  }
}
