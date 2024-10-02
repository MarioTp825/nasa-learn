import 'package:flutter/material.dart';

class SpaceNetworkImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final BoxFit fit;

  const SpaceNetworkImage({
    super.key,
    required this.url,
    this.width = 300,
    this.height = 300,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: width,
      height: height,
      fit: fit,
      loadingBuilder: loader,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
    );
  }

  Widget loader(
      BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) return child;

    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  }
}
