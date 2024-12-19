import 'package:flutter/material.dart';

import '../../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../../common/widgets/notification/notification_icon.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/text_string.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(UTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: UColors.grey),),
          Text(UTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: UColors.white),),
        ],
      ),
      actions: [
        UNotificationIcon(onPressed: () {  }, iconColor: UColors.white,)
      ],
    );
  }
}