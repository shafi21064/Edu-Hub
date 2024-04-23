import 'package:flutter/material.dart';

class AppSectionTitleText extends StatelessWidget {
  const AppSectionTitleText(
      {required this.sectionTitle,
      this.haveTxtButton = true,
      this.onTapSeeAll,
      super.key});

  final String sectionTitle;
  final bool haveTxtButton;
  final VoidCallback? onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Visibility(
          visible: haveTxtButton,
          child:
              TextButton(onPressed: onTapSeeAll, child: const Text('see all')),
        )
      ],
    );
  }
}
