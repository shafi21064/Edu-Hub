import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar(
      {required this.onTap,
      this.onChanged,
      this.onSubmit,
      this.autofocus = true,
      this.enabled = true,
      super.key});

  final VoidCallback onTap;
  final dynamic onChanged, onSubmit;
  final bool enabled, autofocus;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextFormField(
        //onTap: onTap,
        onChanged: onChanged,
        onFieldSubmitted: onSubmit,
        autofocus: autofocus,
        enabled: enabled,
        decoration: const InputDecoration(
            hintText: 'Search here...',
            prefixIcon: Icon(Icons.search),),
      ),
    );
  }
}
