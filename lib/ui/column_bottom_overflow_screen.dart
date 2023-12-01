import 'package:flutter/material.dart';

class ColumnBottomOverflowScreen extends StatelessWidget {
  const ColumnBottomOverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Bottom Overflow'),
      ),
      body: Column(
        children: List.generate(
          20,
          (index) => tile(),
        ),
      ),

      // Solution
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: List.generate(
      //       20,
      //       (index) => tile(),
      //     ),
      //   ),
      // ),
    );
  }

  Widget tile() {
    return Card(
      elevation: 2.0,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        child: const Text('Tile'),
      ),
    );
  }
}
