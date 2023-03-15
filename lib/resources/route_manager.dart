import 'package:flutter/material.dart';
import 'package:user_accessibility/screens/excludeSemantic.dart';
import 'package:user_accessibility/screens/mergeSemantic.dart';
import 'package:user_accessibility/screens/semantic.dart';


final Map<String, WidgetBuilder> routes = {
  SemanticPage.id: (context) => SemanticPage(),
  MergeSemantic.id: (context) => MergeSemantic(),
  ExcludeSemantic.id: (context) => ExcludeSemantic(),
};