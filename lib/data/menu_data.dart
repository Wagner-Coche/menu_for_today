import 'package:menu_for_today/models/menu.dart';

final _firstMenu = Menu(
  image: "assets/images/IMG-20220616-WA0006.jpg",
  title: "Verry Berry",
  description: "Cucumbers, tornatces, basil, barley sprout, ham, sbrawberries, sesame and sesame oil",
  price: 12
);

final _secondMenu = Menu(
  image: "assets/images/IMG-20220616-WA0017.jpg",
  title: "Grilled Steak",
  description: "Grilled steak, tomatoes, basil, lettuse, parsley, roasted nuts, black peoper sesame oil",
  price: 15
);

final _thirdMenu = Menu(
  image: "assets/images/IMG-20220616-WA0044.jpg",
  title: "Asparagus Salad",
  description: "Asparagus, lettuse, corn, basil, cheese, grilled ham, boiled eggs, olive end sesame oil",
  price: 9
);

final _fourthMenu = Menu(
  image: "assets/images/IMG-20220616-WA0053.jpg",
  title: "Shrimp Salad",
  description: "Shrimps, tomatoes, basil, beil peppers, onion, eggs, mayonnaise, black pepper, olive end sesame oil",
  price: 7
);

final _fifthMenu = Menu(
  image: "assets/images/IMG-20220616-WA0058.jpg",
  title: "Grilled Chicken",
  description: "Grilled Chicken, tomatoes, pepper, vegetables, basil, mayonnaise, black pepper",
  price: 22
);

final _sixthMenu = Menu(
  image: "assets/images/IMG-20220616-WA0038.jpg",
  title: "Vegetables",
  description: "Vegetables, steak, tomatoes, basil, lettuse, parsley, roasted nuts, black peoper sesame oil",
  price: 14
);


Menu get firstMenu => _firstMenu;
Menu get secondMenu => _secondMenu;
Menu get thirdMenu => _thirdMenu;
Menu get fourthMenu => _fourthMenu;
Menu get fifthMenu => _fifthMenu;
Menu get sixthMenu => _sixthMenu;
