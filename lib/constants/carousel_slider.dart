import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://consumer-static-assets.wolt.com/og_image_mall_web.jpg',
  'https://www.mowglistreetfood.com/wp-content/uploads/2023/01/Landing_image_Desktop.jpg',
  'https://imageproxy.wolt.com/venue/6385bbfee38b6034aa2f6456/73771254-0e79-11ee-aeb1-4a90e20b2a0a_wolt_market_1140x810_4__1_.png',
  'https://imageproxy.wolt.com/venue/6385bbfee38b6034aa2f6456/73771254-0e79-11ee-aeb1-4a90e20b2a0a_wolt_market_1140x810_4__1_.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzM3adpW3iILmW4Lq5otwBCUQhX2cKgN-jtg&usqp=CAU',
  'https://www.highlandeurope.com/wp-content/uploads/2019/06/Wolt-picture-off-their-site.jpg',
  'https://www.highlandeurope.com/wp-content/uploads/2019/06/Wolt-picture-off-their-site.jpg',
  'https://media-cdn.tripadvisor.com/media/photo-s/17/f5/39/f7/fooood-at-the-food-department.jpg',
  'https://wolt-promo.com/wp-content/uploads/2020/12/wolt-dostava-hrane-na-dom-1.jpg',
  'https://www.woltgear.dk/cdn/shop/products/LandscapeBannerFBInAppGoogle-IMG_7890_1946x.png?v=1664354846',
  'https://www.woltgear.dk/cdn/shop/products/LandscapeBannerFBInAppGoogle-IMG_7890_1946x.png?v=1664354846',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAn7SpOwOnY-IggD01j33pSGd6tPrZh6xmA_bIOA5psXz4XAug9HpkPmUYQpSjL87ssGM&usqp=CAU',
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
          child: Image.network(
            item,
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
        ),
      ),
    )
    .toList();
