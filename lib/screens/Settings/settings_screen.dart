import 'package:flutter/material.dart';
import 'package:todos_app/constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
      "Settings",
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: kYellowColor),
    );
    final containerSettings = Container(
      height: 300,
      width: double.infinity,
      child: Center(
        child: Container(
          child: Text(
            "Container Settings Here",
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
                subtitle,
                SizedBox(
                  height: 15,
                ),
                containerSettings
              ],
            ),
          )),
        ));
  }
}
