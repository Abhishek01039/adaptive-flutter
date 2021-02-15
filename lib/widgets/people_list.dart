import 'package:adaptive_layout/src/people.dart';
import 'package:flutter/material.dart';

class PeopleList extends StatelessWidget {
  const PeopleList({Key key, @required this.personCallBack}) : super(key: key);

  final Function(Person) personCallBack;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: people
          .map<Widget>(
            (e) => ListTile(
              leading: Image.network(e.picture),
              onTap: () => personCallBack(e),
              title: Text(
                e.name,
              ),
            ),
          )
          .toList(),
    );
  }
}
