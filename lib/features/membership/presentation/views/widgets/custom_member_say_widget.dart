import 'package:demo/features/membership/data/models/member_testimonial_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMemberSayWidget extends StatelessWidget {
  const CustomMemberSayWidget({super.key, required this.memberTestimonial});
final MemberTestimonial memberTestimonial;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 17.13),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.56),
          color: Colors.white,
          border: Border.all(color: Color(0xFFE5E7EB), width: 1.07),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.2),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 42.82, // Image radius
                    backgroundImage: AssetImage('assets/images/Member.png'),
                  ),
                  SizedBox(width: 12.85,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        memberTestimonial.name,
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF111827),
                        ),
                      ),
                      Text(
                        memberTestimonial.membershipInfo,
                        style: GoogleFonts.dmSans(
                          fontSize: 12.85,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12.85,),
              Text(
                memberTestimonial.testimonial,
                style: GoogleFonts.dmSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF4B5563),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
