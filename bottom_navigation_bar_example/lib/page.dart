import 'package:flutter/material.dart';

class PageView extends StatefulWidget {
  //late String title;

  const PageView({
    super.key,
    //required String title,
  });

  @override
  State<PageView> createState() => _PageViewState();
}

class _PageViewState extends State<PageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page'),
      ),
      body: const Center(
        child: Text(
          'Page Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
