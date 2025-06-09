import 'package:demo/features/membership/presentation/views/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBasicMembershipContainer extends StatelessWidget {
  const CustomBasicMembershipContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.56),
        border: Border.all(color: Color(0xFFE5E7EB), width: 1.07),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFDA1C5A),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.56),
                  topRight: Radius.circular(8.56),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Text(
                  'POPULAR',
                  style: GoogleFonts.montserrat(
                    fontSize: 12.85,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Basic Membership',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\$45.00  ',
                      style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Text(
                      '/month',
                      style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4B5563),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Enhanced access to exclusive events and\nnetworking opportunities.',
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4B5563),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          Divider(color: Color(0xFFE5E7EB)),
          CustomRow(text: 'All Basic benefits'),
          CustomRow(
            text: 'Priority access to limited-capacity\nevents',
          ),
          CustomRow(text: 'Exclusive Premium-only events'),
          CustomRow(text: 'Join unlimited interest groups'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'View Details',
                  style: GoogleFonts.dmSans(
                    fontSize: 14.99,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFDA1C5A),
                  ),
                ),
              ),
              SizedBox(width: 40,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFDA1C5A),
                  borderRadius: BorderRadius.circular(8.56),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 9),
                  child: Text(
                    'Upgrade',
                    style: GoogleFonts.dmSans(
                      fontSize: 14.99,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
