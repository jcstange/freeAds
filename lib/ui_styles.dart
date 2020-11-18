import 'package:flutter/material.dart';

class UIStyles {
  TextStyle title() => TextStyle(
    fontSize: 32,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextStyle header() => TextStyle(
    fontSize: 26,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextStyle description() => TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextStyle highlight() => TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextStyle normal() => TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );

  TextStyle small() => TextStyle(
    fontSize: 8,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );
}