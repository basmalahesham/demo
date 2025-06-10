import 'package:demo/features/content/presentation/views/widgets/content_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentView extends StatefulWidget {
  const ContentView({super.key});

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> _tabs = ['Articles', 'Galleries', 'Announcements'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // علشان يعيد بناء التابز ويحدث الوضع المختار
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Content',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 21.24,
            color: Color(0xFF1F2937),
          ),
        ),
        actions: [
          SvgPicture.asset(
            'assets/images/search.svg',
            width: 25.48,
            height: 25.48,
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 10),
            controller: _tabController,
            indicatorColor: const Color(0xFFDA1C5A),
            indicatorWeight: 2.14,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Color(0xFFE5E7EB),
            labelColor: const Color(0xFFDA1C5A),
            labelStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            unselectedLabelColor: Colors.grey.shade700,
            unselectedLabelStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            tabs: List.generate(_tabs.length, (index) {
              return Tab(
                child: Text(
                  _tabs[index],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                ),
              );
            }),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SafeArea(child: ContentViewBody()),
          Center(child: Text('Galleries Content')),
          Center(child: Text('Announcements Content')),
        ],
      ),
    );
  }
}
