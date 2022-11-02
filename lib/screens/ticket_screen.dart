import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text('Tickets', style: Styles.headLineStyle1),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(
              firstTab: 'Upcoming',
              secondTab: 'Previous',
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(1),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(20)),
              color: Colors.white,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                      firstText: 'Flutter DB',
                      secondText: 'Passenger',
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                      firstText: '5221 74684',
                      secondText: 'Passport',
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                AppLayoutBuilderWidget(
                  sections: 15,
                  isColor: false,
                  width: 5,
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                      firstText: '8893 4775 33',
                      secondText: 'Number of E-ticket',
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                      firstText: 'B2SE34',
                      secondText: 'Booking code',
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                AppLayoutBuilderWidget(
                  sections: 15,
                  isColor: false,
                  width: 5,
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ColumnLayout(
                    //   alignment: CrossAxisAlignment.start,
                    //   isColor: false,
                    //   firstText: '8893 4775 33',
                    //   secondText: 'Payment method',
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/image/visa.png', scale: 11),
                            Text(
                              ' ***2464',
                              style: Styles.headLineStyle3,
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Payment method',
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                    const ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                      firstText: '\$249.99',
                      secondText: 'Price',
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ]),
    );
  }
}
