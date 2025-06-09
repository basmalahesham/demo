import 'package:demo/features/membership/data/models/member_testimonial_model.dart';
import 'package:demo/features/membership/presentation/views/widgets/custom_member_say_widget.dart';
import 'package:flutter/material.dart';

class WhatOurMembersSaySliverList extends StatelessWidget {
  WhatOurMembersSaySliverList({super.key});
  final List<MemberTestimonial> memberTestimonials = [
    MemberTestimonial(
      name: 'Sarah Johnson',
      membershipInfo: 'Premium Member · 1 year',
      testimonial:
          '''"The Premium membership has completely transformed my social life. The exclusive events are always impeccably curated, and I've made meaningful connections with like-minded individuals."''',
    ),
    MemberTestimonial(
      name: 'Michael Chen',
      membershipInfo: 'VIP Member · 2 years',
      testimonial: '''"The VIP concierge service alone is worth the price. They've helped me secure reservations at exclusive restaurants and connected me with incredible opportunities I wouldn't have found elsewhere."''',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) =>
            CustomMemberSayWidget(memberTestimonial: memberTestimonials[index]),
        childCount: memberTestimonials.length,
      ),
    );
  }
}
