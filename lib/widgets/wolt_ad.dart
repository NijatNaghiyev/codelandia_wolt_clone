import 'package:flutter/material.dart';

class WoltAd extends StatelessWidget {
  const WoltAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Image.network(
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
              'https://discovery-cdn.wolt.com/content_editor/articles/images/e8f01f36-2f6c-11ed-b690-823342362c1d_d04600af_0997_4cf5_80f5_798d32a5b994.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
