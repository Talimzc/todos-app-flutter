import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todos_app/constants.dart';
import 'package:todos_app/screens/AddCategory/add_category_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
      "Categories",
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: kYellowColor),
    );
    final categoriesList = Container(
      height: 300,
      width: double.infinity,
      child: Center(
        child: Container(
          child: Text(
            "List Categories Here",
            style:
                TextStyle(fontWeight: FontWeight.w300, color: kTextThinColor),
          ),
        ),
      ),
    );

    final subtitleWButton = GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddCategoryScreen()),
        );
      },
      child: Container(
        child: Container(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                  'assets/icons/add.svg',
                  color: kYellowColor,
                ),
              ),
              Text(
                "New Category",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kYellowColor,
                    fontSize: 16),
              )
            ],
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
                categoriesList,
                SizedBox(
                  height: 15,
                ),
                subtitleWButton
              ],
            ),
          )),
        ));
  }
}
