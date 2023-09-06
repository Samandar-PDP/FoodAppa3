class Meal {
  String title;
  int time;
  num price;
  String type;
  String image;
  List<String> ingredients;
  List<String> steps;

  Meal({
    required this.title,
    required this.time,
    required this.price,
    required this.type,
    required this.ingredients,
    required this.steps,
    required this.image,
  });
}

final meals = [
  [
    Meal(
        title: 'Osh',
        time: 40,
        price: 120,
        type: 'Hard',
        ingredients: ['Meat', 'Onion', 'Rice', 'Oil', 'Carrot'],
        steps: ['Put the oil', 'Make the vegetables', 'Clean the rice'],
        image: 'https://www.advantour.com/img/uzbekistan/cuisine/pilaf.jpg'),
    Meal(
        title: 'Makaron',
        time: 20,
        price: 50,
        type: 'Easy',
        ingredients: ['Egg', 'Onion', 'Rice', 'Oil'],
        steps: ['Put the oil', 'Make the vegetables', 'Clean the rice'],
        image:
            'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2021/02/05/Baked-Feta-Pasta-4_s4x3.jpg.rend.hgtvcom.616.493.suffix/1615916524567.jpeg'),
  ],
  [
    Meal(
        title: 'Mastava',
        time: 30,
        price: 20,
        type: 'Easy',
        ingredients: ['Rice', 'Water', 'Meat', 'Potato'],
        steps: ['Make delicious meal'],
        image:
            'https://3.bp.blogspot.com/_qJ2JCMap_Xw/SxJ-3-hvu0I/AAAAAAAAACk/8EshpwIb4uM/s1600/mastava.JPG'),
    Meal(
        title: "Sho'rva",
        time: 60,
        price: 25,
        type: 'Medium',
        ingredients: ['Meat', 'Water', 'Meat', 'Potato'],
        steps: ['Make delicious meal'],
        image:
            'https://www.people-travels.com/images/Uzbek%20food/Uzbek-soup-shurpa.jpg'),
  ],
  [
    Meal(
        title: 'Cabbage Salad',
        time: 15,
        price: 20,
        type: 'Easy',
        ingredients: ['Cabbage', 'Water', 'Oil'],
        steps: ['Make delicious meal'],
        image:
            'https://www.acouplecooks.com/wp-content/uploads/2020/06/Cabbage-Salad-003.jpg'),
  ],
  [
    Meal(
        title: 'Hambuger',
        time: 5,
        price: 30,
        type: 'Medium',
        ingredients: ['Cheese', 'Bread', 'Meat', 'Tomato'],
        steps: ['Make delicious meal'],
        image:
            'https://www.thecookierookie.com/wp-content/uploads/2023/04/featured-stovetop-burgers-recipe-500x500.jpg'),
  ],
  [
    Meal(
        title: 'Tea',
        time: 3,
        price: 1,
        type: 'Easy',
        ingredients: ['Tea leaf'],
        steps: ['Make delicious drink'],
        image:
            'https://domf5oio6qrcr.cloudfront.net/medialibrary/8468/Tea.jpg'),
  ],
  [
    Meal(
        title: 'Napaleon',
        time: 40,
        price: 20,
        type: 'Medium',
        ingredients: ['Flour'],
        steps: ['Bilgani qil'],
        image:
            'https://hips.hearstapps.com/hmg-prod/images/220713-delish-seo-01-napoleon-cake-horizontal-v5-081-eb-1658416382.jpg?crop=0.981xw:0.967xh;0.0187xw,0.0326xh&resize=1200:*'),
  ],
];
