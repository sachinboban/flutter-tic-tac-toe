import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToe());
}

class Square extends StatefulWidget {
  final int id;
  Square({this.id});

  @override
  _SquareState createState() => _SquareState();
}

class _SquareState extends State<Square> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    if (_enabled) {
      return Center(
        child: ListTile(
          title: Text('${widget.id}'),
        ),
      );
    } else {
      return Center(
        child: ListTile(
          title: Text(''),
          onTap: () {
            setState(() {
              _enabled = true;
            });
          },
        ),
      );
    }
  }
}

class Game extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic-Tac-Toe'),
      ),
      body: Square(id: 0),
    );
  }
}

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Tic-Tac-Toe',
      home: Game(),
    );
  }
}