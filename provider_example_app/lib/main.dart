import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/fish_model.dart';

void main() {
  runApp(const ProviderApp());
}

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => FishModel(name: 'Salmon', number: 10, size: 'Big'),
      child: const MaterialApp(
        home: FishOrder(),
      ),
    );
  }
}

class FishOrder extends StatelessWidget {
  const FishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish Order'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Fish name: ${Provider.of<FishModel>(context).name}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const High(),
          ],
        ),
      ),
    );
  }
}

class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
      children: [
        Text(
          'SpicyA is located at middle place',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyA(),
      ],
    );
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(
          'Fish number: ${Provider.of<FishModel>(context).number}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Text(
          'Fish Size: ${Provider.of<FishModel>(context).size}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Middle()
      ],
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
      children: [
        Text(
          'SpicyB is located at middle place',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyB(),
      ],
    );
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(
          'Fish number: ${Provider.of<FishModel>(context).number}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Text(
          'Fish Size: ${Provider.of<FishModel>(context).size}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Low()
      ],
    );
  }
}

class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
      children: [
        Text(
          'SpicyC is located at low place',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyC(),
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
      children: [
        Text(
          'Fish number',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Text(
          'Fish Size',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
