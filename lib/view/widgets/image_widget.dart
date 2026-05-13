import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/view/widgets/shimmers/rectangular_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.imageUrl, required this.height, required this.width});
  final String? imageUrl;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ?? ImageConstants.sampleImage,
      height: height,
      width: width,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) => Container(
        height: height,
        width: width,
        color: Colors.grey[300],
        child: Icon(Icons.broken_image, color: Colors.grey[600]),
      ),
      placeholder: (context, url) => RectangularShimmer(height: height, width: width),
    );
  }
}
