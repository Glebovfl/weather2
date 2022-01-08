// import 'dart:html';
// import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red.shade400,
        // brightness: Brightness.light,
        ),
        body: WeatherForecast(),
      )
    );
  }
}

Widget WeatherForecast() {
  return SingleChildScrollView(
    child: Container(
      color: Colors.red.shade300,
      height: 663,
      // mainAxisSize: MainAxisSize.max,
      // crossAxisAlignment: CrossAxisAlignment.center,
      child: Column(
        children: <Widget>[
          _textField(),
          _cityDetail(),
          _tempratureDetail(),
          _extraWeatherDetail(),
          Padding(
            padding: EdgeInsets.only(top: 50.0, bottom: 15),
            child: Text("7-DAY WEATHER FORECAST", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),),
          ),
          SizedBox(
            height: 90.0,
            child: _bottomDetail(),
          ),
        ],
      ),
    ),
  );
}

Row _textField() {
  return Row(
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.search_outlined, color: Colors.white),
          ],
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Enter City Name',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ],
  );
}

Column _cityDetail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ryazanskaya Oblast, RU',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Saturday, January 08, 2022',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Row _tempratureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.white,
            size: 70,
          ),
        ],
      ),
      SizedBox(width: 10.0),
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '14 °C',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w100,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'LIGHT SNOW',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      )
    ],
  );
}

Row _extraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
          ),
          Text(
            '5',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text('km/hr', style: TextStyle(fontSize: 20, color: Colors.white),
),
        ],
      ),
      Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
          ),
          Text(
            '3',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text('%', style: TextStyle(fontSize: 20, color: Colors.white),
),
        ],
      ),
      Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30,
            ),
          ),
          Text(
            '20',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text('%', style: TextStyle(fontSize: 20, color: Colors.white),
),
        ],
      ),
    ],
  );
}

Widget _bottomDetail() {
  return Container(
    margin: EdgeInsets.only(right: 20, left: 20),
    child: ListView(
      itemExtent: 140,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.grey.withOpacity(0.5),
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.only(top: 8),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Saturday',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '12 °C ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        backgroundColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.5),
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.only(top: 8),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Sunday',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '20 °C ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        backgroundColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.5),
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.only(top: 8),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Monday',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '24 °C ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        backgroundColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.5),
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.only(top: 8),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Tuesday',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '22 °C ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        backgroundColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.5),
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.only(top: 8),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Wednesday',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '19 °C ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        backgroundColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.5),
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.only(top: 8),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Thursday',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '25 °C ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        backgroundColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.5),
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.only(top: 8),
          alignment: Alignment.center,
          // child: Padding(
          // padding: EdgeInsets.only(right: 8.0),
          child: Column(
            children: <Widget>[
              Text(
                'Friday',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '6 °C ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        backgroundColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
