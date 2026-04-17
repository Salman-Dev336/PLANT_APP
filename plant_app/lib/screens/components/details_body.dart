import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/icon_card.dart';
import 'package:plant_app/screens/components/image_and_icons.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // scrollDirection: ,
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 600,
          ),
        ],
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key, required this.title, required this.country, required this.price,
  });
   final String title, country;
   final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headlineLarge
                      ?.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(fontSize: 20, color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Spacer(),
          Text('\$$price', style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'times new roman',
    
          ),)
        ],
      ),
    );
  }
}
