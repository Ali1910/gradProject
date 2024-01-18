import 'package:flutter/material.dart';

OutlineInputBorder borderstyle({required Color color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
  );
}
