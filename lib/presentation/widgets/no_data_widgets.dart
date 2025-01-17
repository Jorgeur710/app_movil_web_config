import 'package:flutter/material.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Cargando...',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 30,
        ),
        CircularProgressIndicator()
      ],
    );
  }
}
