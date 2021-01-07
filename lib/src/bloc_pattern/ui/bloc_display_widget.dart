import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/bloc/count_bloc.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/components/count_view.dart';

import '../../../main.dart';

class BlocDisplayWidget extends StatelessWidget {
  CountEventBloc _countEventBloc;
  BlocDisplayWidget() {
    _countEventBloc = countBloc.countEventBloc;
  }

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
              _countEventBloc.countEventSink.add(CountEvent.ADD_EVENT);
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              _countEventBloc.countEventSink.add(CountEvent.SUBTRACT_EVENT);
            },
          ),
        ],
      ),
    );
  }
}
