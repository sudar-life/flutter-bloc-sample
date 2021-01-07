import 'package:flutter/material.dart';

import '../components/count_view_stateless.dart';

class PlusStatefulDisplayWidget extends StatefulWidget {
  PlusStatefulDisplayWidget({Key key}) : super(key: key);

  @override
  _PlusStatefulDisplayWidgetState createState() =>
      _PlusStatefulDisplayWidgetState();
}

class _PlusStatefulDisplayWidgetState extends State<PlusStatefulDisplayWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("기본 Stateful"),
      ),
      body: CountViewStateless(count: count),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                count--;
              });
            },
          ),
        ],
      ),
    );
  }
}
