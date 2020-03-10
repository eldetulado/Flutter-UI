import 'package:flutter/rendering.dart';

class Utils{
  static String colorToString(Color color){
    return '#${color.value.toRadixString(16)}';
  }
}