import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/app_ticket_tabs.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          //margin
          const SizedBox(height: 40,),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),

          //margin
          const SizedBox(height: 20,),

          const AppTicketTabs(t1: "Airline tickets", t2: "Hotels"),

          //margin
          const SizedBox(height: 20,),

          //departure
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFF4F6FD),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  icon: const Icon(
                    Icons.flight_takeoff_rounded,
                    color: Color(0xFFBFC2DF),
                  ),
                  hintText: "Departure",
                  hintStyle: Styles.headLineStyle4.copyWith(color: Colors.black),
                  border: InputBorder.none
              ),
            ),
          ),

          //arrival
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFF4F6FD),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  icon: const Icon(
                    Icons.flight_land_rounded,
                    color: Color(0xFFBFC2DF),
                  ),
                  hintText: "Arrival",
                  hintStyle: Styles.headLineStyle4.copyWith(color: Colors.black),
                  border: InputBorder.none
              ),
            ),
          ),

          //margin
          const SizedBox(height: 20,),

          //find tickets
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue.shade900,
              padding: const EdgeInsets.symmetric(vertical: 20),
            ),
            child: Text(
              "Find tickets",
              style: Styles.headLineStyle4.copyWith(color: Colors.white,letterSpacing: 2),
            ),
          ),

          //margin
          const SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: Styles.headLineStyle2,
              ),
              InkWell(
                onTap: (){
                  debugPrint("View all");
                },
                child: Text(
                  "View all",
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          ),

          //margin
          const SizedBox(height: 15,),

          //bottom part
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 400,
                width: size.width*0.42,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/sit.jpg"),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: size.width*0.44,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              "Take the survey about aour services and get discount",
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(width: 18, color: const Color(0xFF189999)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: size.width*0.44,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 10,),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "😍",
                                style: TextStyle(
                                  fontSize: 38,
                                )
                              ),
                              TextSpan(
                                  text: "🥰",
                                  style: TextStyle(
                                    fontSize: 50,
                                  )
                              ),
                              TextSpan(
                                  text: "😘",
                                  style: TextStyle(
                                    fontSize: 38,
                                  )
                              ),
                            ]
                          ),
                        ),
                        const SizedBox(height: 60,),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}
