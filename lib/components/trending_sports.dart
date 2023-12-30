import 'package:flutter/material.dart';
import 'package:sporthub/details/details_page.dart';

import '../constants/constants.dart';

class TrendingSports extends StatelessWidget {
  const TrendingSports({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          TrendingSportsCard(
            image: 'assets/images/workout.jpg',
            title: 'Workout',
            type: 'Intense',
            kCal: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(
                    imagePath: 'assets/images/workout.jpg',
                    title: 'Workout',
                  ),
                ),
              );
            },
          ),
          TrendingSportsCard(
            image: 'assets/images/treadmill.jpg',
            title: 'Treadmill',
            type: 'HIIT',
            kCal: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(
                    imagePath: 'assets/images/treadmill.jpg',
                    title: 'Treadmill',
                  ),
                ),
              );
            },
          ),
          TrendingSportsCard(
            image: 'assets/images/volleyball.jpg',
            title: 'Volleyball',
            type: 'Cardio',
            kCal: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(
                    imagePath: 'assets/images/volleyball.jpg',
                    title: 'Volleyball',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TrendingSportsCard extends StatelessWidget {
  const TrendingSportsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.type,
    required this.kCal,
    required this.press,
  }) : super(key: key);

  final String image, title, type;
  final int kCal;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              image,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          title.toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            type.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: kPrimaryColor,
                                ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // RichText(
                  //   text: TextSpan(
                  //     children: [
                  //       TextSpan(
                  //           text: "$title\n".toUpperCase(),
                  //           style: Theme.of(context).textTheme.labelLarge),
                  //       TextSpan(
                  //         text: type.toUpperCase(),
                  //         style: TextStyle(
                  //           color: kPrimaryColor.withOpacity(0.5),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const Spacer(),
                  Text(
                    '\$$kCal',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
