import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 172 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            Blue part of the card/tickte
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                            height: AppLayout.getHeight(24),
                            child: AppLayoutBuilderWidget(
                              sections: 10,
                              width: 3,
                            )),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : Color(0xFF8ACCF7)),
                          ),
                        ),
                      ])),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                      Text(ticket['flying_time'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['to']['name'],
                              textAlign: TextAlign.end,
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4)),
                    ],
                  )
                ],
              ),
            ),
            /*
            Orange part of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: AppLayout.getWidth(0),
                    color: Colors.white,
                  ),
                  right: BorderSide(
                    width: AppLayout.getWidth(0),
                    color: Colors.white,
                  ),
                  bottom: BorderSide(
                      width: AppLayout.getWidth(0),
                      color:
                          isColor == null ? Styles.orangeColor : Colors.white),
                  top: BorderSide(
                    width: AppLayout.getWidth(0),
                    color: isColor == null ? Styles.orangeColor : Colors.white,
                  ),
                ),
                color: isColor == null ? Styles.orangeColor : Colors.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                            )),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(6.0)),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                height: AppLayout.getHeight(1),
                                width: AppLayout.getWidth(5),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.grey.shade300,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    )),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      )),
                    ),
                  ]),
            ),

            /*
            Last orange part of the card/ticket
             */

            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null
                      ? AppLayout.getHeight(21)
                      : AppLayout.getHeight(0)),
                  bottomRight: Radius.circular(isColor == null
                      ? AppLayout.getHeight(21)
                      : AppLayout.getHeight(0)),
                ),
              ),
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(16),
                  top: AppLayout.getHeight(10),
                  right: AppLayout.getWidth(16),
                  bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                        firstText: ticket['date'],
                        secondText: 'Date',
                      ),
                      ColumnLayout(
                        alignment: CrossAxisAlignment.center,
                        isColor: false,
                        firstText: ticket['departure_time'],
                        secondText: 'Departure time',
                      ),
                      ColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                        firstText: ticket['number'].toString(),
                        secondText: 'Number',
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
