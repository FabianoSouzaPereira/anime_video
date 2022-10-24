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
        Text(
          _title!,
          style: TextStyle(
            color: Theme.of(context).primaryColorLight,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.20,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _listImages!.length,
            itemBuilder: (ctx, index) {
              final image = _listImages![index];
              return Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
