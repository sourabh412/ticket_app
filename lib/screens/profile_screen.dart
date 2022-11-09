import 'package:book_tickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          //margin
          const SizedBox(height: 40,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img_1.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              const SizedBox(width: 10,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  const SizedBox(height: 2,),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500
                    ),
                  ),
                  const SizedBox(height: 8,),

                  Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),

                        const SizedBox(width: 10,),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              const Spacer(),

              InkWell(
                onTap: (){
                  print("Edit button tapped");
                },
                child: Column(
                  children: [
                    Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              )
            ],
          ),

          //margin
          const SizedBox(height: 25,),

          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: const Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(width: 12,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new reward",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          "You have 150 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),

          //margin
          const SizedBox(height: 25,),

          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),

          //margin
          const SizedBox(height: 25,),

          const Center(
            child: Text(
              "192802",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 44,
              ),
            ),
          ),

          //margin
          const SizedBox(height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Miles accured",
                    style: Styles.textStyle.copyWith(
                      color: Colors.grey.shade500
                    ),
                  ),

                  //1
                  const SizedBox(height: 25,),

                  Text(
                    "23 042",
                    style: Styles.headLineStyle2.copyWith(
                      fontWeight: FontWeight.w500
                    ),
                  ),

                  const SizedBox(height: 5,),
                  Text(
                    "Miles",
                    style: Styles.textStyle.copyWith(
                        color: Colors.grey.shade500
                    ),
                  ),

                  //2
                  const SizedBox(height: 25,),

                  Text(
                    "24",
                    style: Styles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.w500
                    ),
                  ),

                  const SizedBox(height: 5,),
                  Text(
                    "Miles",
                    style: Styles.textStyle.copyWith(
                        color: Colors.grey.shade500
                    ),
                  ),

                  //3
                  const SizedBox(height: 25,),

                  Text(
                    "52 340",
                    style: Styles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.w500
                    ),
                  ),

                  const SizedBox(height: 5,),
                  Text(
                    "Miles",
                    style: Styles.textStyle.copyWith(
                        color: Colors.grey.shade500
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "23 May 2021",
                    style: Styles.textStyle.copyWith(
                        color: Colors.grey.shade500
                    ),
                  ),

                  //1
                  const SizedBox(height: 25,),

                  Text(
                    "Airline CO",
                    style: Styles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.w500
                    ),
                  ),

                  const SizedBox(height: 5,),
                  Text(
                    "Received From",
                    style: Styles.textStyle.copyWith(
                        color: Colors.grey.shade500
                    ),
                  ),

                  //2
                  const SizedBox(height: 25,),

                  Text(
                    "McDonald's",
                    style: Styles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.w500
                    ),
                  ),

                  const SizedBox(height: 5,),
                  Text(
                    "Received From",
                    style: Styles.textStyle.copyWith(
                        color: Colors.grey.shade500
                    ),
                  ),

                  //3
                  const SizedBox(height: 25,),

                  Text(
                    "Exuma",
                    style: Styles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.w500
                    ),
                  ),

                  const SizedBox(height: 5,),
                  Text(
                    "Received From",
                    style: Styles.textStyle.copyWith(
                        color: Colors.grey.shade500
                    ),
                  ),
                ],
              ),
            ],
          ),


          //margin
          const SizedBox(height: 25,),

          Center(
            child: Text(
              "How to get more miles",
              style: TextStyle(
                color: Styles.primaryColor,
                fontSize: 16,
              ),
            ),
          )

        ],
      ),
    );
  }
}
