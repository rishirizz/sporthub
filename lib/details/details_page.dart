import 'package:flutter/material.dart';

import '../components/image_and_icons.dart';
import '../components/title_and_price.dart';
import '../constants/constants.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.imagePath,
    required this.title,
  });
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ImageAndIcons(
            size: size,
            imagePath: imagePath,
            title: title,
          ),
          TitleAndPrice(
            title: title,
            country: 'Russia',
            price: 440,
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 74,
                child: MaterialButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
