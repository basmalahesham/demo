import 'package:demo/features/membership/presentation/views/widgets/custom_active_container.dart';
import 'package:demo/features/membership/presentation/views/widgets/custom_basic_membership_container.dart';
import 'package:demo/features/membership/presentation/views/widgets/custom_current_container.dart';
import 'package:demo/features/membership/presentation/views/widgets/custom_plans_container.dart';
import 'package:demo/features/membership/presentation/views/widgets/custom_premier_membership_container.dart';
import 'package:demo/features/membership/presentation/views/widgets/what_our_members_say_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MembershipViewBody extends StatelessWidget {
  const MembershipViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose Your Membership',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Text(
                      'Select the membership tier that best fits\nyour lifestyle and interests.',
                      style: GoogleFonts.dmSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4B5563),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                CustomActiveContainer(),
                SizedBox(height: 16),
                CustomCurrentContainer(),
                SizedBox(height: 16),
                CustomBasicMembershipContainer(),
                SizedBox(height: 16),
                CustomPremierMembershipContainer(),
                SizedBox(height: 16),
                CustomPlansContainer(),
                SizedBox(height: 33),
                Text(
                  'What Our Members Say',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF111827),
                  ),
                ),

              ],
            ),
          ),
        ),
        WhatOurMembersSaySliverList(),
      ],
    );
  }
}



