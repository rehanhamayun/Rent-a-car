import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentcar/HomePage/homepage.dart';
import 'package:rentcar/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarUse extends StatelessWidget {
  const NavbarUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  CupertinoIcons.collections,
                  color: mainColor,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Rehan",
                  style: GoogleFonts.poppins(
                      color: mainColor, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              children: [
                Icon(CupertinoIcons.location_north_fill),
                SizedBox(
                  height: 6,
                ),
                Text("Rehan",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500))
              ],
            ),
            Column(
              children: [
                Icon(Icons.save_alt),
                SizedBox(
                  height: 6,
                ),
                Text("Rehan",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500)),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Container(
                child: Column(
                  children: [
                    Icon(CupertinoIcons.profile_circled),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Rehan",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
