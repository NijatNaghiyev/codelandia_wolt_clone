import 'package:codelandia_wolt_clone/screens/food_screen.dart';
import 'package:flutter/material.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1C1C1C),
            Colors.black,
          ],
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            buildFoodCategory(
              nameCategory: 'Restaurants',
              imageUrl:
                  'https://baccocharleston.com/wp-content/uploads/2023/05/Tips-for-keeping-track-of-calorie-while-still-enjoying-a-burger.jpg',
            ),
            buildFoodCategory(
              nameCategory: 'Groceries',
              imageUrl:
                  'https://thumbs.dreamstime.com/b/groceries-paper-bag-vector-illustration-97077851.jpg',
            ),
            buildFoodCategory(
              nameCategory: 'Alcohol',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0eqVaqBbwab4NkwSVk0w2cXR962mtyc-TdgfH5ZltHWauf1Dsg_W90b6TlZ56F-pbiCQ&usqp=CAU',
            ),
            buildFoodCategory(
              nameCategory: 'Flowers',
              imageUrl:
                  'https://www.theflowerconnection.co.uk/wp-content/uploads/2023/05/purple-flower.png',
            ),
            buildFoodCategory(
              nameCategory: 'General Stores',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTocp63tS6qLpZZINVkmnUtAro4ygCLgrEk3Q&usqp=CAU',
            ),
            buildFoodCategory(
              nameCategory: 'Health & Beauty',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRODsDNn0cTm0QLnXTmMcAstiIloLo0FFSUJA&usqp=CAU',
            ),
            buildFoodCategory(
              nameCategory: 'Pet supply',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkDwc0xqVeeRvTcqbY5elUPX0wKmu4tSk3AKEpY4nySPebQOPitlLqrEIoyYmjgnIR3cA&usqp=CAU',
            ),
            buildFoodCategory(
              nameCategory: 'Pharmacies',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhdxQ9vvhmbEZYBcY2MtAZSOgHBUr1n3iMFzMRFTLKsDnLLKtVibQmo89hvHtnH1G_pjc&usqp=CAU',
            ),
            buildFoodCategory(
              nameCategory: 'Wolt+',
              imageUrl:
                  'https://discovery-cdn.wolt.com/content_editor/articles/images/e8f01f36-2f6c-11ed-b690-823342362c1d_d04600af_0997_4cf5_80f5_798d32a5b994.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Padding buildFoodCategory({
    required String nameCategory,
    required String imageUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Builder(builder: (context) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FoodScreen(),
                ));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey,
                  ),
                  Positioned(
                    bottom: 4,
                    left: 4,
                    right: 4,
                    top: 4,
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(
                        imageUrl,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                nameCategory,
                textAlign: TextAlign.justify,
                softWrap: true,
                textHeightBehavior: const TextHeightBehavior(
                  applyHeightToFirstAscent: true,
                  applyHeightToLastDescent: false,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
