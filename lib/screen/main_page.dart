import 'package:flutter/material.dart';
import 'package:food_app/my_theme.dart';
import 'package:food_app/screen/category_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final screens = [
    CategoryPage(),
    Text('Favorite')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
      ),
      body: screens[_selectedIndex],
      drawer: Drawer(
        child: Column(children: [
          Image.network('https://cdn.sanity.io/images/kts928pd/production/7ab5def0ab1dad26a90bc35cb7eed9e628f7f201-430x430.png',width: double.infinity,height: 250,fit: BoxFit.cover,),
          SwitchListTile(value: MyTheme.isDark, onChanged: (changed) {
            setState(() {
              MyTheme.isDark = changed;
              print(MyTheme.isDark);
            });
          },title: Text(MyTheme.isDark ? "Dark" : "Light",style: TextStyle(fontSize: 20),))
        ],),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: ''
          ),
        ],
      ),
    );
  }
}
