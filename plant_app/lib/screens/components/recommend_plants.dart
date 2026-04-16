import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/details_body.dart';
// import 'package:plant_app/screens/details/components/details_screen.dart';
// import 'package:plant_app/screens/details/components/details_screen.dart';


class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 500,
            press: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailsBody()),);
            },
            // size: size
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Pakistan',
            price: 500,
            press: () {
              //  Navigator.push(
              //   context, MaterialPageRoute(builder: (context) =>DetailsBody()),);
            },
            // size: size
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Rose',
            country: 'Afghanistan',
            price: 500,
            press: () {
              //  Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => DetailsScreen()),);
            },
            // size: size
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
                          text: country,
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