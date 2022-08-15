import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: const [
                Expanded(child: ReuseableCard()),
                Expanded(child: ReuseableCard()),
              ],
            )),
            const Expanded(child: ReuseableCard()),
            Expanded(
                child: Row(
              children: const [
                Expanded(child: ReuseableCard()),
                Expanded(child: ReuseableCard()),
              ],
            )),
          ],
        ));
  }
}

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: const Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
