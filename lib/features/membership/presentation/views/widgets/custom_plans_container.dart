import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPlansContainer extends StatelessWidget {
  const CustomPlansContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.56),
        border: Border.all(color: Color(0xFFDA1C5A)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(10704.81),
                color: Color(0xFFDA1C5A),
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Icon(CupertinoIcons.clock, color: Colors.white),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Save 20% with\nannual billing',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  'Switch to annual\nbilling and get 2\nmonths free.',
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4B5563),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFDA1C5A),
                borderRadius: BorderRadius.circular(10704.81),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.85,
                  vertical: 6.42,
                ),
                child: Text(
                  'View Annual Plans',
                  style: GoogleFonts.dmSans(
                    fontSize: 12.85,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFB6C1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
