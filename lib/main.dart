import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToe());
}

class Square extends StatelessWidget {
  final int id;

  Square({this.id});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text('Square $id'),
      ),
    );
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