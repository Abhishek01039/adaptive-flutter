import 'package:adaptive_layout/src/people.dart';
import 'package:flutter/material.dart';

class PeopleDetail extends StatelessWidget {
  final Person person;

  const PeopleDetail({Key key, this.person}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Name is: " + person.name),
          Text("Phone number is: " + person.phone),
          Text("Age is: " + person.age.toString()),
          Text("Eye Color is :" + person.eyeColor),
        ],
      ),
    );
  }
}
