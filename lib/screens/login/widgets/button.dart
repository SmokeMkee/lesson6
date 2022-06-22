import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../generated/l10n.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          S.of(context).signIn,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              letterSpacing: 1.5),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromRGBO(34, 162, 189, 1),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0), side: BorderSide.none),
        ),
      ),
    );
  }
}
