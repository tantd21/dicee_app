import 'dart:math';
import 'package:flutter/material.dart';

// Creates a Material App
void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

// Creates a Scaffold with
// appbar using Stateless widget
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Text('Roll Dice App'),
      ),
      body: const Dice(),
    );
  }
}

// Creates a Stateful widget
class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Dice> {
  int indexDiceOne = 1;
  int indexDiceTwo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            indexDiceOne = Random().nextInt(5) + 1;
            indexDiceTwo = Random().nextInt(5) + 1;
          });
        },
        // Adding images
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/dice-$indexDiceOne.png',
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/dice-$indexDiceTwo.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
