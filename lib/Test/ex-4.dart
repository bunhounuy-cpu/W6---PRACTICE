import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: WeatherPage()),
  );
}

// Weather model
class Weather {
  final String city;
  final String image;
  final String minTemperature;
  final String maxTemperature;
  final String currentTemperature;
  final List<Color> gradientColors;

  const Weather({
    required this.city,
    required this.image,
    required this.minTemperature,
    required this.maxTemperature,
    required this.currentTemperature,
    required this.gradientColors,
  });
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  final List<Weather> weatherList = const [
    Weather(
      city: 'Phnom Penh',
      image: 'assets/ex4/cloudy.png',
      minTemperature: '10°C',
      maxTemperature: '20°C',
      currentTemperature: '12.2°C',
      gradientColors: [Color(0xFFC16CE8), Color(0xFF9956D6)],
    ),

    Weather(
      city: 'Paris',
      image: 'assets/ex4/sunnyCloudy.png',
      minTemperature: '10°C',
      maxTemperature: '40°C',
      currentTemperature: '22.2°C',
      gradientColors: [Color(0xFF65E6CB), Color(0xFF50CDB7)],
    ),

    Weather(
      city: 'Rome',
      image: 'assets/ex4/sunny.png',
      minTemperature: '10°C',
      maxTemperature: '40°C',
      currentTemperature: '45.2°C',
      gradientColors: [Color(0xFFEE5B91), Color(0xFFD94476)],
    ),

    Weather(
      city: 'Toulouse',
      image: 'assets/ex4/veryCloudy.png',
      minTemperature: '10°C',
      maxTemperature: '40°C',
      currentTemperature: '45.2°C',
      gradientColors: [Color(0xFFFFBD73), Color(0xFFE6A15D)],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFF81C7E8),
        actions: const [
          Icon(Icons.menu, color: Colors.white, size: 18),
          SizedBox(width: 10),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        itemCount: weatherList.length,
        itemBuilder: (context, index) {
          return WeatherCard(weather: weatherList[index]);
        },
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final Weather weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,

      child: Container(
        height: 85,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: weather.gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),

        child: Stack(
          children: [
            // Decorative oval on the right
            Positioned(
              right: -35,
              top: -35,
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.12),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Weather information
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    weather.image,
                    width: 23,
                    height: 23,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(width: 8),

                // City and min/max temperature
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        weather.city,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        'Min: ${weather.minTemperature}',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 8,
                        ),
                      ),

                      Text(
                        'Max: ${weather.maxTemperature}',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),

                // Current temperature
                Text(
                  weather.currentTemperature,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
