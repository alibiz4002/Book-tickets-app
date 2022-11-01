import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(20)),
          Text('What are\nyou looking for?',
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(40)),
         const  AppTicketTabs(firstTab: 'Airline Tickets',secondTab: 'Hotels',),
          Gap(AppLayout.getHeight(25)),
          const IconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(AppLayout.getHeight(20)),
          const IconText(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(15),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child: Center(
              child: Text('Find tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextwidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                  color: Colors.white,
                ),
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(190),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image/sit.jpg'))),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Text(
                    'Our protagonist could not so much as a whisper.',
                    style: Styles.headLineStyle2,
                  )
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(174),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount\nfor survey',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                                'Take the surveyabout our survices andget discount',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -40,
                        right: -45,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEC6545),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    child: Column(children: [
                      Text(
                        'Take love',
                        style: Styles.headLineStyle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Gap(AppLayout.getHeight(15)),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: '🦍', style: TextStyle(fontSize: 28)),
                        TextSpan(text: '🐓', style: TextStyle(fontSize: 50)),
                        TextSpan(text: '🦬', style: TextStyle(fontSize: 28)),
                      ]))
                    ]),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}