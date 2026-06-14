import 'package:fitst_project/WEEK6/EXERCISE-2/data/profile_data.dart'
show ronanProfile;
import 'package:flutter/material.dart';

import 'ui/screens/profile.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileApp(profileData: ronanProfile),
    ),
  );
}
