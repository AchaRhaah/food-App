
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
