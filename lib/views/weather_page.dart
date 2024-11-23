import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather Page')),
      body:  Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('This is weather page'),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () => Modular.to.navigate('/'), child: const Text('Home'))
            ],
          ),
        ),
      ),
    );
  }

}