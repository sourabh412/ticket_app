import 'package:book_tickets/screens/hotel_screen.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            //top half
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  //header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headLineStyle3,
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle1,
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/img_1.png"),
                            fit: BoxFit.cover
                          )
                        ),
                      )
                    ],
                  ),

                  //margin
                  const SizedBox(height: 25,),

                  //search bar
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        hintText: "Search",
                        hintStyle: Styles.headLineStyle4,
                        border: InputBorder.none
                      ),
                    ),
                  ),

                  //margin
                  const SizedBox(height: 25,),

                  //upcoming flights
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
                  )

                ],
              ),
            ),

            //tickets
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ticketList.map((e) => TicketView(ticket: e)).toList(),
              ),
            ),

            //margin
            const SizedBox(height: 25,),

            //bottom half
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotels",
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
            ),

            //hotels
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((e) => HotelScreen(hotel: e)).toList(),
              ),
            ),

            //margin
            const SizedBox(height: 25,),

          ],
        )
      ),
    );
  }
}
