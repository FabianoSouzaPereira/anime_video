import 'package:anime_video/pages/home/home_page.dart';
import 'package:anime_video/pages/home/local_widget/list_films_Widget.dart';
import 'package:flutter/material.dart';

class HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      title: const Text('Despesas Pessoais'),
      actions: [],
    );

    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.height * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                SizedBox(
                  width: constraints.maxHeight * 1.0,
                  height: constraints.maxHeight * 0.60,
                  child: Image.asset(
                    'assets/images/dogcup.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: ListFilmsWidget(
                    width: 150,
                    height: 100,
                    title: "Novidades",
                    listImages: const [
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: ListFilmsWidget(
                    width: 150,
                    height: 100,
                    title: "Novidades",
                    listImages: const [
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: ListFilmsWidget(
                    width: 150,
                    height: 100,
                    title: "Novidades",
                    listImages: const [
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: ListFilmsWidget(
                    width: 150,
                    height: 100,
                    title: "Novidades",
                    listImages: const [
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogcup.png',
                      'assets/images/dogclothes.png',
                      'assets/images/dogcup.png',
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
