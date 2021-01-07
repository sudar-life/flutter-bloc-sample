import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/ui/bloc_display_widget.dart';

class CountView extends StatelessWidget {
  CountView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("CountView Build!!");
    return Center(
      child: StreamBuilder(
        stream: countBloc.count,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Text(
              snapshot.data.toString(),
              style: TextStyle(fontSize: 80),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
