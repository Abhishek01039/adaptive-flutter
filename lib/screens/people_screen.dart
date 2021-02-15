import 'package:adaptive_layout/widgets/wide_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/narrow_list.dart';

class PeopleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adaptive Screen'),
      ),
      body: LayoutBuilder(builder: (context, contsraints) {
        if (contsraints.maxHeight < 600) {
          return WideList();
        }
        return NarrowList();
      }),
    );
  }
}
