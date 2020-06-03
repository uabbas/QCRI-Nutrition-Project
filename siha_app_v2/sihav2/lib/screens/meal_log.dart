import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:org/constants.dart';
import 'package:org/screens/food_log.dart';
import 'package:org/widgets/meal_widget.dart';

class MealLog extends StatefulWidget {
  @override
  _MealLogState createState() => _MealLogState();
}

class _MealLogState extends State<MealLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainTheme,
        title: Image.asset(
          kAppBarLogo,
          height: 100,
          width: 100,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Text(
              'SELECT MEAL',
              style: TextStyle(
                  color: kMainTheme, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MealWidget(
                meal: 'BREAKFAST',
                image: 'images/breakfast.png',
              ),
              MealWidget(
                meal: 'LUNCH',
                image: 'images/lunch.png',
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MealWidget(
                meal: 'DINNER',
                image: 'images/dinner.png',
              ),
              MealWidget(
                meal: 'SNACK',
                image: 'images/snack.png',
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kMainTheme,
            ),
            margin: EdgeInsets.symmetric(vertical: 20),
            child: FlatButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodLog()),
              ),
              child: Text(
                'NEXT',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}