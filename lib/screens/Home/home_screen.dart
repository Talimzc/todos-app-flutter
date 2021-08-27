import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todos_app/constants.dart';
import 'package:todos_app/screens/AddTodo/add_todo_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int nTodos = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final title = Column(
      children: <Widget>[
        Text("Todo.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kBlueColor,
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
            )),
        Divider(
          thickness: 2.0,
          color: kBlueColor,
        )
      ],
    );

    final subtitle = Text(
      "Hey, Sthalin",
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: kYellowColor),
    );

    final button_add = GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddTodoScreen()),
        );
      },
      child: Container(
        width: 30,
        height: 30,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(color: kYellowColor, shape: BoxShape.circle),
        child: SvgPicture.asset(
          'assets/icons/add.svg',
          color: kWhiteColor,
        ),
      ),
    );

    final subtitleWButton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [subtitle, button_add],
      ),
    );

    final containerAddTodo = Container(
      height: 450,
      width: double.infinity,
      child: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddTodoScreen()),
            );
          },
          child: Container(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 32,
                  width: 32,
                  child: SvgPicture.asset(
                    'assets/icons/add.svg',
                    color: kYellowColor,
                  ),
                ),
                Text(
                  "Add Todo",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kYellowColor,
                      fontSize: 28),
                )
              ],
            ),
          ),
        ),
      ),
    );

    final containerListTodo = Container(
      height: 450,
      width: double.infinity,
      child: Center(
        child: Container(
          child: Text(
            "List of Todos Here",
            style:
                TextStyle(fontWeight: FontWeight.w300, color: kTextThinColor),
          ),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                title,
                SizedBox(
                  height: 15,
                ),
                (nTodos > 0) ? subtitleWButton : subtitle,
                SizedBox(
                  height: 15,
                ),
                (nTodos > 0) ? containerListTodo : containerAddTodo,
              ],
            ),
          )),
        ));
  }
}
