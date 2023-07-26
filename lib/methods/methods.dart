import 'package:flutter/material.dart';

import '../screens/food_screen.dart';

Padding buildTextAndButton({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(top: 12, bottom: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        FilledButton(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(
              Colors.blueGrey[900],
            ),
          ),
          onPressed: () {},
          child: const Text(
            'See all',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Padding buildOutlinedButton({required String name}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: Builder(builder: (context) {
      return OutlinedButton(
        style: const ButtonStyle(
          minimumSize: MaterialStatePropertyAll(
            Size(0, 0),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FoodScreen(),
              ));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Text(
            name,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
      );
    }),
  );
}

AppBar buildAppBarFirst() {
  return AppBar(
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.transparent,
    backgroundColor: const Color(0xFF1C1C1C),
    elevation: 0,
    leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.add_home_work_outlined,
          color: Colors.blue,
        )),
    title: const Text(
      'Ev, Qara Qarayev 59, mənzil 8',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 15,
      ),
    ),
  );
}
