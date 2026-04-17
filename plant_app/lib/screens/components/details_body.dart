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
        ],
      ),
    );
  }
}

