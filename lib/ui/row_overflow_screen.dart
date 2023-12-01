import 'package:flutter/material.dart';

class RowOverflowScreen extends StatelessWidget {
  const RowOverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Overflow'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            container(color: Colors.black),
            container(color: Colors.green),
            container(color: Colors.red),
            container(color: Colors.blue),
            container(color: Colors.orange),
          ],
        ),
      ),

      // Solution 1
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Row(
      //     children: [
      //       Flexible(child: container(color: Colors.black)),
      //       Flexible(child: container(color: Colors.green)),
      //       Flexible(child: container(color: Colors.red)),
      //       Flexible(child: container(color: Colors.blue)),
      //       Flexible(child: container(color: Colors.orange)),
      //     ],
      //   ),
      // ),

      // Solution 2
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         container(color: Colors.black),
      //         container(color: Colors.green),
      //         container(color: Colors.red),
      //         container(color: Colors.blue),
      //         container(color: Colors.orange),
      //       ],
      //     ),
      //   ),
      // ),

      // Solution 3
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Wrap(
      //     children: [
      //       container(color: Colors.black),
      //       container(color: Colors.green),
      //       container(color: Colors.red),
      //       container(color: Colors.blue),
      //       container(color: Colors.orange),
      //     ],
      //   ),
      // ),
    );
  }

  Widget container({required Color color}) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: color,
    );
  }
}
