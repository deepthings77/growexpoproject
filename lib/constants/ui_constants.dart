import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:growexpoproject/constants/constants.dart';
import 'package:growexpoproject/features/explore/view/explore_view.dart';
import 'package:growexpoproject/features/notifications/views/notification_view.dart';
import 'package:growexpoproject/features/tweet/widgets/tweet_list.dart';
import 'package:growexpoproject/theme/pallete.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 30,
      ),
      centerTitle: true,
    );
  }

  static const List<Widget> bottomTabBarPages = [
    TweetList(),
    ExploreView(),
    NotificationView(),
  ];
}
