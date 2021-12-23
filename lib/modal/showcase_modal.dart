// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class Showcase {
  final String image;
  final String title;
  final String owner;

  Showcase({
   required this.image,
   required this.title,
   required this.owner,
});
}

List<Showcase> showcases = [
  Showcase(
      image: 'assets/images/list1.jpg',
      title: 'Leto Caffe, London, United Kingdom',
      owner: 'Tasteme'),
  Showcase(
      image: 'assets/images/list2.jpg',
      title: 'Guess this cocktail',
      owner: 'Tasteme'),
  Showcase(
    image: 'assets/images/list3.jpg',
    title: 'Italian dish, Roma',
    owner: 'Tasteme',
  ),
  Showcase(
    image: 'assets/images/list4.jpg',
    title: 'Apple pie, Austria',
    owner: 'Tasteme',
  ),
  Showcase(
      image: 'assets/images/list5.jpg',
      title: 'Spinat smoothie, Mexico',
      owner: 'Tasteme'),
  Showcase(
    image: 'assets/images/list6.jpg',
    title: 'Simple fruit salad',
    owner: 'Tasteme',
  ),
];