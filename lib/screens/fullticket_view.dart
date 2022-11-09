import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class FullTicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  const FullTicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          children: [
            //top part
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(top: 12),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${ticket['from']['code']}",
                        style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                      Row(
                        children: [
                          ThickContainer(color: Colors.lightBlueAccent.shade100,),
                          Text("---",style: TextStyle(color: Colors.lightBlueAccent.shade100,letterSpacing: 2),),
                          Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded,color: Colors.lightBlueAccent.shade100,)),
                          Text("---",style: TextStyle(color: Colors.lightBlueAccent.shade100,letterSpacing: 2),),
                          ThickContainer(color: Colors.lightBlueAccent.shade100,),
                        ],
                      ),
                      Text(
                        "${ticket['to']['code']}",
                        style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${ticket['from']['name']}",
                        style: Styles.headLineStyle4,
                      ),
                      Text(
                        "${ticket['flying_time']}",
                        style: Styles.headLineStyle4.copyWith(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
                      ),
                      Text(
                        "${ticket['to']['name']}",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //tear here
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate(25, (index) => const SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.black
                              ),
                            ),
                          )),
                        ),
                      )
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //mid
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${ticket['date']}",
                        style: Styles.headLineStyle3.copyWith(color: Colors.grey[800]),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Date",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${ticket['departure_time']}",
                        style: Styles.headLineStyle3.copyWith(color: Colors.grey[800]),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Departure time",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${ticket['number']}",
                        style: Styles.headLineStyle3.copyWith(color: Colors.grey[800]),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Number",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Divider(color: Colors.grey[400], thickness: 0.5,),
                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter Dash",
                            style: Styles.headLineStyle2.copyWith(color: Colors.grey.shade800),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "Passenger",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "5221 478566",
                            style: Styles.headLineStyle2.copyWith(color: Colors.grey.shade800),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "Passport",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Divider(color: Colors.grey[400], thickness: 0.5,),
                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "0055 444 77147",
                            style: Styles.headLineStyle2.copyWith(color: Colors.grey.shade800),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "Number of E-ticket",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "B2SG28",
                            style: Styles.headLineStyle2.copyWith(color: Colors.grey.shade800),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "Booking code",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Divider(color: Colors.grey[400], thickness: 0.5,),
                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 50,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/visa.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                "***6572",
                                style: Styles.headLineStyle2.copyWith(color: Colors.grey.shade800),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "Payment method",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$249.99",
                            style: Styles.headLineStyle2.copyWith(color: Colors.grey.shade800),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "Price",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //barcode
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Divider(color: Colors.grey[400], thickness: 0.5,),
                  const SizedBox(height: 20,),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: BarcodeWidget(
                      data: "https://github.com/sourabh412",
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ],
              ),
            ),

            // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21)),

          ],
        ),
      ),
    );
  }
}
