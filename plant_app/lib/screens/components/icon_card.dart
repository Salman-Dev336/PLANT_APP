import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key, required this.icon,
    // required this.size,
  });
  final String icon;

  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [BoxShadow(
          offset: Offset(0, 20),
          blurRadius: 25,
          color: kPrimaryColor.withOpacity(0.22),
        ),
        BoxShadow(
          offset: Offset(-15, -15),
          blurRadius: 20,
          color: Colors.white,
        ),
        ]
    
      ),
      child: SvgPicture.asset(icon),
    
    );
  }
}
