import 'package:flutter/material.dart';
import 'package:flutter_module/routes/routes.dart';

class DebugMainPage extends StatefulWidget {
  const DebugMainPage({super.key});

  @override
  State<DebugMainPage> createState() => _DebugMainPageState();
}

class _DebugMainPageState extends State<DebugMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('你干嘛哎哟')),
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
    Navigator.pushNamed(context, DYRoute.sing);
  }
}
