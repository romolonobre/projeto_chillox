import 'package:flutter/material.dart';

class Burger {
  final String name;
  final String imageUrl;
  final String category;
  final String duration;
  final String review;
  final Icon icon;

  Burger(
      {required this.name,
      required this.imageUrl,
      required this.category,
      required this.duration,
      required this.review,
      required this.icon});
}

final bugersList = [
  Burger(
      name: 'Chillox Burger',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4yvSNkNwhobsJUUhRp0KVjaXMEiepIHPKZQ&usqp=CAU.png',
      category: 'Burges - Fast Food',
      duration: '10 min',
      review: '4.8',
      icon: const Icon(Icons.star)),
  Burger(
      name: 'Kombo Chillox Burger ',
      imageUrl:
          'https://post.healthline.com/wp-content/uploads/2020/01/impossible-burger-1200x628-facebook.jpg',
      category: 'Burges - Fast Food',
      duration: '25 min',
      review: '4.9',
      icon: const Icon(Icons.star)),
  Burger(
    name: 'Chillox Gourmet',
    imageUrl:
        'https://assets.cntraveller.in/photos/60ba26c0bfe773a828a47146/master/pass/Burgers-Mumbai-Delivery.jpg',
    category: 'Burges - Fast Food',
    duration: '14 min',
    review: '4.6',
    icon: const Icon(Icons.star),
  ),
  Burger(
    name: 'Chillox Burger',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4yvSNkNwhobsJUUhRp0KVjaXMEiepIHPKZQ&usqp=CAU.png',
    category: 'Burges - Fast Food',
    duration: '10 min',
    review: '4.8',
    icon: const Icon(Icons.star),
  ),
];
