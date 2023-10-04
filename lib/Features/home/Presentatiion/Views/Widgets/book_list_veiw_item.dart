import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Listveiwitem extends StatelessWidget {
  const Listveiwitem({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4, child: CachedNetworkImage(imageUrl: url));
  }
}
