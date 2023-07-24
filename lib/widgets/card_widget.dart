import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.imageUrl,
    required this.textFirst,
    required this.textSecond,
    required this.price,
    required this.time,
    required this.point,
  });

  final String imageUrl;
  final String textFirst;
  final String textSecond;
  final double price;
  final String time;
  final double point;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 110,
            width: 200,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 8, bottom: 0, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textFirst,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                Text(
                  textSecond,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    alignment: Alignment.center,
                    width: 180,
                    decoration: DottedDecoration(
                      strokeWidth: 0.8,
                      shape: Shape.line,
                      color: Colors.white,
                      linePosition: LinePosition.top,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(32),
                        ),
                      ),
                      child: Image.network(
                        'https://d21buns5ku92am.cloudfront.net/69274/images/392254-06b21419-d6d8-4fd1-ae80-4d6aa7434048_logo-5bc0ff-medium-1622463718.jpeg',
                        height: 30,
                        width: 30,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '₼ $price • $time min • :) $point',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
