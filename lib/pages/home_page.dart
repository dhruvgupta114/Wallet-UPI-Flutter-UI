// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappupi/utils/my_button.dart';
import 'package:walletappupi/utils/my_cards.dart';
import 'package:walletappupi/utils/my_listtile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple.shade400,
        child: Icon(
          Icons.monetization_on,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.pink[200],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 32,
                color: Colors.grey,
              ),
            )
          ]),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  // plus button
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Icon(Icons.add)),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5550.25,
                    cardNumber: 12345678,
                    expiryMonth: 18,
                    expiryYear: 24,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 215.15,
                    cardNumber: 12345678,
                    expiryMonth: 11,
                    expiryYear: 22,
                    color: Colors.blue[400],
                  ),
                  MyCard(
                    balance: 9465.00,
                    cardNumber: 12345678,
                    expiryMonth: 08,
                    expiryYear: 25,
                    color: Colors.cyan[400],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade800)),

            SizedBox(
              height: 10,
            ),
            //3 buttons --> send + pay + bills

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    buttonText: 'Send',
                    iconImagePath: 'assets/icons/send-money.png',
                  ),
                  //pay button
                  MyButton(
                    buttonText: 'Pay',
                    iconImagePath: 'assets/icons/credit-card.png',
                  ),

                  //bills button
                  MyButton(
                    buttonText: 'Bills',
                    iconImagePath: 'assets/icons/bill.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //columns --> stats + transcations
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTile(
                      iconImagePath: 'assets/icons/statistics.png',
                      tileTitle: 'Statistics',
                      tileSubTitle: 'Payments and Income'),
                  SizedBox(
                    height: 12,
                  ),
                  //transcation
                  MyListTile(
                      iconImagePath: 'assets/icons/transaction.png',
                      tileTitle: 'Transaction',
                      tileSubTitle: 'Transaction History')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
