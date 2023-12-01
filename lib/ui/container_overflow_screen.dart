import 'package:flutter/material.dart';

class ContainerOverflowScreen extends StatelessWidget {
  const ContainerOverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Overflow'),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       Card(
      //         child: Container(
      //           padding: const EdgeInsets.all(10.0),
      //           width: double.infinity,
      //           height: 64.0,
      //           child: const Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'DevFest Ilorin',
      //                 style: TextStyle(fontSize: 30.0),
      //               ),
      //               Text(
      //                 'Student Edition',
      //                 style: TextStyle(color: Colors.grey),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // Solution
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                width: double.infinity,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DevFest Ilorin',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Text(
                      'Student Edition',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
