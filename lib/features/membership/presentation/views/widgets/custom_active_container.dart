import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomActiveContainer extends StatelessWidget {
  const CustomActiveContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFDA1C5A).withOpacity(0.10),
        borderRadius: BorderRadius.circular(8.56),
        border: Border.all(color: Color(0xFFDA1C5A)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Plan: Basic',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  'Valid until: December 31, 2023',
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
                color: Color(0xFFDA1C5A).withOpacity(.10),
                borderRadius: BorderRadius.circular(10704.81),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                child: Text(
                  'Active',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFDA1C5A),

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
