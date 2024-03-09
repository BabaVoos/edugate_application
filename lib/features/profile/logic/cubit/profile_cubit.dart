import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/cached_data.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  TextEditingController mailController = TextEditingController();
  TextEditingController studentIdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  void setDefaultUserData() {
    mailController.text = CachedData.email ?? 'User Email';
    studentIdController.text = CachedData.userName ?? 'User Id';
    nameController.text = CachedData.displayName ?? 'User Name';
    phoneNumberController.text = CachedData.phoneNumber ?? 'User Phone Number';
  }

  final List<String> images = [
    'https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611765.jpg?t=st=1709987337~exp=1709990937~hmac=38863e0fda7333ccf4dd2bb27e27fb014197b1335b154086b6278406e0e97007&w=740',
    'https://img.freepik.com/free-psd/3d-rendering-avatar_23-2150833554.jpg?w=740&t=st=1709831283~exp=1709831883~hmac=fb24cfad475f3bec795b1384fe2191b316fdb934e8e316f03816e9f2ea626d81',
    'https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611725.jpg?w=740&t=st=1709987469~exp=1709988069~hmac=80787fcadc345649c64088ca8a1dcaab2fdf87d73149f4a7b10daf539579dd8c',
    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671116.jpg?w=740&t=st=1709831322~exp=1709831922~hmac=99c36cecc8af63a193a69c8da761756cac8e6880e77075608c73e059a8165879',
    'https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611737.jpg?w=740&t=st=1709987554~exp=1709988154~hmac=ccc308af4ebe6c75633a375034dbe4b59a725855c454fc243ceb41f0f72ac9e3',
    'https://img.freepik.com/free-psd/3d-rendering-avatar_23-2150833546.jpg?t=st=1709994670~exp=1709998270~hmac=d421c0d9efddc580b6b2b2d66ef3c2d1dc3f750999e9c2cf84c66cf5fbd063f7&w=740',
  ];

  String image =
      'https://w7.pngwing.com/pngs/205/731/png-transparent-default-avatar-thumbnail.png';

  void setAvatarImage(String image) {
    this.image = image;
    CacheHelper.saveData(key: 'AVATAR', value: image);
  }
}
