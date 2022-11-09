import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(top: 12),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),
                color: Color(0xFF526799),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${ticket['from']['code']}",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Row(
                        children: [
                          const ThickContainer(),
                          const Text("---",style: TextStyle(color: Colors.white,letterSpacing: 2),),
                          Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded,color: Colors.white,)),
                          const Text("---",style: TextStyle(color: Colors.white,letterSpacing: 2),),
                          const ThickContainer(),
                        ],
                      ),
                      Text(
                        "${ticket['to']['code']}",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${ticket['from']['name']}",
                        style: Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      Text(
                        "${ticket['flying_time']}",
                        style: Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      Text(
                        "${ticket['to']['name']}",
                        style: Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
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
                              color: Colors.white
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
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21)),
                color: Styles.orangeColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${ticket['date']}",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Text(
                        "Date",
                        style: Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${ticket['departure_time']}",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Departure time",
                        style: Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${ticket['number']}",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Number",
                        style: Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
