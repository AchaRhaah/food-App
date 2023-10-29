import 'package:flutter/foundation.dart';

class WelcomeContent {
  String image;
  String title;

  WelcomeContent({required this.image, required this.title});
}

List<WelcomeContent> contents = [
  WelcomeContent(
      image: 'assets/images/welcome_img_1.jpg',
      title: "Hand-pickle high quality snacks."),
  WelcomeContent(
      image: 'assets/images/welcome_img_2.jpg',
      title: "Shop global. Mind-blownly affordable."),
  WelcomeContent(
      image: 'assets/images/welcome_img_3.png',
      title: "Deliver on the promise of time."),
];

class MealInfo {
  late String image;
  late String category;
  late String text;

  MealInfo({required this.image, required this.category, required this.text});
}

List<MealInfo> mealInfo = [
  MealInfo(
    image:
        'assets/images/breakfast1.jpg', // Make sure to provide the correct file extension
    category: 'Breakfast',
    text: 'Berakfast delight',
  ),
  MealInfo(
      image: 'assets/images/desert3.jpg',
      category: 'Desert',
      text: 'Sweet treats'),
  MealInfo(
      image: 'assets/images/salad1.jpg',
      category: 'Salad',
      text: 'Health is Wealth'),
  MealInfo(
      image: 'assets/images/burger1.jpg', category: 'Burger', text: 'Burger'),
  MealInfo(
      image: 'assets/images/coffe1.jpg', category: 'coffe', text: 'coffee'),
  MealInfo(
      image: 'assets/images/caglar-araz-XLB5ICg_pJk-unsplash.jpg',
      category: 'random',
      text: 'Adventure')
];

class Menu {
  final List<Category> category;

  Menu({required this.category});
}

class Categories {
  final String name;
  final List<SubCategory> subCategories;
  Categories({required this.name, required this.subCategories});
}

class SubCategory {
  final String name;
  final String coverPage;
  final List<Food> foods;

  SubCategory(
      {required this.name, required this.coverPage, required this.foods});
}

class Food {
  final String name;
  final double price;
  final int prepTime;
  final double stars;

  Food(
      {required this.name,
      required this.price,
      required this.prepTime,
      required this.stars});
}

List<Menu> menu = [
  Menu(category: [
    Categories(name: 'Daily Quest', subCategories: [
      SubCategory(name: 'Guilty Pleasure', coverPage: coverPage, foods: foods),
      SubCategory(name: 'Breakfast', coverPage: coverPage, foods: foods)
    ])
  ])
];
