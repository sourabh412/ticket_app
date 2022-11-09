import 'package:book_tickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:book_tickets/utils/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String t1, t2;
  const AppTicketTabs({Key? key, required this.t1, required this.t2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
          padding: const EdgeInsets.all(3.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFF4F6FD),
          ),
          child: Row(
            children: [
              Container(
                width: size.width*0.44,
                padding: const EdgeInsets.symmetric(vertical: 7),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                    color: Colors.white
                ),
                child: Center(
                  child: Text(
                    t1,
                    style: Styles.textStyle,
                  ),
                ),
              ),
              Container(
                width: size.width*0.44,
                padding: const EdgeInsets.symmetric(vertical: 7),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                ),
                child: Center(
                  child: Text(
                    t2,
                    style: Styles.textStyle,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
