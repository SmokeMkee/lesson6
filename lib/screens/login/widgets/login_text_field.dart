import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson3/constants/app_assets.dart';

import '../../../generated/l10n.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField( {Key? key,  required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
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
          child: SvgPicture.asset(AppAssets.svg.loginPrefixIcon ),
        ),
        hintText: S.of(context).login,

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
      onTap: (){
      },
    );
  }
}
