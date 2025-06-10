import 'package:demo/features/content/data/models/article_model.dart';
import 'package:demo/features/content/presentation/views/widgets/custom_articles_widget.dart';
import 'package:flutter/cupertino.dart';

class ArticlesSliverList extends StatelessWidget {
  ArticlesSliverList({super.key});
  final List<ArticleModel> articlesList = [
    ArticleModel(
      categoryName: 'Networking',
      title: 'The Art of Mindful Networking',
      imagePath: 'assets/images/image 3.png',
      description:
          'Discover how to create meaningful\nconnections in our increasingly digital\nworld.',
      userName: 'Alexandra Williams',
      date: 'May 15, 2023',
    ),
    ArticleModel(
      categoryName: 'Lifestyle',
      title: 'Curated Experiences: The New\nLuxury',
      imagePath: 'assets/images/Curated Experiences_ The New Luxury.png',
      description:
          'How personalized, meaningful\nexperiences are redefining luxury in the\nmodern age.',
      userName: 'Michael Chen',
      date: 'April 3, 2023',
    ),
    ArticleModel(
      categoryName: 'Culture',
      title: 'The Renaissance of Cultural\nSalons',
      imagePath: 'assets/images/The Renaissance of Cultural Salons.png',
      description:
          'How modern social clubs are reviving the art of intellectual gathering and discourse.',
      userName: 'Sarah Johnson',
      date: 'March 12, 2023',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) =>
            CustomArticlesWidget(articleModel: articlesList[index]),
        childCount: articlesList.length,
      ),
    );
  }
}
