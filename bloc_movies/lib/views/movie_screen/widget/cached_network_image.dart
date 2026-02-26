import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyCachedNetworkImage extends StatelessWidget {
  final String image;
  const MyCachedNetworkImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: BoxFit.cover,
      width: double.infinity,
      placeholder: (context, url) => Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(11),
            topRight: Radius.circular(11),
          ),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(11),
            topRight: Radius.circular(11),
          ),
        ),
      ),
    );
  }
}
