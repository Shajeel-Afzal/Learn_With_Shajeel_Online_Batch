import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/models/WeatherModel.dart';
import 'package:weather_app/services/WatherAPIService.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherModel weatherModel;

  bool isInProgress;

  @override
  void initState() {
    super.initState();

    isInProgress = true;
    WeatherAPIService().getWeatherInfo().then(
      (WeatherModel weatherModel) {
        setState(() {
          isInProgress = false;
          this.weatherModel = weatherModel;
        });
      },
    );
  }

  String getImagePathAccordingToCityName(String cityName) {
    if (cityName == "Faisalabad") {
      return "images/faisalabad.jpg";
    } else if (cityName == "Lahore") {
      return "images/lahore.jpg";
    } else if (cityName == "Karachi") {
      return "images/karachi.jpg";
    } else {
      return "images/karachi.jpg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return isInProgress
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text(weatherModel.name),
            ),
            body: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        getImagePathAccordingToCityName(weatherModel.name),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Container(
                //   color: Colors.white30,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    color: Color(0x66000000),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          (weatherModel.main.temp - 273.15).toStringAsFixed(0),
                          style: TextStyle(color: Colors.white, fontSize: 140),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.cloudSun,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  weatherModel.weather[0].main,
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.wind,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  weatherModel.wind.speed.toString(),
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pause_circle_outline,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "Rain Percentage",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
