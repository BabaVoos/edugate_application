import 'package:cached_network_image/cached_network_image.dart';
import 'package:edugate_applocation/features/profile/logic/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/networking/cache_helper.dart';
import '../../../../core/theming/colors.dart';

class AvatarCachedImage extends StatelessWidget {
  const AvatarCachedImage({
    super.key,
    required this.cubit,
  });

  final ProfileCubit cubit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: CacheHelper.getData(key: 'AVATAR') ?? cubit.image,
      cacheKey: CacheHelper.getData(key: 'AVATAR') ?? cubit.image,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      placeholder: (context, url) => const CircularProgressIndicator(
        color: ColorsManager.blueColor,
        strokeWidth: .5,
      ),
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: 56.sp,
        backgroundImage: imageProvider,
        backgroundColor: ColorsManager.whiteColor,
      ),
      cacheManager: CacheManager(
        Config(
          CacheHelper.getData(key: 'AVATAR') ?? cubit.image,
          stalePeriod: const Duration(days: 730),
          maxNrOfCacheObjects: 100,
        ),
      ),
    );
  }
}
