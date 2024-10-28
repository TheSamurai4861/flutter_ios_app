import 'package:flutter/material.dart';

class MediasList extends StatelessWidget {
  final List<dynamic> medias;
  final String title;
  const MediasList({super.key, required this.medias, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: medias.map((media) {
              return Container(
                margin: const EdgeInsets.only(right: 10.0),
                height: 250,
                width: 166,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(media),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
