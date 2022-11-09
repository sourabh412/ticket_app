import 'package:book_tickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:book_tickets/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      width: size.width*0.6,
      height: 350,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/${hotel['image']}"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12)
            ),
          ),
          //margin
          const SizedBox(height: 10,),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          //margin
          const SizedBox(height: 5,),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          //margin
          const SizedBox(height: 8,),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
