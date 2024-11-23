import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
class OccurrencePage extends StatelessWidget {
  const OccurrencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Occurrence Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the occurrence page'),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () => Modular.to.navigate('/'), child: const Text('Home'))
          ],
        ),
      ),
    );
  }
  
}