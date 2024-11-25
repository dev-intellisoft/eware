import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_app_modular/controllers/weather_controller.dart';

class WeatherPage extends StatelessWidget {
   WeatherPage({super.key});

  final WeatherController controller = Modular.get<WeatherController>();

  @override
  Widget build(BuildContext context) {
    controller.fetchWeatherRecords();
    return Scaffold(
      appBar: AppBar(title: const Text('Weather Page')),
      body:  Center(
        child: Center(
          child: Observer(builder: (_) {
            if (controller.isLoading) {
              return const Text('Loading...');
            }
            // print(controller.records.map((r) => print(r.datetime)));
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Row(
                  children: [
                    Column(
                      children: controller.days.map((d) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: GestureDetector(
                            onTap: () => Modular.to.navigate('/weather/overview/$d'),
                            child: Text(d),
                          ),
                        );
                      }).toList(),
                    ),
                    Expanded(child: RouterOutlet()),
                  ],
                )),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: () => Modular.to.navigate('/'), child: const Text('Home'))
              ],
            );
          }),
        ),
      ),
    );
  }
}