import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/ui/bloc_display_widget.dart';
import 'package:flutter_bloc_sample/src/stateful/ui/plus_stateful_display_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: FlatButton(
                color: Colors.grey[400],
                child: Text("bloc 패턴"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return BlocDisplayWidget();
                  }));
                },
              ),
            ),
            Center(
              child: FlatButton(
                color: Colors.grey[400],
                child: Text("기본 stateful"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return PlusStatefulDisplayWidget();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
