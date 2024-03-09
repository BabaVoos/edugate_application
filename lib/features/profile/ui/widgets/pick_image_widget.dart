import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:edugate_applocation/features/profile/logic/cubit/profile_cubit.dart';
import 'package:edugate_applocation/features/profile/ui/widgets/avatar_cached_image.dart';
import 'package:edugate_applocation/features/profile/ui/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';

class PickImageWidget extends StatefulWidget {
  const PickImageWidget({
    super.key,
  });

  @override
  State<PickImageWidget> createState() => _PickImageWidgetState();
}

class _PickImageWidgetState extends State<PickImageWidget> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ProfileCubit>();
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 64.sp,
          backgroundColor: ColorsManager.blueColor,
          child: CircleAvatar(
            radius: 60.sp,
            backgroundColor: ColorsManager.whiteColor,
            child: CircleAvatar(
              radius: 56.sp,
              backgroundColor: ColorsManager.whiteColor,
              backgroundImage: NetworkImage(
                CacheHelper.getData(key: 'AVATAR') ?? cubit.image,
              ),
              child: AvatarCachedImage(cubit: cubit),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showBottomSheet(context, cubit);
          },
          child: CircleAvatar(
            radius: 20.sp,
            backgroundColor: ColorsManager.whiteColor,
            child: const Icon(
              Icons.add_a_photo_outlined,
              color: ColorsManager.blueColor,
            ),
          ),
        ),
      ],
    );
  }

  PersistentBottomSheetController<dynamic> showBottomSheet(
      BuildContext context, ProfileCubit cubit) {
    return Scaffold.of(context).showBottomSheet(
      (context) => Container(
        height: .15.sh,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        color: Colors.white,
        child: ListView.builder(
          itemCount: cubit.images.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ImageWidget(
              image: cubit.images[index],
              onTap: () {
                setState(() {});
                cubit.setAvatarImage(cubit.images[index]);
                context.pop();
              },
            );
          },
        ),
      ),
    );
  }
}
