import 'package:flutter/material.dart';

class AppLogoSignIN extends StatelessWidget {
  final String imUrl;
  const AppLogoSignIN(
      {Key? key, required this.imUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(75),
                image: DecorationImage(
                  image: AssetImage(imUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
