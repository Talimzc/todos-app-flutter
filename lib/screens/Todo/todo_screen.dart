import 'package:flutter/material.dart';
import 'package:todos_app/constants.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
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
              ],
            ),
          )),
        ));
  }
}
