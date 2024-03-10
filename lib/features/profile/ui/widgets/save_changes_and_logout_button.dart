import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SaveChangesAndLogoutButtons extends StatelessWidget {
  const SaveChangesAndLogoutButtons({
    super.key,
    required this.saveChangesOnTap,
  });

  final void Function()? saveChangesOnTap;  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: saveChangesOnTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                IconBroken.Edit_Square,
                color: ColorsManager.blueColor,
              ),
              horizontalSpacing(10),
              Text(
                'Save Changes',
                style: TextStyles.font22RedMedium
                    .copyWith(color: ColorsManager.blueColor),
              ),
            ],
          ),
        ),
        horizontalSpacing(10),
        TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                IconBroken.Logout,
                color: ColorsManager.redColor,
              ),
              horizontalSpacing(10),
              Text(
                'Logout',
                style: TextStyles.font22RedMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
