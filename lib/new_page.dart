// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider26/theme_provider.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    //////////
    final isDark=Provider.of<ThemeProvider>(context).getThemeData;
    /////////
    return const Placeholder();
  }
}