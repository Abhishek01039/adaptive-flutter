import 'package:adaptive_layout/screens/people_detail.dart';
import 'package:adaptive_layout/widgets/people_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NarrowList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PeopleList(
        personCallBack: (person) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Scaffold(
                body: PeopleDetail(
                  person: person,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
