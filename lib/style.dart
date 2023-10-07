import 'package:flutter/material.dart';

InputDecoration TextfieldStyle(label){
  return InputDecoration(
    fillColor: Colors.white,
    filled: true,
    contentPadding: EdgeInsets.all(20),
    labelText: label,
    border: OutlineInputBorder()

  );
}