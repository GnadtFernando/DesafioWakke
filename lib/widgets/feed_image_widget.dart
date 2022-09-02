import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeedImage extends StatelessWidget {
  final String urlImage;
  final String title;

  const FeedImage({Key? key, required this.title, required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: CachedNetworkImage(
            imageUrl: urlImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: size.width * 0.02,
          left: size.width * 0.14,
          child: Container(
            height: size.width * 0.1,
            width: size.width * 0.6,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(size.width * 0.04),
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        )
      ],
    );
  }
}
