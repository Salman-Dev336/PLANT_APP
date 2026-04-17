import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/icon_card.dart';
import 'package:plant_app/screens/components/image_and_icons.dart';
import 'package:plant_app/screens/components/title_and_price.dart';

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
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width /2,
                height: 84,
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: kPrimaryColor,
                  onPressed: (){},
                  child: Text('Buy Now',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'times new roman',
                  ),),
                  ),
              ),
              Expanded(
                child: FloatingActionButton(
                  onPressed: (){},
                  child: Text('Description',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'times new roman',
                
                  ),),),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}


