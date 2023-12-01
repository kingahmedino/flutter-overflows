import 'package:flutter/material.dart';

class ListViewOverflowScreen extends StatelessWidget {
  const ListViewOverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Overflow'),
      ),
      body: Column(
        children: [
          const Icon(
            Icons.person_3,
            size: 148.0,
          ),
          ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
          const Icon(
            Icons.balance,
            size: 148.0,
          ),
        ],
      ),

      // Solution
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       const Icon(
      //         Icons.person_3,
      //         size: 148.0,
      //       ),
      //       ListView.builder(
      //         itemCount: 12,
      //         shrinkWrap: true,
      //         physics: const NeverScrollableScrollPhysics(),
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             title: Text('Item $index'),
      //           );
      //         },
      //       ),
      //       const Icon(
      //         Icons.balance,
      //         size: 148.0,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
