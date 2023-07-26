import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class RestaurantsItem extends StatelessWidget {
  const RestaurantsItem(
      {super.key,
      required this.imageUrl,
      required this.name1,
      required this.name2,
      required this.isBackWhite});

  final String imageUrl;
  final String name1;
  final String name2;
  final bool isBackWhite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: Colors.grey[900],
        child: InkWell(
          highlightColor: Colors.black,
          onTap: () {},
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    height: 190,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    imageUrl,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child: Row(
                      children: [
                        const Card(
                          elevation: 2,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 3),
                            child: Text(
                              '6 KM QƏDƏR PULSUZ ÇATDIRILMA',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.favorite_border,
                          color: isBackWhite ? Colors.black : Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name1,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.start,
                              name2,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(6),
                            color: Colors.grey[700],
                          ),
                          width: 70,
                          height: 40,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              text: '35-45',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              children: [
                                TextSpan(
                                  text: '\nmin',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        decoration: DottedDecoration(
                          linePosition: LinePosition.bottom,
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.directions_bike,
                          color: Colors.blue,
                        ),
                        Text('   •   '),
                        Text('\$\$'),
                        Text(
                          '\$\$\$',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('   •   '),
                        Icon(
                          Icons.mood,
                          color: Colors.grey,
                          size: 20,
                        ),
                        Text(
                          '  9,2',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
