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
          TitleWithMoreBtn(title: 'Recommended', press:(){}),
          Container(
            width: size.width*0.4,
            child: Column(
              children: [
                Image.asset('assets/images/image_1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


