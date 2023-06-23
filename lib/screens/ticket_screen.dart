import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/ticket_view.dart';
import 'package:flutter_practice/utils/app_info_list.dart';
// import 'package:flutter_practice/utils/app_layout.dart';
import 'package:flutter_practice/utils/app_styles.dart';
import 'package:flutter_practice/widgets/column_layout.dart';
import 'package:flutter_practice/widgets/layout_builder_widget.dart';
import 'package:flutter_practice/widgets/ticket_tabs.dart';

import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              const SizedBox(
                height: 25,
              ),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "5221 364869",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      section: 15,
                      isColor: false,
                      width: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "364738 28274478",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      section: 15,
                      isColor: false,
                      width: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2462",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),

              // barcode
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://pub.dev/packages/barcode_widget',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            top: 250,
            left: 27,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            top: 250,
            right: 27,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
