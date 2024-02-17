import 'package:edugate_applocation/core/helpers/cached_data.dart';
import 'package:flutter/material.dart';

class SetupFaceIdScreen extends StatefulWidget {
  const SetupFaceIdScreen({
    super.key,
  });

  @override
  State<SetupFaceIdScreen> createState() => _SetupFaceIdScreenState();
}

class _SetupFaceIdScreenState extends State<SetupFaceIdScreen> {
  @override
  void initState() {
    CachedData.getAndSaveUserData();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Morning ${CachedData.displayName ?? 'mudar'}',
        ),
      ),
    );
  }
}
