import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Icons, Images, and Charts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('20_Shlok Lad -Exp07'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Icon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FlutterIcons.smile_beam_faw5,
                size: 50,
                color: Colors.blue,
              ),
            ),
            // Image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://play-lh.googleusercontent.com/rG4-KYTRIYqnFZefA_q7HwHLiyjSk4MifKbq-vgIklW9uB_xCLFXdQvfMU4l0QjdzIs',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            // Chart
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                child: LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 1),
                          FlSpot(1, 3),
                          FlSpot(2, 2),
                          FlSpot(3, 4),
                          FlSpot(4, 3),
                          FlSpot(5, 6),
                        ],
                        isCurved: true,
                        colors: [Colors.blue],
                        barWidth: 4,
                        isStrokeCapRound: true,
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                    titlesData: FlTitlesData(
                      bottomTitles: SideTitles(
                        showTitles: true,
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 0:
                              return 'Jan';
                            case 1:
                              return 'Feb';
                            case 2:
                              return 'Mar';
                            case 3:
                              return 'Apr';
                            case 4:
                              return 'May';
                            case 5:
                              return 'Jun';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(showTitles: false),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
