import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../generated/l10n.dart';

class PasswordTextFieldInput extends StatelessWidget {
  const PasswordTextFieldInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none
        ),
        focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none
        ),
        filled: true,
        fillColor: const Color.fromRGBO(242, 242, 242, 1),
        prefixIcon: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 13 ),
          child: SvgPicture.asset(AppAssets.svg.passwordPrefixIcon ),
        ),
        hintText: S.of(context).password,

      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).inputErrorCheckLogin;
        }
        if (value.length < 3) {
          return S.of(context).inputErrorLoginIsShort;
        }
        if (value.length > 8) {
          return S.of(context).inputErrorLoginIsLong;
        }

        return null;
      },
    );
  }
}
