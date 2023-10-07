import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/App_router.dart';

class Listveiwitem extends StatelessWidget {
  const Listveiwitem({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
              errorWidget: (context, url, error) {
                return const Icon(Icons.error);
              },
              fit: BoxFit.fill,
              imageUrl: url)),
    );
  }
}
