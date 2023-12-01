import 'package:flutter/material.dart';

class TextOverflowScreen extends StatelessWidget {
  const TextOverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Overflow'),
      ),
      body: const Row(
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur '
            'adipiscing elit. '
            'In eget turpis ornare lacus tempor porta. '
            'Aliquam at dolor turpis.',
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),

      // Solution 1 - Make the text wrap
      // body: Row(
      //   children: [
      //     Expanded(
      //       child: Text(
      //         'Lorem ipsum dolor sit amet, consectetur '
      //         'adipiscing elit. '
      //         'In eget turpis ornare lacus tempor porta. '
      //         'Aliquam at dolor turpis.',
      //         style: TextStyle(fontSize: 16.0),
      //       ),
      //     )
      //   ],
      // ),

      // Solution 2 - Prevent overflow with Flutter's TextOverflow
      // body: Row(
      //   children: [
      //     Expanded(
      //       child: Text(
      //         'Lorem ipsum dolor sit amet, consectetur '
      //         'adipiscing elit. '
      //         'In eget turpis ornare lacus tempor porta. '
      //         'Aliquam at dolor turpis.',
      //         overflow: TextOverflow.ellipsis,
      //         style: TextStyle(fontSize: 16.0),
      //       ),
      //     )
      //   ],
      // ),

      // Solution 3 - Make the text scrollable
      // body: const SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //       Text(
      //         'Lorem ipsum dolor sit amet, consectetur '
      //         'adipiscing elit. '
      //         'In eget turpis ornare lacus tempor porta. '
      //         'Aliquam at dolor turpis.',
      //         style: TextStyle(fontSize: 16.0),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
