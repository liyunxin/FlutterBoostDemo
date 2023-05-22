import 'package:flutter/material.dart';
import 'package:flutter_module/routes/routes.dart';

class SingPage extends StatefulWidget {
  const SingPage({super.key});

  @override
  State<SingPage> createState() => _SingPageState();
}

class _SingPageState extends State<SingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('唱'),
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
    Navigator.pushNamed(context, DYRoute.dance);
  }
}
