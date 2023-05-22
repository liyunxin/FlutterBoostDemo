import 'package:flutter/material.dart';

class BasketballPage extends StatefulWidget {
  final String parameter;

  const BasketballPage({Key? key, required this.parameter}) : super(key: key);

  @override
  State<BasketballPage> createState() => _BasketballPageState();
}

class _BasketballPageState extends State<BasketballPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('篮球'),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Text(
            widget.parameter,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
