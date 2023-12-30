import 'package:flutter/material.dart';

import '../constants/constants.dart';

class FeaturedSports extends StatelessWidget {
  const FeaturedSports({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturedSportsCard(
            image: 'assets/images/running.jpg',
            press: () {},
          ),
          FeaturedSportsCard(
            image: 'assets/images/badminton.jpg',
            press: () {},
          ),
          FeaturedSportsCard(
            image: 'assets/images/boxing.jpg',
            press: () {},
            borderWidth: 1,
          ),
        ],
      ),
    );
  }
}

class FeaturedSportsCard extends StatelessWidget {
  const FeaturedSportsCard({
    Key? key,
    required this.image,
    required this.press,
    this.borderWidth = 0,
  }) : super(key: key);
  final String image;
  final Function() press;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: borderWidth!,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
