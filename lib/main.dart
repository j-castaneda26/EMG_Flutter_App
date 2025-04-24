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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 60), // ⬅️ Global size
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MuscleSelectionScreen(),
    );
  }
}
       

class MuscleSelectionScreen extends StatelessWidget {
  const MuscleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select a Muscle Group"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const MuscleDetailScreen(muscle: "Bicep"),
                ),
              ),
              child: const Text("Bicep"),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const MuscleDetailScreen(muscle: "Tricep"),
                ),
              ),
              child: const Text("Tricep"),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const MuscleDetailScreen(muscle: "Forearm"),
                ),
              ),
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
