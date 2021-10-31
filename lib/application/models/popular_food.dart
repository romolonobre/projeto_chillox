class PopularFood {
  final String name;
  final String imageUrl;
  final String subdescription;
  final String price;
  final String delivery;
  final String review;
  final String deliverytime;
  final String fullDescription;

  PopularFood(
      {required this.name,
      required this.imageUrl,
      required this.subdescription,
      required this.price,
      required this.delivery,
      required this.review,
      required this.deliverytime,
      required this.fullDescription});
}

var popularfoodList = [
  PopularFood(
      name: 'Beef Burger',
      imageUrl: 'assets/images/burger.png',
      subdescription: 'Juicy, big, loaded with toppings',
      price: '\$14.99',
      delivery: 'Free',
      review: '4.5',
      deliverytime: '12 min',
      fullDescription:
          'High quality beef medium to well with cheese and bacon on a multigrain bun." "A huge single or triple burger with all the fixings, cheese, lettuce, tomato, onions and special sauce or mayonnaise'),
  PopularFood(
      name: 'Burger Chillox',
      imageUrl: 'assets/images/burger_king.png',
      subdescription: 'Chicken Patty and special sauce',
      price: '\$23.49',
      delivery: '\$2.99',
      review: '5.0',
      deliverytime: '15 min',
      fullDescription:
          'Tasty, delicious, and has me craving more on the first bite.” to “Juicy, mouthwatering, tasty, and everything you’d ever want to savor'),
  PopularFood(
      name: 'Chillox Nachos',
      imageUrl: 'assets/images/nachos.png',
      subdescription: 'Chicken Patty and special sauce',
      price: '\$32.39',
      delivery: '\$5.99',
      review: '4.3',
      deliverytime: '20 min',
      fullDescription:
          'Tasty, delicious, and has me craving more on the first bite.” to “Juicy, mouthwatering, tasty, and everything you’d ever want to savor'),
  PopularFood(
      name: 'Chicken Burger',
      imageUrl: 'assets/images/burger.png',
      subdescription: 'Chicken Patty and special sauce',
      price: '\$12.39',
      delivery: '\$2.99',
      review: '4.3',
      deliverytime: '12 min',
      fullDescription:
          'Tasty, delicious, and has me craving more on the first bite.” to “Juicy, mouthwatering, tasty, and everything you’d ever want to savor'),
  PopularFood(
      name: 'Chillox Nachos',
      imageUrl: 'assets/images/nachos.png',
      subdescription: 'Chicken Patty and special sauce',
      price: '\$32.39',
      delivery: '\$5.99',
      review: '4.6',
      deliverytime: '12 min',
      fullDescription:
          'Tasty, delicious, and has me craving more on the first bite.” to “Juicy, mouthwatering, tasty, and everything you’d ever want to savor'),
  PopularFood(
      name: 'Chicken Burger',
      imageUrl: 'assets/images/burger.png',
      subdescription: 'Chicken Patty and special sauce',
      price: '\$12.39',
      delivery: '\$2.99',
      review: '4.5',
      deliverytime: '12 min',
      fullDescription:
          'Tasty, delicious, and has me craving more on the first bite.” to “Juicy, mouthwatering, tasty, and everything you’d ever want to savor'),
  PopularFood(
      name: 'Chillox Nachos',
      imageUrl: 'assets/images/nachos.png',
      subdescription: 'Chicken Patty and special sauce',
      price: '\$32.39',
      delivery: '\$5.99',
      review: '4.5',
      deliverytime: '12 min',
      fullDescription:
          'Tasty, delicious, and has me craving more on the first bite.” to “Juicy, mouthwatering, tasty, and everything you’d ever want to savor'),
  PopularFood(
      name: 'Chicken Burger',
      imageUrl: 'assets/images/burger.png',
      subdescription: 'Chicken Patty and special sauce',
      price: '\$12.39',
      delivery: '\$2.99',
      review: '4.5',
      deliverytime: '12 min',
      fullDescription:
          'Tasty, delicious, and has me craving more on the first bite.” to “Juicy, mouthwatering, tasty, and everything you’d ever want to savor'),
];
