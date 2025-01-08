import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title, number, currency;
  final Color bgColor, fgColor;
  final Widget icon;

  const MyCard({
    super.key,
    required this.title,
    required this.number,
    required this.currency,
    required this.bgColor,
    required this.fgColor,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(15)),
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
                    color: fgColor,
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
                        color: fgColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      currency,
                      style: TextStyle(
                        color: fgColor.withAlpha(150),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            icon,
          ],
        ),
      ),
    );
  }
}
