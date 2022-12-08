import 'package:flutter/material.dart';
import '../src/app.dart';
import 'dart:io';
import 'package:dart_vlc/dart_vlc.dart';



void main() async {
  DartVLC.initialize();
  runApp(MyApp());
}