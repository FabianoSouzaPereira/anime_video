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
      title: const Text('Anime Vídeo'),
      actions: [],
    );

    var list = [
      SizedBox(
        child: Image.asset(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 0.6,
          'assets/images/abracadabra.png',
          fit: BoxFit.fill,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: ListFilmsWidget(
          width: 150,
          height: 140,
          title: "Novidades",
          listImages: const [
            'assets/images/abracadabra.png',
            'assets/images/adão_Negro.png',
            'assets/images/afera.png',
            'assets/images/amaquinainfernal.png',
            'assets/images/atena.png',
            'assets/images/aterrorizante.png',
            'assets/images/blackout.png',
            'assets/images/gemini.png',
            'assets/images/gerdia.png',
            'assets/images/kili.png',
            'assets/images/memedomal.png',
            'assets/images/orfa_2.png',
            'assets/images/pinoquio.png',
            'assets/images/secreto.png',
            'assets/images/trem_bala_fit.png',
            'assets/images/trem_bala.png',
          ],
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: ListFilmsWidget(
          width: 150,
          height: 140,
          title: "Aventura",
          listImages: const [
            'assets/images/abracadabra.png',
            'assets/images/adão_Negro.png',
            'assets/images/afera.png',
            'assets/images/amaquinainfernal.png',
            'assets/images/atena.png',
            'assets/images/aterrorizante.png',
            'assets/images/blackout.png',
            'assets/images/gemini.png',
            'assets/images/gerdia.png',
            'assets/images/kili.png',
            'assets/images/memedomal.png',
            'assets/images/orfa_2.png',
            'assets/images/pinoquio.png',
            'assets/images/secreto.png',
            'assets/images/trem_bala_fit.png',
            'assets/images/trem_bala.png',
          ],
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: ListFilmsWidget(
          width: 150,
          height: 140,
          title: "Suspense",
          listImages: const [
            'assets/images/abracadabra.png',
            'assets/images/adão_Negro.png',
            'assets/images/afera.png',
            'assets/images/amaquinainfernal.png',
            'assets/images/atena.png',
            'assets/images/aterrorizante.png',
            'assets/images/blackout.png',
            'assets/images/gemini.png',
            'assets/images/gerdia.png',
            'assets/images/kili.png',
            'assets/images/memedomal.png',
            'assets/images/orfa_2.png',
            'assets/images/pinoquio.png',
            'assets/images/secreto.png',
            'assets/images/trem_bala_fit.png',
            'assets/images/trem_bala.png',
          ],
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: ListFilmsWidget(
          width: 150,
          height: 140,
          title: "Ficcao",
          listImages: const [
            'assets/images/abracadabra.png',
            'assets/images/adão_Negro.png',
            'assets/images/afera.png',
            'assets/images/amaquinainfernal.png',
            'assets/images/atena.png',
            'assets/images/aterrorizante.png',
            'assets/images/blackout.png',
            'assets/images/gemini.png',
            'assets/images/gerdia.png',
            'assets/images/kili.png',
            'assets/images/memedomal.png',
            'assets/images/orfa_2.png',
            'assets/images/pinoquio.png',
            'assets/images/secreto.png',
            'assets/images/trem_bala_fit.png',
            'assets/images/trem_bala.png',
          ],
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: ListFilmsWidget(
          width: 150,
          height: 140,
          title: "Ficcao",
          listImages: const [
            'assets/images/abracadabra.png',
            'assets/images/adão_Negro.png',
            'assets/images/afera.png',
            'assets/images/amaquinainfernal.png',
            'assets/images/atena.png',
            'assets/images/aterrorizante.png',
            'assets/images/blackout.png',
            'assets/images/gemini.png',
            'assets/images/gerdia.png',
            'assets/images/kili.png',
            'assets/images/memedomal.png',
            'assets/images/orfa_2.png',
            'assets/images/pinoquio.png',
            'assets/images/secreto.png',
            'assets/images/trem_bala_fit.png',
            'assets/images/trem_bala.png',
          ],
        ),
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 1.0,
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            return Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.80,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: list.length,
                    itemBuilder: (ctx, index) {
                      final images = list[index];
                      return Column(
                        children: [
                          SizedBox(child: images),
                        ],
                      );
                    },
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
