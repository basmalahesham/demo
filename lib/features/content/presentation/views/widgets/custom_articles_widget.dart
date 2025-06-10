import 'package:demo/features/content/data/models/article_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomArticlesWidget extends StatelessWidget {
  const CustomArticlesWidget({super.key, required this.articleModel});
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.99, vertical: 26.54),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.49),
          border: Border.all(color: Color(0xFFE5E7EB), width: 1.06),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(articleModel.imagePath),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDA1C5A),
                      borderRadius: BorderRadius.circular(4.25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.49,
                        vertical: 4.25,
                      ),
                      child: Text(
                        articleModel.categoryName,
                        style: GoogleFonts.dmSans(
                          fontSize: 12.74,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    articleModel.title,
                    style: GoogleFonts.montserrat(
                      fontSize: 19.11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4.25),
                  Text(
                    articleModel.description,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.86,
                    ),
                  ),
                  SizedBox(height: 4.25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20, // Image radius
                        backgroundImage: AssetImage('assets/images/Member.png'),
                      ),
                      Text(
                        articleModel.userName,
                        style: GoogleFonts.dmSans(
                          fontSize: 12.74,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                      Text(
                        articleModel.date,
                        style: GoogleFonts.dmSans(
                          fontSize: 12.74,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.25),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDA1C5A).withOpacity(.10),
                      borderRadius: BorderRadius.circular(8.56),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      child: Center(
                        child: Text(
                          'Read Article',
                          style: GoogleFonts.dmSans(
                            fontSize: 14.99,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFDA1C5A),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
