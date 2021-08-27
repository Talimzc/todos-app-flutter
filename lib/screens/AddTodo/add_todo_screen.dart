import 'package:flutter/material.dart';
import 'package:todos_app/constants.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  _AddTodoScreenState createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
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
    final subtitle = Text(
      "Add Todo",
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: kYellowColor),
    );

    final containerForm = Container(
      height: 300,
      width: double.infinity,
      child: Center(
        child: Container(
          child: Text(
            "Form Todos Here",
            style:
                TextStyle(fontWeight: FontWeight.w300, color: kTextThinColor),
          ),
        ),
      ),
    );

    final doneButton = GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadius),
            color: kBlueColor),
        child: Center(
          child: Text(
            "DONE",
            style: TextStyle(fontWeight: FontWeight.w600, color: kWhiteColor),
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
                subtitle,
                SizedBox(
                  height: 15,
                ),
                containerForm,
                SizedBox(
                  height: 15,
                ),
                doneButton
              ],
            ),
          )),
        ));
  }
}
