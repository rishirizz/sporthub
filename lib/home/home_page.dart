import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/bottom_navbar.dart';
import '../components/header_and_searchbox.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            // TitleWithMoreBtn(title: "Recomended", press: () {}),
            // RecomendsPlants(),
            // TitleWithMoreBtn(title: "Featured Plants", press: () {}),
            // FeaturedPlants(),
            const SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
