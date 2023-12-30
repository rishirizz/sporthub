import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.type,
    required this.kCal,
  }) : super(key: key);

  final String title, type;
  final int kCal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  title.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium,
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
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: kPrimaryColor,
                          fontSize: 18,
                        ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Image.asset(
                'assets/images/fire.png',
                color: Colors.orangeAccent,
              scale: 0.5,
              ),
              Row(
                children: [
                  Text(
                    '$kCal ',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                  ),
                  Text(
                    'kCal',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Colors.orangeAccent,
                          fontSize: 25,

                        ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
