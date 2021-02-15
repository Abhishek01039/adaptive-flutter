import 'package:adaptive_layout/screens/people_detail.dart';
import 'package:adaptive_layout/src/people.dart';
import 'package:adaptive_layout/widgets/people_list.dart';
import 'package:flutter/material.dart';

class WideList extends StatefulWidget {
  @override
  _WideListState createState() => _WideListState();
}

class _WideListState extends State<WideList> {
  Person _person;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PeopleList(
            personCallBack: (person) => setState(() {
              _person = person;
            }),
          ),
          flex: 2,
        ),
        Expanded(
          child: _person == null
              ? Placeholder()
              : PeopleDetail(
                  person: _person,
                ),
          flex: 3,
        ),
      ],
    );
  }
}
