import 'package:demo/features/membership/presentation/views/widgets/membership_view_body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MembershipView extends StatefulWidget {
  const MembershipView({super.key});

  @override
  State<MembershipView> createState() => _MembershipViewState();
}

class _MembershipViewState extends State<MembershipView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
          'Membership',
          style: GoogleFonts.montserrat(
            fontSize: 21.41,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          SvgPicture.asset(
            'assets/images/SVG.svg',
            width: 25.69,
            height: 25.69,
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        //toolbarHeight: 0, // hide appbar space
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: TabBar(
            controller: _tabController,
            indicatorColor: Color(0xFFDA1C5A),
            indicatorWeight: 2.14,
            dividerColor: Colors.transparent,
            labelColor: Color(0xFFDA1C5A),
            labelStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            unselectedLabelColor: Colors.grey.shade700,
            unselectedLabelStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            tabs: [
              Padding(
                padding: EdgeInsets.only(bottom: isSelected ? 6.0 : 0.0),
                child: Tab(text: 'Membership Plans'),
              ),
              Tab(text: 'Benefits'),
              Tab(text: 'Billing'),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SafeArea(child: MembershipViewBody()),
          Center(child: Text('Benefits Content')),
          Center(child: Text('Billing Content')),
        ],
      ),
    );
  }
}
