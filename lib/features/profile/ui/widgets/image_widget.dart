import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: .045.sh,
            backgroundColor: Colors.transparent,
            child: CachedNetworkImage(
              imageUrl: image,
              cacheKey: image,
              cacheManager: CacheManager(
                Config(
                  image,
                  stalePeriod: const Duration(days: 730),
                  maxNrOfCacheObjects: 100,
                ),
              ),
              imageBuilder: (context, imageProvider) => CircleAvatar(
                radius: .045.sh,
                backgroundImage: imageProvider,
              ),
              placeholder: (context, url) => const CircularProgressIndicator(
                color: ColorsManager.blueColor,
                strokeWidth: .5,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
