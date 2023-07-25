import 'package:flutter/material.dart';

class RestaurantsWidget extends StatelessWidget {
  const RestaurantsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 12),
      child: SizedBox(
        height: 190,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            RestaurantWidget(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa_caSh10VMqdZiEdpoCwQ6ey6Qd3A8VZZqA&usqp=CAU',
                name: 'McDonald\'s'),
            RestaurantWidget(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG3EOlOTiquLVORv4dKphi1_WYcId0XvVcqmmokamTxtboPKDDCMqWfcftSLJotMHIvp0&usqp=CAU',
                name: 'KFC'),
            RestaurantWidget(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsMWxnO0HvDW1Rj1LzI4m3gCcwaDLL_hRBPA&usqp=CAU',
                name: 'Papa Johns'),
            RestaurantWidget(
                imageUrl:
                    'https://mir-s3-cdn-cf.behance.net/projects/404/016d8b54436559.Y3JvcCw2NzUsNTI4LDE3NiwxMjM.jpg',
                name: 'FRYDAY'),
            RestaurantWidget(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa_caSh10VMqdZiEdpoCwQ6ey6Qd3A8VZZqA&usqp=CAU',
                name: 'McDonald\'s'),
            RestaurantWidget(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa_caSh10VMqdZiEdpoCwQ6ey6Qd3A8VZZqA&usqp=CAU',
                name: 'McDonald\'s'),
          ],
        ),
      ),
    );
  }
}

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[800],
        ),
        height: 190,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              fit: BoxFit.cover,
              height: 140,
              width: double.infinity,
              imageUrl,
            ),
            const SizedBox(height: 10),
            Text(
              '    $name',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
