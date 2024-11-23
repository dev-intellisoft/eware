import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text('Home Page')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () => Modular.to.navigate('/weather'), child: const Text('Forecast')),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: () => Modular.to.navigate('/occurrence'), child: const Text('Occurrence'))
        ],
      ),
    ),
    );
  }
  
}