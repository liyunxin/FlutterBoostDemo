import 'package:flutter/material.dart';
import 'package:flutter_module/routes/routes.dart';

class DancePage extends StatefulWidget {
  const DancePage({super.key});

  @override
  State<DancePage> createState() => _DancePageState();
}

class _DancePageState extends State<DancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('跳'),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: OutlinedButton(
            onPressed: _showTalent,
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('才艺展示'),
          ),
        ),
      ),
    );
  }

  void _showTalent() {
    Navigator.pushNamed(context, DYRoute.rap);
  }
}
