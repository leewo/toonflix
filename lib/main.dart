import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/card.dart';

// class Player {
//   String name;
//   Color color;
//   Player(this.name, {required this.color});
// }

void main() {
  // var p1 = Player('bbb', color: Colors.blue);
  // print(p1.name);
  // print(p1.color);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withAlpha(150),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withAlpha(150),
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '\$5 194 382',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    title: 'Transfer',
                    fgColor: Colors.black,
                    bgColor: Color(0xFFF2B33A),
                  ),
                  MyButton(
                    title: 'Request',
                    fgColor: Colors.white,
                    bgColor: Color(0xFF1F2123),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withAlpha(150),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              MyCard(
                title: 'Euro',
                number: '6 428',
                currency: 'EUR',
                bgColor: Colors.white,
                fgColor: Color(0xFF202123),
                icon: Icon(
                  Icons.euro,
                  color: Color(0xFF202123),
                  size: 80,
                ),
              ),
              MyCard(
                title: 'Dollar',
                number: '4 428',
                currency: 'USD',
                bgColor: Color(0xFF202123),
                fgColor: Colors.white,
                icon: Icon(
                  Icons.attach_money_outlined,
                  color: Colors.white,
                  size: 80,
                ),
              ),
              MyCard(
                title: 'Won',
                number: '9 122 001',
                currency: 'KRW',
                bgColor: Colors.white,
                fgColor: Color(0xFF202123),
                // icon: Icon('~/assets/south-korean-won-krw-icon.svg'),
                icon: Icon(
                  Icons.attach_money_outlined,
                  color: Color(0xFF202123),
                  size: 80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
