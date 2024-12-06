import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabBarExample(),
    );
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Example'),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(
                    child: Text('Home Page', style: TextStyle(fontSize: 12))),
                Center(
                    child:
                        Text('Settings Page', style: TextStyle(fontSize: 12))),
                Center(
                    child:
                        Text('Profile Page', style: TextStyle(fontSize: 12))),
                Center(
                    child:
                        Text('Profile Page', style: TextStyle(fontSize: 12))),
                Center(
                    child:
                        Text('Profile Page', style: TextStyle(fontSize: 12))),
              ],
            ),
          ),
          TabBar(
            controller: _tabController,
            labelStyle: const TextStyle(
              fontSize: 9,
            ),
            tabs: const [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
