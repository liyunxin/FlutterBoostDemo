import 'package:flutter/material.dart';
import 'package:flutter_module/routes/routes.dart';

class RapPage extends StatefulWidget {
  const RapPage({super.key});

  @override
  State<RapPage> createState() => _RapPageState();
}

class _RapPageState extends State<RapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rap'),
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
    Navigator.pushNamed(
      context,
      DYRoute.basketball,
      arguments: {'text': '一个真正的Man，哎哟你干嘛～\n喜欢我的话，就请多多支持我吧～～'},
    );
  }
}
