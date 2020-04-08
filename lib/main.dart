import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToe());
}

class Square extends StatelessWidget {
  final int index;
  final TextStyle _biggerFont = const TextStyle(fontSize: 32);

  Square({this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          '$index',
          style: _biggerFont,
      )
    );
  }
}

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      crossAxisCount: 3,
      children: List.generate(9, (index) {
        return Container(
          padding: const EdgeInsets.all(8),
          child: Square(index: index),
          color: Colors.teal,
        );
      }),
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
      body: Grid(),
    );
  }
}

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic-Tac-Toe',
      home: Game(),
    );
  }
}