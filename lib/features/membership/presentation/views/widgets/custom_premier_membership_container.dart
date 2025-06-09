import 'package:demo/features/membership/presentation/views/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPremierMembershipContainer extends StatelessWidget {
  const CustomPremierMembershipContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFDA1C5A),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.56),
              topLeft: Radius.circular(8.56),
            ),
            border: Border.all(color: Color(0xFFE5E7EB), width: 1.07),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Premier Membership',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$65.00  ',
                          style: GoogleFonts.montserrat(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '/month',
                          style: GoogleFonts.montserrat(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'The ultimate Parlor experience with\npersonalized concierge service.',
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(8.56),
              bottomLeft: Radius.circular(8.56),
            ),
            border: Border.all(color: Color(0xFFE5E7EB), width: 1.07),
          ),
          child: Column(
            children: [
              SizedBox(height: 17,),
              CustomRow(text: 'All Premium benefits'),
              CustomRow(text: 'Personal concierge service'),
              CustomRow(text: 'Complimentary guest passes'),
              CustomRow(text: 'VIP-only exclusive experiences'),
              CustomRow(text: 'Partner benefits & discounts'),
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
                  SizedBox(width: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDA1C5A),
                      borderRadius: BorderRadius.circular(8.56),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 9,
                      ),
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
        ),
      ],
    );
  }
}
