import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMG Muscle Selector',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Select a Muscle Group'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void navigateToMuscleScreen(String muscle) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MuscleDetailScreen(muscle: muscle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => navigateToMuscleScreen("Bicep"),
              child: const Text("Bicep"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => navigateToMuscleScreen("Tricep"),
              child: const Text("Tricep"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => navigateToMuscleScreen("Forearm"),
              child: const Text("Forearm"),
            ),
          ],
        ),
      ),
    );
  }
}

class MuscleDetailScreen extends StatelessWidget {
  final String muscle;

  const MuscleDetailScreen({super.key, required this.muscle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$muscle EMG')),
      body: Center(
        child: Text(
          'This is the $muscle screen.',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
