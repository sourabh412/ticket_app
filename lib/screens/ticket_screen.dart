import 'package:book_tickets/screens/fullticket_view.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/app_ticket_tabs.dart';
import 'package:flutter/material.dart';

import '../utils/app_info_list.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          //margin
          const SizedBox(height: 40,),

          Text(
            "Tickets",
            style: Styles.headLineStyle1,
          ),

          //margin
          const SizedBox(height: 20,),

          const AppTicketTabs(t1: "Upcoming", t2: "Previous"),

          //margin
          const SizedBox(height: 20,),

          Container(
            padding: const EdgeInsets.only(left: 15),
            child: FullTicketView(ticket: ticketList[0],),
          )

        ],
      ),
    );
  }
}
