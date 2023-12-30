import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/bottom_navbar.dart';
import '../components/featured_sports.dart';
import '../components/header_and_searchbox.dart';
import '../components/trending_sports.dart';
import '../components/title_with_more_button.dart';
import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(
              title: 'Trending',
              onPressed: () {},
            ),
            const TrendingSports(),
            TitleWithMoreBtn(title: 'Featured', onPressed: () {}),
            const FeaturedSports(),
            const SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
