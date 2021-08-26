import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todos_app/screens/Categories/categories_screen.dart';
import 'package:todos_app/screens/Home/home_screen.dart';
import 'package:todos_app/screens/Settings/settings_screen.dart';
import 'package:todos_app/screens/Todo/todo_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> widgetScreens = [
    HomeScreen(),
    TodoScreen(),
    CategoriesScreen(),
    SettingsScreen()
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: widgetScreens[selected],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 5),
        decoration: BoxDecoration(color: Colors.transparent),
        child: Row(
          children: <Widget>[
            navItem('assets/icons/home.svg', 0),
            navItem('assets/icons/flag.svg', 1),
            navItem('assets/icons/categories.svg', 2),
            navItem('assets/icons/settings.svg', 3)
          ],
        ),
      ),
    );
  }

  Widget navItem(String icon, int pos) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selected = pos;
          });
        },
        child: Container(
          height: 50,
          padding: EdgeInsets.all(16.5),
          width: (MediaQuery.of(context).size.width / 4) - 8,
          decoration: BoxDecoration(
              color: (pos == selected) ? Colors.white : Colors.transparent,
              boxShadow: [
                BoxShadow(
                    color: (pos == selected)
                        ? Colors.grey.withOpacity(0.4)
                        : Colors.transparent,
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3))
              ],
              shape: BoxShape.circle),
          child: SvgPicture.asset(
            icon,
            color: Colors.black.withOpacity(pos != 2 ? .5 : 1),
            fit: BoxFit.contain,
          ),
        ));
  }
}
