import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_app_modular/controllers/occurrence_controller.dart';
class OccurrencePage extends StatelessWidget {
  OccurrencePage({super.key});

  final TextEditingController _author = TextEditingController();
  final TextEditingController _desciption = TextEditingController();

  final OccurrenceController controller = Modular.get<OccurrenceController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Occurrence Page')),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Responsável'
                    ),
                    controller: _author,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Descrição'
                    ),
                    controller: _desciption,
                  ),
                  ElevatedButton(onPressed: () => controller.saveOccurrence(
                    author: _author.text,
                    description: _desciption.text
                  ), child: Text('Salvar'))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () => Modular.to.navigate('/'), child: const Text('Home'))
          ],
        ),
      ),
    );
  }
  
}