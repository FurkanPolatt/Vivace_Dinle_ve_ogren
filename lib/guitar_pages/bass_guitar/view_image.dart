import 'package:flutter/material.dart';

class AppBanner {
  final int id;
  final String title;
  final String image;

  AppBanner(
      {required this.id,
      required this.title,
      required this.image,
      required DecorationImage images});
}

List<AppBanner> appBannerList = [
  AppBanner(
    id: 1,
    title: 'TİTLE',
    images: DecorationImage(
      image: AssetImage('assets/background/bass_guitar.jpg'),
      fit: BoxFit.cover,
    ),
    image: 'assets/background/bass_guitar.jpg',
  ),
  AppBanner(
    id: 2,
    title: 'TİTLE',
    images: DecorationImage(
      image: AssetImage('assets/background/classic_guitar.jpg'),
      fit: BoxFit.cover,
    ),
    image: 'assets/background/classic_guitar.jpg',
  ),
  AppBanner(
    id: 3,
    title: 'TİTLE',
    images: DecorationImage(
      image: AssetImage('assets/background/bass_guitar.jpg'),
      fit: BoxFit.cover,
    ),
    image: 'assets/background/bass_guitar.jpg',
  ),
  AppBanner(
    id: 4,
    title: 'TİTLE',
    images: DecorationImage(
      image: AssetImage('assets/background/bass_guitar.jpg'),
      fit: BoxFit.cover,
    ),
    image: 'assets/background/bass_guitar.jpg',
  ),
];
