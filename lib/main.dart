import 'package:flutter/material.dart';

void main(runApp) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Image.asset('image/board.png'),
              _boardTiles(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _boardTiles() {
    return Builder(builder: (context) {
      final boardDimension = MediaQuery.of(context).size.width;
      return Container(
        width: boardDimension,
        height: boardDimension,
        color: Colors.green,
      );
    });
  }
}
