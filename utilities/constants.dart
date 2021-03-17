import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 55.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  backgroundColor: Color(0x50FFFFFF),
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0x95FFFFFF),
  icon: Icon(
    Icons.location_city,
    color: Color(0x95FFFFFF),
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.black,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
