import 'package:demo/features/content/presentation/views/widgets/articles_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentViewBody extends StatelessWidget {
  const ContentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Divider(color: Color(0xFFE5E7EB)),
              SizedBox(height: 17.3),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.99),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured Articles',
                      style: GoogleFonts.montserrat(
                        fontSize: 19.11,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Text(
                      'Explore insights, stories, and\nperspectives from our community.',
                      style: GoogleFonts.dmSans(
                        fontSize: 16.99,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4B5563),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ArticlesSliverList(),
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFDA1C5A).withOpacity(0.10),
                borderRadius: BorderRadius.circular(8.56),
                border: Border.all(color: Color(0xFFDA1C5A)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 9.56,
                  horizontal: 26.54,
                ),
                child: Text(
                  'Load More Articles',
                  style: GoogleFonts.dmSans(
                    fontSize: 14.86,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFDA1C5A),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
