import 'package:flutter/material.dart';

class ListFilmsWidget extends StatelessWidget {
  List<String>? _listImages;
  String? _title;

  ListFilmsWidget({
    Key? key,
    double? width = 0,
    double? height = 0,
    List<String>? listImages,
    String? title,
  })  : _listImages = listImages,
        _title = title,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                _title!,
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 0.28,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _listImages!.length,
            itemBuilder: (ctx, index) {
              final image = _listImages![index];
              return Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 6,
                ),
                child: SizedBox(
                  width: 125,
                  height: 80,
                  child: Image.asset(image,
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
