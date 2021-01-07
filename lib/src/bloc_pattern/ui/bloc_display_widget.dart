import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/bloc/count_bloc.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/components/count_view.dart';

import '../../../main.dart';

class BlocDisplayWidget extends StatefulWidget {
  BlocDisplayWidget({Key key}) : super(key: key);

  @override
  _BlocDisplayWidgetState createState() => _BlocDisplayWidgetState();
}

class _BlocDisplayWidgetState extends State<BlocDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bloc 패턴"),
      ),
      body: CountView(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              countBloc.add();
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              countBloc.subtract();
            },
          ),
        ],
      ),
    );
  }
}
