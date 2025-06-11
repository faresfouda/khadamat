import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 80,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 75,
        backgroundImage:
            AssetImage('assets/worker/workerimage.png'),
      ),
    );
  }
}