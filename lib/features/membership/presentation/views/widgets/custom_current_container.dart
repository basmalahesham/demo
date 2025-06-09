import 'package:demo/features/membership/presentation/views/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCurrentContainer extends StatelessWidget {
  const CustomCurrentContainer({super.key});

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
          Padding(
            padding: const EdgeInsets.all( 18.2,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Basic',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
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
                          'Current',
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
                Row(
                  children: [
                    Text(
                      '\$15.00  ',
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
                  'Perfect for those just starting to explore\nour community.',
                  style: GoogleFonts.dmSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4B5563),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Color(0xFFE5E7EB)),
          CustomRow(text: 'Access to public events'),
          CustomRow(
            text: 'Basic member directory access',
          ),
          CustomRow(text: 'Join up to 3 interest groups'),
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
                  color: Color(0xFFDA1C5A).withOpacity(.10),
                  borderRadius: BorderRadius.circular(8.56),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 9),
                  child: Text(
                    'Current Plan',
                    style: GoogleFonts.dmSans(
                      fontSize: 14.99,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFDA1C5A),
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
