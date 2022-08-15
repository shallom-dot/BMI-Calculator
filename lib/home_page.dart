import 'package:flutter/material.dart';

import 'utilities/first_page.dart';
import 'utilities/fourth_page.dart';
import 'utilities/second_page.dart';
import 'utilities/third_page.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
          title: Center(child: const Text('BMI CALCULAT0R')),
          backgroundColor: const Color(0xFF0A0E21),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.account_circle)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.store),
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: bottomContainerColor,
            child: ListView(
              children: [
                const DrawerHeader(
                    child: Center(
                  child: Text(
                    'ChicPea',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                )),
                ListTile(
                  leading: const Icon(Icons.spa),
                  title: const Text(
                    'Lavender',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FirstPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.agriculture),
                  title: const Text(
                    'Grey House',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SecondPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.liquor),
                  title: const Text(
                    'White Wine',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ThirdPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.emoji_nature),
                  title: const Text(
                    'Yellow Pine',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FourthPage()));
                  },
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReuseableCard(colour: activeCardColor)),
                Expanded(child: ReuseableCard(colour: activeCardColor)),
              ],
            )),
            Expanded(child: ReuseableCard(colour: activeCardColor)),
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReuseableCard(colour: activeCardColor)),
                Expanded(child: ReuseableCard(colour: activeCardColor)),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
              child: Center(child: const Text('CALCULATE YOUR BMI')),
            )
          ],
        ));
  }
}

class ReuseableCard extends StatefulWidget {
  ReuseableCard({Key? key, required this.colour}) : super(key: key);
  final Color colour;

  @override
  State<ReuseableCard> createState() => _ReuseableCardState();
}

class _ReuseableCardState extends State<ReuseableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: widget.colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
