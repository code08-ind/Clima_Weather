import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();

    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationScreen(
          locationWeather: weatherData,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/load.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(1.0), BlendMode.dstATop),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CLIMA WEATHER APP',
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40.0,
              ),
              SpinKitDoubleBounce(
                color: Colors.white,
                size: 100.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Fetching Data  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SpinKitDoubleBounce(
                    color: Colors.white,
                    size: 10.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  SpinKitDoubleBounce(
                    color: Colors.white,
                    size: 10.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  SpinKitDoubleBounce(
                    color: Colors.white,
                    size: 10.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
