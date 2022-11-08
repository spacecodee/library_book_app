import 'package:flutter/material.dart';

class ImageArtWork extends StatelessWidget {
  final double width;
  final double height;
  final String urlImage;

  const ImageArtWork({
    Key? key,
    this.width = 100,
    this.height = 80,
    this.urlImage = 'https://images.cdn2.buscalibre.com/fit-in/360x360/3c/a0/3ca0d5641108924db725e1d9b5971d52.jpg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(urlImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
