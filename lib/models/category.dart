class Category {
  final String name, iconPath;

  Category({
    required this.name,
    required this.iconPath,
  });
}

final categoriesList = [
  Category(name: 'Burger', iconPath: 'assets/icons/pizza.svg'),
  Category(name: 'Pizza', iconPath: 'assets/icons/pizza.svg'),
  Category(name: 'Salad', iconPath: 'assets/icons/chicken.svg'),
  Category(name: 'Chicken', iconPath: 'assets/icons/chicken.svg'),
];
