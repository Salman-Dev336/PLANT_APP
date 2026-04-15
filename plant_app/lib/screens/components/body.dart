// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/header_with_search_box.dart';
import 'package:plant_app/screens/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recommended', press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendPlantCard(
                  image: 'assets/images/image_1.png',
                  title: 'Samantha',
                  country: 'Russia',
                  price: 500,
                  press: (){},
                  // size: size
                ),
                    RecommendPlantCard(
                  image: 'assets/images/image_1.png',
                  title: 'Samantha',
                  country: 'Russia',
                  price: 500,
                  press: (){},
                  // size: size
                ),
                    RecommendPlantCard(
                  image: 'assets/images/image_1.png',
                  title: 'Samantha',
                  country: 'Russia',
                  price: 500,
                  press: (){},
                  // size: size
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,

    // required this.size,
  });

  final String image, title, country;
  final int price;
  final Function press;

  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.35,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.35),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.labelLarge!
                              .copyWith(
                                // color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        TextSpan(
                          text: "$country",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
