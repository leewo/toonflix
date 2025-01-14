import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title, number, currency;
  final Widget icon;
  final bool invertedColor;
  final Color bgColor = const Color(0xFF202123);
  final int index;

  const MyCard(
      {super.key,
      required this.title,
      required this.number,
      required this.currency,
      required this.icon,
      required this.invertedColor,
      required this.index});
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, (index * -20)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: invertedColor ? Colors.white : bgColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: invertedColor ? bgColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        number,
                        style: TextStyle(
                          color: invertedColor ? bgColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        currency,
                        style: TextStyle(
                          color: invertedColor
                              ? bgColor
                              : Colors.white.withAlpha(150),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Transform.translate(
                offset: Offset(10, 30),
                child: Transform.scale(
                  scale: 2,
                  child: icon,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
